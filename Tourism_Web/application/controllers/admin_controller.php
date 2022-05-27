<?php 
class Admin_controller extends CI_Controller{
	public function history(){
		$this->load->model('admin_model');
		$history = $this->admin_model->history();
		$data['history'] = $history;
		$this->load->view('admin/header');
		$this->load->view('admin/history', $data);
	}

	public function contribution(){
		$this->load->model('admin_model');
		$contribution = $this->admin_model->contribution();
		$data['contribution'] = $contribution;
		$this->load->view('admin/header');
		$this->load->view('admin/contribution', $data);
	}

	public function tour_manager(){
		$this->load->model('admin_model');
		$tour_info = $this->admin_model->tour_manager_showtour();
		$data['tour_info'] = $tour_info;
		$this->load->view('admin/header');
		$this->load->view('admin/tour_manager', $data);
	}

	public function tour_disable($tour_id){
		$this->load->model('admin_model');
		$this->admin_model->tour_disable($tour_id);
		header('Location:javascript:history.go(-1)');

	}

	public function tour_active($tour_id){
		$this->load->model('admin_model');
		$this->admin_model->tour_active($tour_id);
		header('Location:javascript:history.go(-1)');
	}

	public function add_tour(){
		$this->load->view('admin/header');
		$this->load->view('admin/add_tour');
	}

	public function add_tour_result(){
		if(isset($_POST['tour_name']) && $_POST['tour_name'] != null){
			$tour_name = $_POST['tour_name'];
			$tour_route = $_POST['tour_route'];
			$tour_price = $_POST['tour_price'];
			$tour_detail = $_POST['tour_detail'];
			$tour_length = $_POST['tour_length'];
			$tour_type = $_POST['tour_type'];
			$tour_startday = $_POST['tour_startday'];
			$tour_image = $_POST['tour_image'];
			$this->load->model('admin_model');
			$result = $this->admin_model->add_tour_to_db($tour_name, $tour_route, $tour_price, $tour_detail, $tour_length, $tour_type, $tour_startday, $tour_image);
			$data['result'] = $result;
			
		} else {
			$data['result'] = 0;
		}
		$this->load->view('admin/header');
		$this->load->view('admin/add_tour_result', $data);
	}

	public function account_manager(){
		$this->load->model('admin_model');
		$user_info = $this->admin_model->user_manager_showuser();
		$data['user_info'] = $user_info;
		$this->load->view('admin/header');
		$this->load->view('admin/user_manager', $data);

	}

	public function user_disable($user_id){
		$this->load->model('admin_model');
		$this->admin_model->user_disable($user_id);
		header('Location:javascript:history.go(-1)');

	}

	public function user_enable($user_id){
		$this->load->model('admin_model');
		$this->admin_model->user_enable($user_id);
		header('Location:javascript:history.go(-1)');
	}

	public function tour_feedback($tour_id){
		$this->load->model('admin_model');
		$tour_feedback = $this->admin_model->tour_feedback($tour_id);
		$data['tour_feedback'] = $tour_feedback;
		$this->load->view('admin/tour_feedback', $data);
	}

}
?>