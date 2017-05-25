<?php

use Yee\Managers\Controller\Controller;
use Yee\Managers\CacheManager;
use App\Models\Categories\CategoriesModel;

class HomeController extends Controller
{
     /**
     * @Route('/')
     * @Name('home.index')
     */
    public function indexAction( )
    {
        /** @var Yee\Yee $yee */
        $app = $this->getYee();

        $categories = new CategoriesModel();

        $data = array(
            "title" => "Начало",
            "categories" => $categories->getCategories(),
        );

        $app->render('pages/index.tpl', $data);
    }
}