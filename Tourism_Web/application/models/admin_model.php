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
}																					
?> 