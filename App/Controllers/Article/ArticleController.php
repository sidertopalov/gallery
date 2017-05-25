<?php 

use Yee\Managers\Controller\Controller;
use Yee\Managers\CacheManager;
use App\Models\Article\ArticleModel;
use App\Models\Categories\CategoriesModel;
use App\Libraries\File\File;

class ArticleController extends Controller {

    /**
     * @Route('/admin/article')
     * @Name('article.index')
     */
    public function indexAction() {

        /** @var Yee\Yee $yee */
        $app = $this->getYee();

        if (isset($_SESSION['isLogged']) === true) {

            
            $categoriesModel = new CategoriesModel();

            $categories = $categoriesModel->getCategories();


            $data = array(
                'title'             => 'Add Article',
                'categoryDetails'   => $categories,
                'javascript'        => ['/js/addArticle.js'],
            );

            $app->render('pages/articleAdd.tpl', $data);
     
        } else {

            $app->redirect('/login');
        }
    }

    /**
     * @Route('/admin/article/create')
     * @Name('article.index')
     * @Method('post')
     */
    public function createArticleAction() {

        /** @var Yee\Yee $yee */
        $app = $this->getYee();

        $title = $app->request()->post("title");
        $descrip = $app->request()->post("description");
        $price = $app->request()->post("price");
        $categoryName = $app->request()->post("categoryName");
        
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

        if (empty($title) || empty($descrip) || empty($price)) {
            $errors[] = "Всички полета са задължителни!<br>";
        }


        $articleModel = new ArticleModel();

        if (isset($errors[0]) === false) {
            
            // Multiple Uploading Files
            $fileHelper->createFolder($categoryName);
            foreach ($images as $image) {
                $targetDir = "img/gallery/" . md5($categoryName) . "/";
                $photoNames[] = $fileHelper->saveFile($image, $targetDir);
            }
            
            $avatar = $fileHelper->saveFile($avatarImage, $targetDir);
            $photoNames[] = $avatar;
            $articleModel->addArticle($title, $avatar, json_encode($photoNames), $price, $categoryName, $descrip);

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