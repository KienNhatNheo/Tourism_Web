<?php 
class San_pham extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
	}

	public function index()
	{
		echo 'Đây là phương thức index';
	}

	public function danhsach()
	{
		//cách 1 dùng tên mặc định của file
		$this->load->model('san_pham/m_san_pham_table');
		$dssp = $this->m_san_pham_table->getSanPham();
		$data['ds'] = $dssp;
		$this->load->view('san_pham/v_dssp', $data);
		//cách 2 đổi tên file
		// $this->load->model('san_pham/m_san_pham_table', 'tblSP');
		// $dssp = $this->tblSP->getSanPham();

		
	}

	public function them()
	{
		echo 'Đây là phương thức thêm';
	}

	public function capnhat($id)
	{
		echo 'Cập nhật sản phẩm ' . $id;
	}

	public function xoa($id)
	{
		echo 'Đây là phương thức xóa';
	}
}
?>