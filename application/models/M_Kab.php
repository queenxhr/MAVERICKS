<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_Kab extends CI_Model{
    public function getAll(){
        $query = $this->db->query("select * from t_kab_kota");
        return $query->result();
    }

    public function getAllbln(){
        $query = $this->db->query("select * from t_bulan");
        return $query->result();
    }

    public function getAllthn(){
        $query = $this->db->query("select * from t_tahun");
        return $query->result();
    }

    public function getAllch(){
        $query = $this->db->query("select * from curah_hujan");
        return $query->result();
    }

    public function getAlljk(){
        $query = $this->db->query("select * from t_jenis_kelamin");
        return $query->result();
    }
}
