<?php

use Yee\Managers\Controller\Controller;
use Yee\Managers\CacheManager;
use App\Models\Categories\CategoriesModel;
use App\Models\Article\ArticleModel;
use App\Libraries\File\File;

// Category Controller for Admin...
class CategoriesController extends Controller {  

    /**
    * @Route('/admin/category')
    * @Name('categoryAdd.index')
    */
    public function indexAction( )
    {
      
        /** @var Yee\Yee $yee */
        $app = $this->getYee();

        if ( !isset($_SESSION['isLogged']) ) {
            $app->redirect('/');
        } else {
            $javascript = array(
                '/js/categoryAdd.js',
            );
            
            $data = array(
                'title' => 'Нова категория',
                'javascript' => $javascript,
            );
            
            $app->render('/pages/categoryAdd.tpl',$data);
        }
    }


    /**
    * @Route('/admin/category')
    * @Name('category')
    * @Method('post')
    */
    public function postAddCategoryAction() {

        /** @var Yee\Yee $yee */
        $app = $this->app;

        //------> POST Variables <-------
        $errors = [];
        $newCategory = $app->request()->post('categoryName');

        $categoriesModel = new CategoriesModel();
        $fileHelper = new File();

        if ($newCategory != "") {
            if ($categoriesModel->isExistCategory($newCategory)) {
                $errors[] = "Category already exist!<br>";
            }
        } else {
            $errors[] = "Wrong data.Check your field!<br>";
        }

        $file = $_FILES["img"];

        if ($file['name'] != "") {
            
            if($fileHelper->fileSizeAllowed($file)) {
                $errors[] = "Maximum file size is 2mb.<br>";
            }

            if (!$fileHelper->isAllowedExt($file)) {
                $errors[] = "Wrong file format!<br>";
            }
        } else {
            $errors[] = "No attached file!<br>";
        }

        if (isset($errors[0]) === false) {

            $target_file = $fileHelper->saveFile($file);
            $categoriesModel->addCategory($newCategory, $target_file);
            
            $data = array(
                "message"       => "Категорията беше добавена успешно!",
                "error"         => false,
                "success"       => true,
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


    /**
    * @Route('/admin/category/update/:id') 
    * @Name('updateCategory.index')
    */
    public function updateCategoryAction($name) {

        $app = $this->getYee();
        
        if ( !isset($_SESSION['isLogged']) ) {
            $app->redirect('/');
        }

        $categoryName = $name;

        $categoriesModel = new CategoriesModel();
        $categoryProperty = $categoriesModel->getCategoryByName($categoryName);

        $javascript = array(
            '/js/categoryUpdate.js',
        );

        if ($categoryProperty == null) {
            $app->redirect('/admin/category/list');
        }

        $data = array(
            'title'             => 'Промяна на категорията',
            'categoryAvatar'    => $categoryProperty["avatar"],
            'categoryName'      => $categoryProperty['category_name'],
            'javascript'        => $javascript,
        ); 
        $app->render('/pages/categoryUpdate.tpl',$data);
    }


    /**
    * @Route('/admin/category/update') 
    * @Name('updateCategory.index')
    * @Method('post')
    */
    public function postUpdateCategoryAction() {

        $app = $this->getYee();

        $oldCategoryName = $app->request()->post("oldCategoryName");
        $newCategoryName = $app->request()->post('newCategoryName');
        $oldAvatar = $app->request()->post('oldAvatar');
        $newAvatar = $_FILES['img'];
        $errors = [];

        $categoriesModel = new CategoriesModel();
        $fileHelper = new File();

        if ($newAvatar['name'] != "") {

            if($fileHelper->fileSizeAllowed($newAvatar)) {
                $errors[] = "Maximum file size is 2mb.";
            }

            if (!$fileHelper->isAllowedExt($newAvatar)) {
                $errors[] = 'Wrong file format!';
            }
        }

        if (!isset($errors[0])) {

            if($newAvatar['name'] != ""){
                $fileNameDir = $fileHelper->saveFile($newAvatar);
                $categoriesModel->updateCategoryByName($oldCategoryName, $newCategoryName, $fileNameDir);    
                $fileHelper->deleteFile($oldAvatar);
            } else {
                $categoriesModel->updateCategoryByName($oldCategoryName, $newCategoryName, $oldAvatar);
            }

            $articleModel = new ArticleModel();
            $articleModel->updateArticleCategory($oldCategoryName, $newCategoryName);

            $data = array(
                'message'       => "Категорията беше променена успешно!",
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


    /**
    * @Route('/admin/category/delete/:id') 
    * @Name('updateCategory.index')
    */
    public function deleteCategoryAction($name) {

        $app = $this->getYee();

        if ( !isset($_SESSION['isLogged']) ) {
            $app->redirect('/');
        }

        if ($categoryProperty == null) {
            $app->redirect('/admin/category/list');
        }

        $categoriesModel = new CategoriesModel();
        $categoryProperty = $categoriesModel->getCategoryByName($name);

        // $javascript = array(
        //     '/js/categoryDelete.js',
        // );

        $data = array(
            'title'             => 'Изтриване на категорията',
            'categoryAvatar'    => $categoryProperty['avatar'],
            'categoryName'      => $categoryProperty['category_name'],
            // 'javascript'        => $javascript,
        ); 
        $app->render('/pages/categoryDelete.tpl',$data);
    }


    /**
    * @Route('/admin/category/delete')
    * @Name('category.index')
    * @Method('post')
    */
    public function postDeleteCategoryAction() {

        /** @var Yee\Yee $yee */
        $app = $this->app;

        /* ------> POST Variables <------- */
        $categoryName = $app->request()->post('categoryName');
        $categoryAvatarImg = $app->request()->post('categoryAvatar');

        $categoryModel = new CategoriesModel();
        $fileHelper = new File();

        $fileHelper->deleteFile($categoryAvatarImg);
        $categoryModel->deleteCategory($categoryName);

        $app->redirect("/admin/category/list");
    }


    /**
    * @Route('/admin/category/list') 
    * @Name('updateCategory.index')
    */
    public function listCategoryAction() {

        $app = $this->getYee();

        if ( !isset($_SESSION['isLogged']) ) {
            $app->redirect('/');
        }

        $categoriesModel = new CategoriesModel();
        $categoryList = $categoriesModel->getCategories();

        $data = array(
            'title' => 'List Category',
            'categoryDetails' => $categoryList,
        ); 

        $app->render('/pages/categoryList.tpl',$data);
     }
}