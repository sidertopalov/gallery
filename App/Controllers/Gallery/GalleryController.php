<?php

use Yee\Managers\Controller\Controller;
use Yee\Managers\CacheManager;
use App\Models\Gallery\GalleryModel;

class GalleryController extends Controller
{
     /**
     * @Route('/gallery/:name')
     * @Name('login.index')
     */
    public function indexAction($categoryName)
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

        $galleryModel = new GalleryModel();
        $result = $galleryModel->getArticleByCategory($categoryName);
        $articles = $galleryModel->getArticleWithLimit($categoryName, $start, $limit);

        $countResult = count($result);
        
        $pages = ceil($countResult / $limit);

        $data = array(
        	"categoryName" 	=> $categoryName,
        	"curPage"		=> $curPage ? $curPage : 0,
        	"pages"			=> $pages,
        	"articles"		=> $articles,
    	);

        $app->render('/pages/articleList.tpl', $data);
    }

     /**
     * @Route('/gallery/product/view/:id')
     * @Name('login.index')
     */
    public function viewProductByIdtAction($productId)
    {
        /** @var Yee\Yee $yee */
        $app = $this->getYee();

        $galleryModel = new GalleryModel();
        $productDetails = $galleryModel->getProductById($productId);
        $productPhotos = json_decode($productDetails['photos'],true);

        $price = explode(".",$productDetails['price']);

        if (!isset($price[1])) {
        	$price = $price[0] . ",00";
        } else {
        	$price = $productDetails['price'];
        }

        $javascript = [
        	"/js/lightbox.js",
        ];
        $css = [
        	"/css/lightbox.css",
        ];

        $data = [
        	"product"      => $productDetails,
        	"photos"       => $productPhotos,
        	"price"        => $price,
        	"javascript"   => $javascript,
        	"css"          => $css,
        ];

        $app->render('/pages/articleView.tpl', $data);
    }
}
