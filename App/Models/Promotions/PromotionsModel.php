<?php

namespace App\Models\Promotions;

class PromotionsModel {

	private $app;

	public function __construct()
	{
		$this->app = \Yee\Yee::getInstance();
	}

	public function addPromotion($title, $avatar, $photos, $oldPrice, $newPrice, $categoryName, $description) {

		$app = $this->app;
		
		$email = $_SESSION['userEmail'];
		$dateTimeNow = date("Y-m-d H:i:s");

		$data = array(
			'username'		=> $email,
			'title' 		=> $title,
			'folder_name' 	=> md5($categoryName),
			'avatar' 		=> $avatar,
			'photos'		=> $photos,
			'old_price'		=> $oldPrice,
			'new_price'		=> $newPrice,
			'description'	=> $description,
			'created_at'	=> $dateTimeNow,
		);

		if( $app->db['default']->insert('promotions', $data) ) {
			return true;
		}
		return false;
	}

	public function getPromotions()
	{
		$app = $this->app;

		return $app->db['default']->get('promotions');
	}

	public function getPromotionById($productId)
	{
		$app = $this->app;

		return $app->db['default']->where('id',$productId)->getOne('promotions');
	}

	public function getPromotionsWithLimit($start, $limit)
	{
		$app = $this->app;

		$params = [ $start, $limit ];

		return $app->db['default']->rawQuery("SELECT * FROM promotions ORDER BY created_at LIMIT ?, ?", $params);
	}
}