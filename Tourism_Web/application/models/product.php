<?php 
class Product extends CI_Model{
	public function __construct() {
		parent::__construct();
	}
	public function return_data_tour(){
		$query = $this->db->query('select * from tour where tour_display = 1  order by tour_rate desc limit 12');
		return $query->result();
	}

	public function all_tour(){
		$query = $this->db->query('select * from tour where tour_display = 1  order by tour_id desc');
		return $query->result();
	}
}
?>