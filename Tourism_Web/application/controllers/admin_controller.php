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
}
?>