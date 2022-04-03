<?php 
class Product extends CI_Model{
	public function __construct() {
		parent::__construct();
	}
	public function return_data_tour(){
		
		$query = $this->db->query('select * from tour');
		return $query->result();




		// $conn = mysqli_connect('localhost','root','','tourism_web');
		// $query = mysqli_query($conn,"select * from tour");
		// $result = mysqli_fetch_array($query);
		// return $query;
	}
}
?>