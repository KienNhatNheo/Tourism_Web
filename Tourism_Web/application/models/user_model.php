<?php 
class User_model extends CI_Model{

	public function __construct() {
		parent::__construct();
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
		session_start();
		$conn = mysqli_connect('localhost','root','','tourism_web');
		$query = mysqli_query($conn,"select * from user_table where username = '".$username."'");
		$row = mysqli_fetch_array($query);
		if($password == $row['password']){
			$_SESSION['name'] = $username;
			return 1;
		}else{
			return 0;
		}
	}

	//Đăng ký người dùng
	public function user_register($username='',$password = '', $fullname = '',$email = '',$phone = ''){
		$conn = mysqli_connect('localhost','root','','tourism_web');
		$query = "insert into user_table(username,password,fullname,email,phone,role) values ('".$username."','".$password."','".$fullname."','".$email."','".$phone."',2)";
		$result = mysqli_query($conn,$query);
		if($result) return 1;
		else return 0;
	}

	//Trả về thông tin người dùng theo trường
	public function getDetail_user($user_id = '', $field = ''){
		$query = $this->db->get_where('user_table',array('user_id' => $user_id ));
		$execute = $this->db->query($query); 
	}


	
}
?>