<?php 
class Product extends CI_Model{
	public function __construct() {
		parent::__construct();
	}
	public function return_data_tour(){
		$query = $this->db->query('select * from tour');
		return $query->result();
	}
}
?>