<?php

namespace App\Models\Gallery;

class GalleryModel {

	private $app;

	public function __construct()
	{
		$this->app = \Yee\Yee::getInstance();
	}

	public function getArticleByCategory($categoryName)
	{
		$app = $this->app;

		return $app->db['default']->where('category_name',$categoryName)
					->orderBy("singUpDate","desc")->get('gallery');
	}

	public function getArticleWithLimit($categoryName, $start, $limit)
	{
		$app = $this->app;

		$params = [$categoryName, $start, $limit];
		return $app->db['default']->rawQuery("SELECT * FROM gallery WHERE category_name = ? ORDER BY singUpDate LIMIT ?, ?", $params);
	}

	public function getProductById($productId)
	{
		$app = $this->app;

		return $app->db['default']->where('id',$productId)->getOne('gallery');
	}
	
}