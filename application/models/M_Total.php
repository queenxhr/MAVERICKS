<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class M_Total extends CI_Model{
    public function getAllkasus(){
        $query = $this->db->query("SELECT
        t_total.id_total, 
        t_total.jum_total, 
        t_kab_kota.nama_kab, 
        t_tahun.tahun
    FROM
        t_total
        INNER JOIN
        t_tahun
        ON 
            t_total.id_tahun = t_tahun.id_tahun
        INNER JOIN
        t_kab_kota
        ON 
            t_total.id_kota = t_kab_kota.id_kab");
        return $query->result();
    }

    public function getidkt($id)
	{
		$this->db->where('id_total',$id);
		$query = $this->db->get('t_total');
		return $query->row();
	}

    public function updatekt($data, $id)
	{
		$this->db->where('id_total',$id);
		$this->db->update('t_total',$data);
	}

    public function deletekt($id)
	{
		$this->db->where('id_total',$id);
		$this->db->delete('t_total');
	}

    public function getperbln(){
        $query = $this->db->query("SELECT
        t_total_perbln.id_kasus, 
        t_bulan.nama_bulan, 
        t_bulan.id_bulan, 
        t_total_perbln.jumlah_kasus, 
        t_tahun.tahun,
        t_tahun.id_tahun
    FROM
        t_total_perbln
        INNER JOIN
        t_bulan
        ON 
            t_total_perbln.id_bln = t_bulan.id_bulan
        INNER JOIN
        t_tahun
        ON 
            t_total_perbln.id_tahun = t_tahun.id_tahun");
        return $query->result();
    }

    public function getidbln($id)
	{
		$this->db->where('id_kasus',$id);
		$query = $this->db->get('t_total_perbln');
		return $query->row();
	}

    public function updatebln($data, $id)
	{
		$this->db->where('id_kasus',$id);
		$this->db->update('t_total_perbln',$data);
	}

    public function deletebln($id)
	{
		$this->db->where('id_kasus',$id);
		$this->db->delete('t_total_perbln');
	}

    public function getch(){
        $query = $this->db->query("SELECT
        t_ch.id_kasus, 
        t_ch.jumah_ch, 
        curah_hujan.tingkat_ch, 
        t_tahun.tahun, 
        t_kab_kota.nama_kab
    FROM
        t_ch
        INNER JOIN
        curah_hujan
        ON 
            t_ch.id_ch = curah_hujan.id_curah_hujan
        INNER JOIN
        t_tahun
        ON 
            t_ch.id_tahun = t_tahun.id_tahun
        INNER JOIN
        t_kab_kota
        ON 
            t_ch.id_kota = t_kab_kota.id_kab");
        return $query->result();
    }

    public function getidch($id)
	{
		$this->db->where('id_kasus',$id);
		$query = $this->db->get('t_ch');
		return $query->row();
	}
    
    public function updatech($data, $id)
	{
		$this->db->where('id_kasus',$id);
		$this->db->update('t_ch',$data);
	}

    public function deletech($id)
	{
		$this->db->where('id_kasus',$id);
		$this->db->delete('t_ch');
	}

}