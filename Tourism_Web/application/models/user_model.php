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
		if(sha1($password) == $row['password']){
			if($row['role'] == 1){
				return 2;
			}
			if ($row['user_enable'] != 1) {
			return 3;
			}
			$_SESSION['name'] = $username;
			return 1;
		}else{
			return 0;
		}
	}

	//Kiểm tra xem tài khoản người dùng có được kích hoạt hay chưa
	public function check_enable(){

	}

	//Kiểm tra xem tên người dùng tồn tại hay chưa
	public function check_username($username){
		$query = $this->db->query("select * from user_table where username ='".$username."'");
		if($query->result() == null){
			return false;
		} else {
			return true;
		}
	}

	//Đăng ký người dùng
	public function user_register($username='',$password = '', $fullname = '',$email = '',$phone = ''){
		$conn = mysqli_connect('localhost','root','','tourism_web');
		$query = "insert into user_table(username,password,fullname,email,phone,role,user_enable) values ('".$username."','".sha1($password)."','".$fullname."','".$email."','".$phone."',2,1)";
		$result = mysqli_query($conn,$query);
		if($result) return 1;
		else return 0;
	}

	
	//Trả về thông tin chuyến đi
	public function tour_detail($tour_id){
		$query = $this->db->query('select * from tour where tour_id = '.$tour_id);
		return $query->result();
	}
	
	
	//Trả về id của người dùng
	public function get_user_id(){
		$query = $this->db->query("select user_id from user_table where username = '".$_SESSION['name']."'");
		return $query->result();
	}

	//Đăng ký chuyến đi
	public function tour_register($tour_id){
		$date = date('d/m/Y');
		$query = $this->db->query("select user_id from user_table where username = '".$_SESSION['name']."'");
		foreach($query->result() as $item){
			$query1 = $this->db->query('select tour_startday from tour where tour_id ='.$tour_id);
			foreach($query1->result() as $item1){
			$query2 = $this->db->query("insert into  tour_history(user_id,tour_id,tour_startday,order_time) values (".$item->user_id.",".$tour_id.",'".$item1->tour_startday."','".$date."')");
			$query3 = $this->db->query('select * from tour where tour_id = '.$tour_id);
			return $query3->result();
			}
		}	
	}

	//Trả về danh sách người dùng theo id
	public function return_username_byid($user_id){
		$query = $this->db->query('select fullname from user_table where user_id='.$user_id);
		return $query->result();
	}

	//Trả về bình luận của người dùng về chuyến đi theo id
	public function return_comment($tour_id){
		$query = $this->db->query('select * from tour_rating where tour_id ='.$tour_id);
		return $query->result();
	}

	//Thêm bình luận về chuyến đi
	public function add_tour_comment($tour_id,$comment){
		$query = $this->db->query("select user_id from user_table where username = '".$_SESSION['name']."'");
		foreach($query->result() as $item){
			$sql = "insert into tour_rating(tour_id,user_id,username,comment) values (".$tour_id.",".$item->user_id.",'".$_SESSION['name']."','".$comment."')";
			$query1 = $this->db->query($sql);
		}
		header('Location:javascript:history.go(-1)');
	}

	//Thêm đóng góp cho người phát triển
	public function add_contribution($contribution){
		$query = $this->db->query("select user_id from user_table where username = '".$_SESSION['name']."'");
		$date = date('d/m/Y');
		foreach($query->result() as $item){
			$sql = "insert into contributor(user_id,content,content_time) values (".$item->user_id.",'".$contribution."','".$date."')";
			$query1 = $this->db->query($sql);
		}
		header('Location:javascript:history.go(-1)');
	}

	//Trả về thông tin người dùng hiện thời
	public function user_detail(){
		$query = $this->db->query("select user_id from user_table where username = '".$_SESSION['name']."'");
		foreach($query->result() as $item){
			$query1 = $this->db->query("select * from user_table where user_id = ".$item->user_id);
			return $query1->result();
		}
	}

	//Cập nhật thông tin người dùng
	public function update_user_detail($fullname,$email,$phone){
		$query = $this->db->query("update user_table set fullname = '".$fullname."', email = '".$email."', phone = '".$phone."' WHERE username = '".$_SESSION['name']."'");
	}

	//So sánh mật khẩu cũ để đổi mật khẩu 
	public function pass_compare($pass){
		$query = $this->db->query("select * from user_table where username = '".$_SESSION['name']."'");
		foreach ($query->result() as $key){
			if($key->password == $pass){
				return 1;
			} else {
				return 0;
			}
		}
	}

	//Cập nhật mật khẩu mới
	public function update_new_pass($new_pass){
		$query = $this->db->query("update user_table set password = '".$new_pass."' where username = '".$_SESSION['name']."'");
	}

	//Trả về lịch sử chuyến đi của người dùng
	public function return_tour_history(){
		$query = $this->db->query("select user_id from user_table where username = '".$_SESSION['name']."'");
		foreach($query->result() as $item){
			$query1 = $this->db->query("select th.tour_id,th.tour_startday,th.order_time,t.tour_name from tour_history as th, tour as t where th.user_id = ".$item->user_id." and t.tour_id = th.tour_id");
			return $query1->result();
		}
	}

	//Tìm kiếm nơi bắt đầu
	public function search_start_place($place){
		$query = $this->db->query("select * from tour where tour_route like '%".$place."'");
		return $query->result();
	}

	//Đăng xuất
	public function logout(){
		session_start();
		session_destroy();
	}

	public function return_tourname($tour_id){
		$query = $this->db->query("select * from tour where tour_id =".$tour_id);
		return $query->result();
	}

	public function add_rate($tour_id,$point, $feedback){
		if($point >= 0.0  && $point <= 5.0 && $tour_id != null && $point != null && $feedback != null){
			$query = $this->db->query("select user_id from user_table where username = '".$_SESSION['name']."'");
			foreach($query->result() as $item){
				$query1 = $this->db->query("insert into tour_rating values(".$item->user_id.",".$tour_id.",".$point.",'".$feedback."')");

				$query2 = $this->db->query("select AVG(rating) as avg_rate from tour_rating where tour_id = ".$tour_id);
				foreach($query2->result() as $item1){
					$query3 = $this->db->query("update tour set tour_rate = ".$item1->avg_rate." where tour_id = ".$tour_id);
				}
				return 1;
			}	
		}
		return 0;	
	}

	public function search_hanoi(){
		$query = $this->db->query("select * from tour where tour_route like '%Hà Nội'");
		return $query->result();
	}

	public function search_tphcm(){
		$query = $this->db->query("select * from tour where tour_route like '%TP.Hồ Chí Minh'");
		return $query->result();
	}

	public function search_danang(){
		$query = $this->db->query("select * from tour where tour_route like '%Đà Nẵng'");
		return $query->result();
	}
}
?>