<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class C_Mavericks extends CI_Controller {
	public function ceksignin(){
		$pass = $_POST['password'];
		$username = $_POST['username'];
		$temp['pass'] = $pass;
		$data_akun = $this->db->query("SELECT * from t_admin where username ='$username'")->row();
		$cacah = 1;
		$ada = 0;
		$pass_ver = password_verify($pass, $data_akun->pass);
		if(strcasecmp($username, $data_akun->username) === 0&&$pass_ver){
			$ada=1;
		}
		if ($ada == 1) {
			$this->session->set_userdata('id_admin',$data_akun->id);
			$this->session->set_flashdata('masuk', 1);
			redirect (base_url('/index.php/C_Mavericks/gotoAdmin'));
		} else {
			$this->session->set_flashdata('status',1);
			redirect (base_url('/index.php/C_Mavericks/gotologin'));
		} 
	}

	public function gotoKontak (){
		$this->load->view('V_Contact');
	}

	public function logout(){
		$this->session->set_flashdata('keluar',1);
		$this->session->unset_userdata('id_admin');
		redirect (base_url('/index.php/C_Mavericks/index'));
	}
	public function gotoKontak2(){
		$id = $_SESSION['id_admin'];
		$data_akun = $this->db->query("SELECT * from t_admin where id ='$id'")->row();
		$temp['username'] = $data_akun->username;
		$temp['posisi'] =  $data_akun->posisi;
		$temp['nama'] = $data_akun->nama;
		$this->load->view('V_Contact2', $temp);
	}
    
	public function gotologin(){
		if($this->session->flashdata('status')){
			echo '<script>alert("Gagal Sign In Pastikan Password dan Username Benar");</script>';
		}
		$this->load->view('v_login');
	}

	public function index() {
		if($this->session->flashdata('keluar')){
			echo '<script>alert("Berhasil  logout");</script>';
		}
			$data_ks_jk = $this->M_KasusJk->getAlljoin();
			$temp['ks_jenkel'] = $data_ks_jk; //data kasus berdasarkan jenis kelamin
			$data_ks_tu = $this->M_KasusTu->getAlljoin();
			$temp['ks_tu'] = $data_ks_tu; //data kasus berdasarkan tingkat umur
			$data_ks_koid = $this->M_KasusKs->getAlljoinK();
			$temp['ks_koid'] = $data_ks_koid; //data kasus kematian 
			$data_ks_sembuh = $this->M_KasusKs->getAlljoinS();
			$temp['ks_sembuh'] = $data_ks_sembuh; //data kasus sembuh

			$tahunMAx = $this->db->query("SELECT tahun as tahun_max from t_tahun where id_tahun = (SELECT max(id_tahun) from t_kasus_tu)")->row();
			$temp['taun'] = $tahunMAx->tahun_max;
			$data_tahun = $this->M_KasusTu->getsum();
			$temp['sum_tahun'] = $data_tahun->total_sum; // data total per tahun
			
			$mati = $this->M_KasusKs->summati();
			$temp['sum_mati'] = $mati->total_mati; // data total kematian
			
			$sembuh = $this->M_KasusKs->sumsembuh();
			$temp['sum_sembuh'] = $sembuh->total_sembuh; // data total sembuh

			$data_tseluruh = $this->M_Total->getAllkasus();
			$temp['all'] = $data_tseluruh; // data total kasus keseluruhan

			$data_perbln = $this->M_Total->getperbln();
			$temp['perbln'] = $data_perbln; // data total kasus per bulan

			$data_tch = $this->M_Total->getch();
			$temp['tch'] = $data_tch; //data total kasus berdasarkan curah hujan
			
			$this->load->view('v_dashboard', $temp);
	}
		
	public function index2() {
		$data_ks_jk = $this->M_KasusJk->getAlljoin();
		$temp['ks_jenkel'] = $data_ks_jk; //data kasus berdasarkan jenis kelamin
		$data_ks_tu = $this->M_KasusTu->getAlljoin();
		$temp['ks_tu'] = $data_ks_tu; //data kasus berdasarkan tingkat umur
		$data_ks_koid = $this->M_KasusKs->getAlljoinK();
		$temp['ks_koid'] = $data_ks_koid; //data kasus kematian 
		$data_ks_sembuh = $this->M_KasusKs->getAlljoinS();
		$temp['ks_sembuh'] = $data_ks_sembuh; //data kasus sembuh

		$tahunMAx = $this->db->query("SELECT tahun as tahun_max from t_tahun where id_tahun = (SELECT max(id_tahun) from t_kasus_tu)")->row();
		$temp['taun'] = $tahunMAx->tahun_max;
		$data_tahun = $this->M_KasusTu->getsum();
		$temp['sum_tahun'] = $data_tahun->total_sum; // data total per tahun
		
		$mati = $this->M_KasusKs->summati();
		$temp['sum_mati'] = $mati->total_mati; // data total kematian
		
		$sembuh = $this->M_KasusKs->sumsembuh();
		$temp['sum_sembuh'] = $sembuh->total_sembuh; // data total sembuh

		$data_tseluruh = $this->M_Total->getAllkasus();
		$temp['all'] = $data_tseluruh; // data total kasus keseluruhan

		$data_perbln = $this->M_Total->getperbln();
		$temp['perbln'] = $data_perbln; // data total kasus per bulan

		$data_tch = $this->M_Total->getch();
		$temp['tch'] = $data_tch; //data total kasus berdasarkan curah hujan
		
		$id = $_SESSION['id_admin'];
		$data_akun = $this->db->query("SELECT * from t_admin where id ='$id'")->row();
		$temp['username'] = $data_akun->username;
		$temp['posisi'] =  $data_akun->posisi;
		$temp['nama'] = $data_akun->nama;
		$this->load->view('v_dashboard2', $temp);
}

	public function gotoSolusi(){
		$this->load->view('v_solusi');
	}
	
	public function gotoSolusi2(){
		$id = $_SESSION['id_admin'];
		$data_akun = $this->db->query("SELECT * from t_admin where id ='$id'")->row();
		$temp['username'] = $data_akun->username;
		$temp['posisi'] =  $data_akun->posisi;
		$temp['nama'] = $data_akun->nama;
		$this->load->view('v_solusi2', $temp);
	}

	public function delkasusjk($id){
		$this->M_KasusJk->deleteJK($id);
			$this->session->set_flashdata('deleted',1);
			redirect (base_url('/index.php/C_Mavericks/gotoAdmin'));
	}
	public function updateformjk ($id){
		$createjk = $this->M_KasusJk->getJK($id);
		
		//memasukan data mitra ke dalam array
		$temp=array('data_jk'=>$createjk);
		$temp['id_jk'] = $id;

		$id = $_SESSION['id_admin'];
		$data_akun = $this->db->query("SELECT * from t_admin where id ='$id'")->row();
		$temp['username'] = $data_akun->username;
		$temp['posisi'] =  $data_akun->posisi;
		$temp['nama'] = $data_akun->nama;


		//membuka view update mitra dengan membawa data 
		$this->load->view('V_Updatejk', $temp);
	}

	public function updatekasusmt($id){
		//mnampilkan data yang ada, engambil seluruh variabel pada form
		$tahun = $this->input->post('id_tahun');
		$kota = $this->input->post('id_kota');
		$jumlah_kasus_ks = $this->input->post('jumlah_kasus_ks');

		//memasukkan data kedalam array
		$updateaction = array(
			'id_tahun' => $tahun,
			'id_kota' => $kota,
			'jumlah_kasus_ks' => $jumlah_kasus_ks
		);

		$this->M_KasusKs->updateKS($updateaction, $id);
		$this->session->set_flashdata('update', 1);
		redirect (base_url('/index.php/C_Mavericks/gotoAdmin'));
	}

	public function updatekasuss($id){
		//mnampilkan data yang ada, engambil seluruh variabel pada form
		$tahun = $this->input->post('id_tahun');
		$kota = $this->input->post('id_kota');
		$jumlah_kasus_ks = $this->input->post('jumlah_kasus_ks');

		//memasukkan data kedalam array
		$updateaction = array(
			'id_tahun' => $tahun,
			'id_kota' => $kota,
			'jumlah_kasus_ks' => $jumlah_kasus_ks
		);

		$this->M_KasusKs->updateKS($updateaction, $id);
		$this->session->set_flashdata('update', 1);
		redirect (base_url('/index.php/C_Mavericks/gotoAdmin'));
	}


	public function updateformmt ($id){
		$createks = $this->M_KasusKs->getKS($id);
		
		//memasukan data mitra ke dalam array
		$temp=array('data_ks'=>$createks);
		$temp['id_mt'] = $id;

		$id = $_SESSION['id_admin'];
		$data_akun = $this->db->query("SELECT * from t_admin where id ='$id'")->row();
		$temp['username'] = $data_akun->username;
		$temp['posisi'] =  $data_akun->posisi;
		$temp['nama'] = $data_akun->nama;

		//membuka view update mitra dengan membawa data 
		$this->load->view('V_Updatemt', $temp);
	}

	public function updateforms ($id){
		$createks = $this->M_KasusKs->getKS($id);
		
		//memasukan data mitra ke dalam array
		$temp=array('data_ks'=>$createks);
		$temp['id_se'] = $id;
		$id = $_SESSION['id_admin'];
		$data_akun = $this->db->query("SELECT * from t_admin where id ='$id'")->row();
		$temp['username'] = $data_akun->username;
		$temp['posisi'] =  $data_akun->posisi;
		$temp['nama'] = $data_akun->nama;

		//membuka view update mitra dengan membawa data 
		$this->load->view('V_UpdateS', $temp);
	}

	public function updateformtu ($id){
		$createtu = $this->M_KasusTu->getTU($id);
		
		//memasukan data mitra ke dalam array
		$temp=array('data_tu'=>$createtu);
		$temp['id_tu'] = $id;
		//membuka view update mitra dengan membawa data 
		$id = $_SESSION['id_admin'];
		$data_akun = $this->db->query("SELECT * from t_admin where id ='$id'")->row();
		$temp['username'] = $data_akun->username;
		$temp['posisi'] =  $data_akun->posisi;
		$temp['nama'] = $data_akun->nama;

		$this->load->view('V_Updatetu', $temp);
	}

	public function updatekasustu($id){
		//mnampilkan data yang ada, engambil seluruh variabel pada form
		$tahun = $this->input->post('id_tahun');
		$kota = $this->input->post('id_kota');
		$tingkat = $this->input->post('id_tingkat');
		$jumlah_kasus_tu = $this->input->post('jumlah_kasus_tu');

		//memasukkan data kedalam array
		$updateaction = array(
			'id_tahun' => $tahun,
			'id_kota' => $kota,
			'id_tingkat' => $tingkat,
			'jumlah_kasus_tu' => $jumlah_kasus_tu
		);

		$this->M_KasusTu->updateTU($updateaction, $id);
		$this->session->set_flashdata('update', 1);
		redirect (base_url('/index.php/C_Mavericks/gotoAdmin'));
	}
	
	public function updateformtotkota ($id){
		$createtotkota = $this->M_Total->getidkt($id);
		
		//memasukan data mitra ke dalam array
		$temp=array('data_totkota'=>$createtotkota);
		$temp['id_kt'] = $id;
		$id = $_SESSION['id_admin'];
		$data_akun = $this->db->query("SELECT * from t_admin where id ='$id'")->row();
		$temp['username'] = $data_akun->username;
		$temp['posisi'] =  $data_akun->posisi;
		$temp['nama'] = $data_akun->nama;

		//membuka view update mitra dengan membawa data 
		$this->load->view('V_UpdateTotKota', $temp);
	}

	public function updatekasustotkota($id){
		//mnampilkan data yang ada, engambil seluruh variabel pada form
		$kota = $this->input->post('id_kota');
		$tahun = $this->input->post('id_tahun');
		$jumtot = $this->input->post('jum_total');

		//memasukkan data kedalam array
		$updateaction = array(
			'id_kota' => $kota,
			'id_tahun' => $tahun,
			'jum_total' => $jumtot,
		);

		$this->M_Total->updatekt($updateaction, $id);
		$this->session->set_flashdata('update', 1);
		redirect (base_url('/index.php/C_Mavericks/gotoAdmin'));
	}

	public function updateformtotch ($id){
		$createtotch = $this->M_Total->getidch($id);
		
		//memasukan data mitra ke dalam array
		$temp=array('data_totch'=>$createtotch);
		$temp['id_ch'] = $id;
		$id = $_SESSION['id_admin'];
		$data_akun = $this->db->query("SELECT * from t_admin where id ='$id'")->row();
		$temp['username'] = $data_akun->username;
		$temp['posisi'] =  $data_akun->posisi;
		$temp['nama'] = $data_akun->nama;

		//membuka view update mitra dengan membawa data 
		$this->load->view('V_UpdateTotCh', $temp);
	}

	public function updatekasustotch($id){
		//mnampilkan data yang ada, engambil seluruh variabel pada form
		$tahun = $this->input->post('id_tahun');
		$kota = $this->input->post('id_kota');
		$ich = $this->input->post('id_ch');
		$jumch = $this->input->post('jumah_ch');

		//memasukkan data kedalam array
		$updateaction = array(
			
			'id_kota' => $kota,
			'id_tahun' => $tahun,
			'id_ch' => $ich,
			'jumah_ch' => $jumch,
		);

		$this->M_Total->updatech($updateaction, $id);
		$this->session->set_flashdata('update', 1);
		redirect (base_url('/index.php/C_Mavericks/gotoAdmin'));
	}

	public function updateformtotbln ($id){
		$createtotbln = $this->M_Total->getidbln($id);
		
		//memasukan data mitra ke dalam array
		$temp['data_totbln']=$createtotbln;
		$temp['id_tb'] = $id;
		$id = $_SESSION['id_admin'];
		$data_akun = $this->db->query("SELECT * from t_admin where id ='$id'")->row();
		$temp['username'] = $data_akun->username;
		$temp['posisi'] =  $data_akun->posisi;
		$temp['nama'] = $data_akun->nama;

		//membuka view update mitra dengan membawa data 
		$this->load->view('V_UpdateTotBln', $temp);
	}

	public function updatekasustotbln($id){
		//mnampilkan data yang ada, engambil seluruh variabel pada form
		$bln = $this->input->post('id_bln');
		$tahun = $this->input->post('id_tahun');
		$jumkas = $this->input->post('jumlah_kasus');

		//memasukkan data kedalam array
		$updateaction = array(
			'id_bln' => $bln,
			'id_tahun' => $tahun,
			'jumlah_kasus' => $jumkas,
		);

		$this->M_Total->updatebln($updateaction, $id);
		$this->session->set_flashdata('update', 1);
		redirect (base_url('/index.php/C_Mavericks/gotoAdmin'));
	}
	
	public function delkasusks($id){
		$this->M_KasusKs->deleteKS($id);
		//mengarahkan kembali ke tampilan semula
		$this->session->set_flashdata('deleted', 1);
		redirect (base_url('/index.php/C_Mavericks/gotoAdmin'));
	}

	public function delkasustu($id){
		$this->M_KasusTu->deleteTU($id);
		//mengarahkan kembali ke tampilan semula
		$this->session->set_flashdata('deleted', 1);
		redirect (base_url('/index.php/C_Mavericks/gotoAdmin'));
	}

	public function createActionJK(){
		$bln = $this->input->post('id_bln');
		$tahun = $this->input->post('id_tahun');
		$kota = $this->input->post('id_kota');
		$ch = $this->input->post('id_ch');
		$jk = $this->input->post('id_jk');
		$jumlah_kasus_jk = $this->input->post('jumlah_kasus_jk');
		$jml_ch = $this->input->post('jml_ch');

		//memasukkan data kedalam array
		$createaction = array(
			'id_bln' => $bln,
			'id_tahun' => $tahun,
			'id_kota' => $kota,
			'id_ch' => $ch,
			'id_jk' => $jk,
			'jumlah_kasus_jk' => $jumlah_kasus_jk,
			'jml_ch' => $jml_ch
		);
		print_r($createaction);
		$this->M_KasusJk->insertJK($createaction);
		$this->session->set_flashdata('create', 1);
		redirect (base_url('/index.php/C_Mavericks/gotoAdmin'));
	}

	public function createActionK(){
		//mnampilkan data yang ada, engambil seluruh variabel pada form
		$tahun = $this->input->post('id_tahun');
		$kota = $this->input->post('id_kota');
		$ks = 1;
		$jumlah_kasus_ks = $this->input->post('jumlah_kasus_jk');

		//memasukkan data kedalam array
		$createaction = array(
			'id_tahun' => $tahun,
			'id_kota' => $kota,
			'id_ks' => $ks,
			'jumlah_kasus_ks' => $jumlah_kasus_ks,
		);

		$this->M_KasusKs->insertKS($createaction);
		$this->session->set_flashdata('create', 1);
		redirect (base_url('/index.php/C_Mavericks/gotoAdmin'));
	}
	public function createActionS(){
		//mnampilkan data yang ada, engambil seluruh variabel pada form
		$tahun = $this->input->post('id_tahun');
		$kota = $this->input->post('id_kota');
		$ks = 2;
		$jumlah_kasus_ks = $this->input->post('jumlah_kasus_jk');

		//memasukkan data kedalam array
		$createaction = array(
			'id_tahun' => $tahun,
			'id_kota' => $kota,
			'id_ks' => $ks,
			'jumlah_kasus_ks' => $jumlah_kasus_ks,
		);

		$this->M_KasusKs->insertKS($createaction);
		$this->session->set_flashdata('create', 1);
		redirect (base_url('/index.php/C_Mavericks/gotoAdmin'));
	}


	public function createActionTU(){
		//mnampilkan data yang ada, engambil seluruh variabel pada form
		$tahun = $this->input->post('id_tahun');
		$kota = $this->input->post('id_kota');
		$tingkat = $this->input->post('id_tingkat');
		$jumlah_kasus_tu = $this->input->post('jumlah_kasus_tu');

		//memasukkan data kedalam array
		$createaction = array(
			'id_tahun' => $tahun,
			'id_kota' => $kota,
			'id_tingkat' => $tingkat,
			'jumlah_kasus_tu' => $jumlah_kasus_tu,
		);

		$this->session->set_flashdata('create', 1);
		$this->M_KasusTu->insertTU($createaction);
		redirect (base_url('/index.php/C_Mavericks/gotoAdmin'));
	}

	public function gotoAdmin(){
		if($this->session->flashdata('masuk')){
			echo '<script>alert("Berhasil Sign in");</script>';
		}else if($this->session->flashdata('create')){
			echo '<script>alert("Selamat Data Berhasil Ditambahkan");</script>';
		  }
		  else if($this->session->flashdata('deleted')){
			echo '<script>alert("Selamat Data Berhasil Dihapus");</script>';
		  }
		  else if($this->session->flashdata('update')){
			echo '<script>alert("Selamat Data Berhasil Di-update");</script>';
		  }

		$data_tseluruh = $this->M_Total->getAllkasus();
			$temp['all'] = $data_tseluruh; // data total kasus keseluruhan

		$data_perbln = $this->M_Total->getperbln();
		$temp['perbln'] = $data_perbln; // data total kasus per bulan

			$data_tch = $this->M_Total->getch();
			$temp['tch'] = $data_tch; //data total kasus berdasarkan curah hujan

		$data_ks_jk = $this->M_KasusJk->getAlljoin();
		$temp['ks_jenkel'] = $data_ks_jk;
		$data_ks_tu = $this->M_KasusTu->getAlljoin();
		$temp['ks_tu'] = $data_ks_tu;
		$data_ks_koid = $this->M_KasusKs->getAlljoinK();
		$temp['ks_koid'] = $data_ks_koid;
		$data_ks_sembuh = $this->M_KasusKs->getAlljoinS();
		$temp['ks_sembuh'] = $data_ks_sembuh;

		$id = $_SESSION['id_admin'];
		$data_akun = $this->db->query("SELECT * from t_admin where id ='$id'")->row();
		$temp['username'] = $data_akun->username;
		$temp['posisi'] =  $data_akun->posisi;
		$temp['nama'] = $data_akun->nama;

		$this->load->view('V_Admin',$temp);
	}

	public function createdatajk(){
		//membuka view create form dan menampilkannya
		$id = $_SESSION['id_admin'];
		$data_akun = $this->db->query("SELECT * from t_admin where id ='$id'")->row();
		$temp['username'] = $data_akun->username;
		$temp['posisi'] =  $data_akun->posisi;
		$temp['nama'] = $data_akun->nama;

		$this->load->view('V_Createjk', $temp);
	}

	public function createdatas(){
		//membuka view create form dan menampilkannya
		$id = $_SESSION['id_admin'];
		$data_akun = $this->db->query("SELECT * from t_admin where id ='$id'")->row();
		$temp['username'] = $data_akun->username;
		$temp['posisi'] =  $data_akun->posisi;
		$temp['nama'] = $data_akun->nama;

		$this->load->view('V_CreateS', $temp);
	}
	public function createdatak(){
		//membuka view create form dan menampilkannya
		$id = $_SESSION['id_admin'];
		$data_akun = $this->db->query("SELECT * from t_admin where id ='$id'")->row();
		$temp['username'] = $data_akun->username;
		$temp['posisi'] =  $data_akun->posisi;
		$temp['nama'] = $data_akun->nama;

		$this->load->view('V_Createmt', $temp);
	}
	public function createdatatu(){
		//membuka view create form dan menampilkannya
		$id = $_SESSION['id_admin'];
		$data_akun = $this->db->query("SELECT * from t_admin where id ='$id'")->row();
		$temp['username'] = $data_akun->username;
		$temp['posisi'] =  $data_akun->posisi;
		$temp['nama'] = $data_akun->nama;

		$this->load->view('V_CreateTU', $temp);
	}

	public function getajaxkab() {
        $data = $this->M_Kab->getAll();

        // Buat array kosong untuk menyimpan data kabupaten
        $kabupaten = array();

        // Loop melalui data yang diperoleh dari model
        foreach ($data as $row) {
            // Masukkan id dan nama ke dalam array data
            $kabupaten[] = array("id_kab" => $row->id_kab, "nama_kab" => $row->nama_kab);
        }

        // Generate kode JSON
        echo json_encode($kabupaten);
    }

	public function getajaxbln() {
        $data = $this->M_Kab->getAllbln();

        // Buat array kosong untuk menyimpan data kabupaten
        $bulan = array();

        // Loop melalui data yang diperoleh dari model
        foreach ($data as $row) {
            // Masukkan id dan nama ke dalam array data
            $bulan[] = array("id_bulan" => $row->id_bulan, "nama_bulan" => $row->nama_bulan);
        }

        // Generate kode JSON
        echo json_encode($bulan);
    }

	public function getajaxch() {
        $data = $this->M_Kab->getAllch();

        // Buat array kosong untuk menyimpan data kabupaten
        $ch = array();

        // Loop melalui data yang diperoleh dari model
        foreach ($data as $row) {
            // Masukkan id dan nama ke dalam array data
            $ch[] = array("id_curah_hujan" => $row->id_curah_hujan, "tingkat_ch" => $row->tingkat_ch);
        }

        // Generate kode JSON
        echo json_encode($ch);
    }

	public function kontak() {
		$dt = $this -> M_Contact -> getAll ();

		//menampung data 
		$temp['data'] = $dt;
		$id = $_SESSION['id_admin'];
		$data_akun = $this->db->query("SELECT * from t_admin where id ='$id'")->row();
		$temp['username'] = $data_akun->username;
		$temp['posisi'] =  $data_akun->posisi;
		$temp['nama'] = $data_akun->nama;

		//membuka view mitra dnegan membawa data temp
		$this -> load -> view ('V_Datakontak', $temp);
	}


	public function createActionContact(){
		//menampung data inputan perusahaan yang telah dimasukan user
		$nama_pengirim = $this->input->post('nama_pengirim');
		$email = $this->input->post('email');
		$isi_pesan = $this->input->post('isi_pesan');
		$subjek_pesan = $this->input->post('subjek_pesan');

		//memasukan data kedalam array
		$createaction = array(
			'nama_pengirim' => $nama_pengirim,
			'isi_pesan' => $isi_pesan,
			'subjek_pesan' => $subjek_pesan,
			'email' => $email,
		);

		$this->M_Contact->insertPesan($createaction);
		//mengarahkan kembali ke tampilan semula
		$this->session->set_flashdata('create', 1);
		redirect (base_url('/index.php/C_Mavericks/kontak'));
	}
	
	public function updatekasusjk($id){
		// Mengambil data yang ada, mengambil seluruh variabel pada form
		$bln = $this->input->post('id_bln');
		$tahun = $this->input->post('id_tahun');
		$kota = $this->input->post('id_kota');
		$ch = $this->input->post('id_ch');
		$jk = $this->input->post('id_jk');
		$jumlah_kasus_jk = $this->input->post('jumlah_kasus_jk');
		$jml_ch = $this->input->post('jml_ch');
		
	   // Memasukkan data ke dalam array
		$updateaction = array(
		'id_bln' => $bln,
		'id_tahun' => $tahun,
		'id_kota' => $kota,
		'id_ch' => $ch,
		'id_jk' => $jk,
		'jumlah_kasus_jk' => $jumlah_kasus_jk,
		'jml_ch' => $jml_ch
		);
		
	   // Melakukan pembaruan data
		$this->M_KasusJk->updateJK($updateaction, $id);
		$this->session->set_flashdata('update', 1);
		redirect (base_url('/index.php/C_Mavericks/gotoAdmin'));
		}
	   
		public function delkasustotkota($id){
			$this->M_Total->deletekt($id);
			//mengarahkan kembali ke tampilan semula
			$this->session->set_flashdata('deleted', 1);
			redirect (base_url('/index.php/C_Mavericks/gotoAdmin'));
		}

		public function delkasustotbln($id){
			$this->session->set_flashdata('deleted', 1);
			$this->M_Total->deletebln($id);
			//mengarahkan kembali ke tampilan semula
			redirect (base_url('/index.php/C_Mavericks/gotoAdmin'));
		}

		public function delkasustotch($id){
			$this->session->set_flashdata('deleted', 1);
			$this->M_Total->deletech($id);
			//mengarahkan kembali ke tampilan semula
			redirect (base_url('/index.php/C_Mavericks/gotoAdmin'));
		}

}
