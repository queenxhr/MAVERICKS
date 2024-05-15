<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_Contact extends CI_Model {


     public function getAll()
	{
		$query = $this -> db -> query ("select * from t_contact_us");
        return $query -> result();
	}
    
	public function insertPesan($data)
	{
		$this->db->insert('t_contact_us',$data);
	}
}