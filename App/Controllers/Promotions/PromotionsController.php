<?php

use Yee\Managers\Controller\Controller;
use Yee\Managers\CacheManager;
use App\Models\Promotions\PromotionsModel;
use App\Libraries\File\File;


class PromotionsController extends Controller {  

	 /**
     * @Route('/promotions')
     * @Name('login.index')
     */
    public function indexAction()
    {
        /** @var Yee\Yee $yee */
        $app = $this->getYee();

        $curPage = $app->request()->get("page");

        $limit = 12;
        if ($curPage) {
        	$start = ($curPage-1) * $limit;
        } else {
        	$start = 0;
        }

        $promotionsModel = new PromotionsModel();
        $result = $promotionsModel->getPromotions();
        $promPerPage = $promotionsModel->getPromotionsWithLimit($start, $limit);

        $countResult = count($result);
        
        $pages = ceil($countResult / $limit);

        $data = array(
        	"curPage"		=> $curPage ? $curPage : 0,
        	"pages"			=> $pages,
        	"promotions"	=> $promPerPage,
    	);

        $app->render('/pages/promotions.tpl', $data);
    }

     /**
     * @Route('/promotions/product/view/:id')
     * @Name('login.index')
     */
    public function viewProductByIdtAction($productId)
    {
        /** @var Yee\Yee $yee */
        $app = $this->getYee();

        $promotionsModel = new PromotionsModel();
        $productDetails = $promotionsModel->getPromotionById($productId);
        $productPhotos = json_decode($productDetails['photos'],true);

        $javascript = [
            "/js/lightbox.js",
        ];
        $css = [
            "/css/lightbox.css",
            "/css/custom.css",
        ];

        $data = [
            "product"      => $productDetails,
            "photos"       => $productPhotos,
            "javascript"   => $javascript,
            "css"          => $css,
        ];

        $app->render('/pages/promotionsView.tpl', $data);
    }

    /**
     * @Route('/admin/promotions')
     * @Name('promotions.index')
     */
    public function promotionAction() {

        /** @var Yee\Yee $yee */
        $app = $this->getYee();

        if (isset($_SESSION['isLogged']) === true) {

            $data = array(
                'title'             => 'Create Promotion',
                'javascript'        => ['/js/promotionCreate.js'],
            );

            $app->render('pages/promotionsCreate.tpl', $data);
     
        } else {

            $app->redirect('/');
        }
    }

    /**
     * @Route('/admin/promotions/create')
     * @Name('promotions.create')
     * @Method('post')
     */
    public function promotionCreateAction() {

        /** @var Yee\Yee $yee */
        $app = $this->getYee();

        $title = $app->request()->post("title");
        $descrip = $app->request()->post("description");
        $oldPrice = $app->request()->post("oldPrice");
        $newPrice = $app->request()->post("newPrice");
        $categoryName = "promotions";
        
        $avatarImage = $_FILES['avatar'];

        $images = [];
        $photoNames = [];
        $errors = [];

        $fileHelper = new File();

        if ($_FILES['images']['name'][0] != "" ) {
            
            for ($i=0; $i < count($_FILES['images']['name']); $i++) {

                $fileName = $_FILES['images']['name'][$i];
                $fileType = $_FILES['images']['type'][$i];
                $fileTpmName = $_FILES['images']['tmp_name'][$i];
                $fileError = $_FILES['images']['error'][$i];
                $fileSize = $_FILES['images']['size'][$i];

                $images[$i] = [
                    "name"      => $fileName,
                    "type"      => $fileType,
                    "tmp_name"  => $fileTpmName,
                    "error"     => $fileError,
                    "size"      => $fileSize,
                ];

                if($fileHelper->fileSizeAllowed($images[$i])) {
                    $errors[] = "Maximum file size is 2mb.<br>";
                    break;
                }

                if (!$fileHelper->isAllowedExt($images[$i])) {
                    $errors[] = "Wrong file format!<br>";
                    break;
                }
            }
        } else {
            $errors[] = "Снимките са задължителни!<br>";
        }

        if (empty($avatarImage['name'])) {
            $errors[] = "Аватар снимката е задължителна!<br>";
        }

        if (empty($title) || empty($descrip) || empty($oldPrice) || empty($newPrice)) {
            $errors[] = "Всички полета са задължителни!<br>";
        }

        $promotionModel = new PromotionsModel();

        if (isset($errors[0]) === false) {
            
            // Multiple Uploading Files
            $fileHelper->createFolder($categoryName);
            foreach ($images as $image) {
                $targetDir = "img/gallery/" . md5($categoryName) . "/";
                $photoNames[] = $fileHelper->saveFile($image, $targetDir);
            }
            
            $avatar = $fileHelper->saveFile($avatarImage, $targetDir);
            $photoNames[] = $avatar;
            $promotionModel->addPromotion($title, $avatar, json_encode($photoNames), $oldPrice, $newPrice, $categoryName, $descrip);

            $data = array(
                'message'       => "Succesfully updated!",
                'success'       => true,
                'error'         => false,
            );

        } else {
            $data = array(
                'message'       => $errors,
                'success'       => false,
                'error'         => true,
            );
        }

        echo json_encode($data);
    }

}
