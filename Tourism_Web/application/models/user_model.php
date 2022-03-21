<?php 
class user_manage extends CI_Model{

	protected $user_id;

	public function __construct() {
		parent::__construct();
		$this->user_id = user_id();
	}

	//Lấy thông tin người dùng
	public function get_user_details($user_id = ''){
		$query = $this->db->query('select * from user_table where username = '.$user_id);
		if($query->num_rows() > 0)
			return $query->row_array();
		return false;
	}

	//Kiểm tra đăng nhập người dùng
	public function login_check($username = '', $password = ''){
		$query = mysqli_query("select * from user_table where username = ".$username." and password = ".$password);
		$result = mysqli_num_rows($query);
		if($result == 1){
			return ;
		} else {
			return 0;
		}
	}

	//Đăng ký người dùng
	public function user_register($username='',$password = '', $fullname = '',$email = '',$phone = ''){
		$query = "insert into user_table('username','password','fullname','email','phone','role') values ('".$username."','".$password."','".$fullname."','".$email."','".$phone."',2)";
		$result = $this->db->query($query);
		return $result;
	}
}
?>