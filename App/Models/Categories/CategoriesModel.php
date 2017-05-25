<?php

namespace App\Models\Categories;


class CategoriesModel {

	   
    public function addCategory($category,$dir) {

        $app = \Yee\Yee::getInstance();

        $data = array(
            'category_name' => $category,
            'avatar'        => $dir,
        );

        $app->db['default']->insert('categories',$data);
    }

    public function getCategories() {
    
       $app = \Yee\Yee::getInstance();

        return $app->db['default']->get('categories');
    }

    public function isExistCategory($categoryName) {

        $app = \Yee\Yee::getInstance();

        if ($app->db['default']->where('category_name',$categoryName)->getOne('categories')) {
            return true;
        }
        return false;

    }

    public function getCategoryByName($name) {

        $app = \Yee\Yee::getInstance();

        return $app->db['default']->where('category_name',$name)->getOne('categories');
    }

    public function updateCategoryByName($oldName, $newName, $dir) {

        $app = \Yee\Yee::getInstance();

        $data = array(
            'category_name' => $newName,
            'avatar'        => $dir,
        );

        $app->db['default']->where('category_name',$oldName)->update('categories',$data);
    }

    public function deleteCategory($name) {

        $app = \Yee\Yee::getInstance();

        if($app->db['default']->where('category_name',$name)->delete('categories'))
        {
            return true;
        }
        return false;
    }


}