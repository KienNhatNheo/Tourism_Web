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
		$this->load->model('user_model');
		if($username != NULL || $password != NULL){
			$check = $this->user_model->login_check($username,$password);
			if($check == 0){
				$this->load->view('error_and_return');
			} else if($check == 1){
				$this->load->model('product');
				$dssp = $this->product->return_data_tour();
				$data['ds'] = $dssp;
				$this->load->view('homepage', $data);
			} else if($check == 2){
				$this->load->view('admin/header');
			} else {
				$this->load->view('alert_account_lock');
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
		$check_username = $this->user_model->check_username($username);
		if($check_username == FALSE){
			$result = $this->user_model->user_register($username,$password,$fullname,$email,$phone);
			header('Location:../user_controller');	
		} else {
			$this->load->view('error_and_return');
		}
			
	}
	
	public function contact(){
		$this->load->view('contact');
	}

	public function tour_detail($tour_id){
		$this->load->model('user_model');
		$detail = $this->user_model->tour_detail($tour_id);
		$data['tour_detail'] = $detail;
		$this->load->view('tour_detail', $data);
		$tour_comment = $this->user_model->return_comment($tour_id);
		$data['cmt']=$tour_comment;
		$this->load->view('tour_comment', $data);
	}

	public function tour_register($tour_id){
		$this->load->model('user_model');
		$register_return_tour_id = $this->user_model->tour_register($tour_id);
		$data['t_id'] = $register_return_tour_id;
		$this->load->view('tour_register_success',$data);
	}

	public function add_tour_comment(){
		$tour_id = $_POST['tour_id'];
		$comment = $_POST['comment'];
		$this->load->model('user_model');
		echo "<meta http-equiv='refresh' content='0'>";
		$this->user_model->add_tour_comment($tour_id,$comment);
	}

	public function add_contribution(){
		
		$contribution = $_POST['contribution'];

		$this->load->model('user_model');
		echo $_SESSION['name'];
		$this->user_model->add_contribution($contribution);
	}
	public function user_detail(){
		$this->load->model('user_model');
		$user_detail = $this->user_model->user_detail();
		$data['user_detail']  = $user_detail;
		$this->load->view('user_detail', $data);
	}

	public function update_user_detail(){
		$this->load->model('user_model');
		$user_detail = $this->user_model->user_detail();
		$data['user_detail']  = $user_detail;
		$this->load->view('update_user_detail',$data);
	}

	public function update_user_detail_form(){
		$fullname = $_POST['fullname'];
		$email = $_POST['email'];
		$phone = $_POST['phone'];
		$this->load->model('user_model');
		$this->user_model->update_user_detail($fullname,$email,$phone);
		$user_detail = $this->user_model->user_detail();
		$data['user_detail']  = $user_detail;
		$this->load->view('user_detail', $data);
	}

	public function change_password(){
		$this->load->view('change_password');
	}
	public function change_password_result(){
		$this->load->model('user_model');
		$pre_pass = $_POST['pre_pass'];
		$new_pass = $_POST['new_pass'];
		$new_pass_confirm = $_POST['new_pass_confirm'];
		$key = '';

		$compare_pass = $this->user_model->pass_compare($pre_pass);
		if($compare_pass == 1 && $new_pass == $new_pass_confirm){
			$this->user_model->update_new_pass($new_pass);
			$key = 1;
		} else {
			$key = 0;
		}
		$data['key'] = $key;
		$this->load->view('change_password_result', $data);
	}

	public function history(){
		$this->load->model('user_model');
		$tour_history = $this->user_model->return_tour_history();
		$data['tour_history'] = $tour_history;
		$this->load->view('tour_history', $data);
	}

	public function search_start_place(){
		$place_key = $_POST['place_search'];
		$this->load->model('user_model');
		$list_place = $this->user_model->search_start_place($place_key);
		$data1['place_key'] = $place_key;
		if($list_place != null){
			$data2['place'] = $list_place;
		} else {
			$data2['place'] = null;
		}
		$this->load->view('search_head');
		$this->load->view('search_title', $data1);
		$this->load->view('search_result', $data2);
	}

	public function home(){
		$this->load->model('product');
		$dssp = $this->product->return_data_tour();
		$data['ds'] = $dssp;
		$this->load->view('homepage', $data);
	}

	public function tour_rate($tour_id){
		$this->load->model('user_model');
		$tour_data = $this->user_model->return_tourname($tour_id);
		$data['tour_data'] = $tour_data;
		$this->load->view('tour_rate', $data);
	}


	public function tour_rate_handle(){
		$point = $_POST['rate_point'];
		$feedback = $_POST['feedback'];
		$tour_id = $_POST['tour_id'];
		$this->load->model('user_model');
		$bool = $this->user_model->add_rate($tour_id,$point,$feedback);
		$data['bool'] = $bool;
		$this->load->view('add_rate_result', $data);
	}
}
?>