<?php
class Admin_model extends CI_Model{
	public function history(){
		$query = $this->db->query('select u.username, u.fullname , u.email, u.phone, t.tour_name, t.tour_route, t.tour_startday, h.order_time 
		from user_table as u, tour as t,tour_history as h 
		where h.tour_id = t.tour_id and h.user_id = u.user_id
		order by order_time desc');
		return $query->result();
	}

	public function contribution(){
		$query = $this->db->query('select u.username, u.fullname, c.content, c.content_time from user_table as u, contributor as c where c.user_id = u.user_id order by c.content_time desc');
		return $query->result();
	}

	public function tour_manager_showtour(){
		$query = $this->db->query('select * from tour');
		return $query->result();
	}

	public function tour_disable($tour_id){
		$query = $this->db->query('update tour set tour_display = 0 where tour_id ='.$tour_id);
	}
	
	public function tour_active($tour_id){
		$query = $this->db->query('update tour set tour_display = 1 where tour_id ='.$tour_id);
	}

	public function add_tour_to_db($tour_name, $tour_route, $tour_price, $tour_detail, $tour_length, $tour_type, $tour_startday, $tour_image){
		$query = $this->db->query("insert into tour(tour_name, tour_route, tour_price, tour_detail, tour_length, tour_type, tour_startday, tour_image, tour_display) values ('".$tour_name."','".$tour_route."',".$tour_price.",'".$tour_detail."','".$tour_length."','".$tour_type."','".$tour_startday."','".$tour_image."',1)");
		return 1;
	}

	public function user_manager_showuser(){
		$query = $this->db->query('select * from user_table');
		return $query->result();
	}

	public function user_disable($user_id){
		$query = $this->db->query('update user_table set user_enable = 0 where user_id ='.$user_id);
	}
	
	public function user_enable($user_id){
		$query = $this->db->query('update user_table set user_enable = 1 where user_id ='.$user_id);
	}

}																					
?> 