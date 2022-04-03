<?php 
class User_controller extends CI_Controller{
	public function __construct(){
		parent::__construct();
	}

	public function index(){
		$this->load->view('login');
	}
	
	public function login($username = '', $password = '') {
		error_reporting(0);
		$username = $_POST['name'];
		$password = $_POST['password'];
		if($username != NULL || $password != NULL){
			$this->load->model('user_model');
			$check = $this->user_model->login_check($username,$password);
			if($check == 0){
				$this->load->view('error_and_return');
			} else {
				$this->load->model('product');
				$dssp = $this->product->return_data_tour();
				$data['ds'] = $dssp;
				$this->load->view('homepage', $data);
			}
		} else {
			$this->load->view('error_and_return');
		}
	}

	public function register()
	{
		$this->load->view('register');
	}
	public function register_handle(){
		$this->load->model('user_model');
		$username = $_POST['name'];
		$password = $_POST['password'];
		$email = $_POST['email'];
		$fullname = $_POST['fullname'];
		$phone = $_POST['phone'];
		$result = $this->user_model->user_register($username,$password,$fullname,$email,$phone);
		header('Location:../user_controller');	
	}
}
?>