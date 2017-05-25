<?php

namespace App\Models\Article;

class ArticleModel {

	private $app;

	public function __construct() {
		$this->app = \Yee\Yee::getInstance();
	}

	public function addArticle($title, $avatar, $photos, $price, $categoryName, $description) {

		$app = $this->app;
		
		$email = $_SESSION['userEmail'];
		$dateTimeNow = date("Y-m-d H:i:s");

		$data = array(
			'username'		=> $email,
			'title' 		=> $title,
			'folder_name' 	=> md5($categoryName),
			'avatar' 		=> $avatar,
			'photos'		=> $photos,
			'price'			=> $price,
			'description'	=> $description,
			'singUpDate'	=> $dateTimeNow,
			'category_name' => $categoryName,
		);

		if( $app->db['default']->insert('gallery', $data) ) {
			return true;
		}
		return false;

	}

	public function getArticle(){

		$app = $this->app;
		
		return $app->db['default']->get('article');
	}

	public function updateArticleCategory($oldCategoryName, $newCategoryName)
	{
		$app = $this->app;
		
		$data = array(
			"category_name" => $newCategoryName,
		);
		
		$app->db['default']->where('category_name',$oldCategoryName)->update('gallery',$data);
	}
}