<?php
namespace App\Models\Ajax;

class AjaxModel {

	/**
	* Email from login form
	*
	* @var string
	*/
	private $loginEmail;
	/**
	* Password from login form
	*
	* @var string
	*/
	private $loginPass;
	/**
	* Yee instance
	*
	* @var Yee
	*/
	private $app;


	public function __construct($email,$pass) {

		$this->app 		 	= \Yee\Yee::getInstance();
		$this->loginEmail 	= $email;
		$this->loginPass 	= $pass;
	}


	/**
	* This method gets all fields from database for $loginEmail (email from database)
	*
	* @return array with all fields from database if user exists or null
	*/
	public function userProperty() {

		$app = $this->app;
		return $app->db['default']->where("email",$this->loginEmail)->getOne('admin');
	}


	/**
	* This method checks if email exists in database.
	*
	* @return boolean true if email exist or false if is not found.
	*/
	public function isEmailExist() {

		$app = $this->app;

		$isUserExist = $this->userProperty();
		if ($isUserExist != NULL) {
			return true;
		}
		return false;
	}


	/**
	* Checks if $loginPass is equal(==) to the 'password' from database field
	*
	* @return boolean true if passwords are equals
	*/
	public function checkPassword() {

		$app = $this->app;

		if ($this->isEmailExist()) {

			$user = $this->userProperty();

			if ($this->loginPass == $user['password']) {
				return true;
			}
		}
		return false;
	}



	/**
	* Check account is active or not ( '1' = active and '0' = not active ) in database
	*
	* @return boolean true if account is active
	*/
	public function isUserActive() {

		$app = $this->app;

		$checkUserActive = $this->userProperty();

		if ($checkUserActive['active'] == 1) {
			return true;
		}
		return false;
	}



	/**
	* Call isEmailExist(), isUserActive() and checkPassword() functions
	*
	* @return boolean true or false
	*/
	public function validateLogin() {

		if ($this->isEmailExist() && $this->checkPassword()) {
			return true;
		}
		return false;
	}

}