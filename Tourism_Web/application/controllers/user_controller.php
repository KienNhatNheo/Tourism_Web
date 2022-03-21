<?php 
class User_controller extends CI_Controller{
	public function __construct(){
		parent::__construct();
	}

	public function login($username,$password) {
		$this->load->model('../models/user_model.php');
		$result = $this->user_model->login_check($username,$password);
		if($result == 1){
			include_once('../views/homepage.php');
		} else {
			include_once('../views/errors/');
		}
	}

	public function register($username='',$password = '', $fullname = '',$email = '',$phone = '')
	{
		$this->load->model('../models/user_model.php');
		if(register($username='',$password = '', $fullname = '',$email = '',$phone = '')){
			include_once('../views/login.php');
		} else {
			
		}
	}
}
?>