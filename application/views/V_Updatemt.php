<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Mavericks - Data Kasus DBD Jawa Barat</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="<?php echo base_url ('assets/img/favicon.png');?>" rel="icon">
  <link href="<?php echo base_url ('assets/img/apple-touch-icon.png');?>" rel="apple-touch-icon">

 
  <!-- Google Fonts -->
  <link href="'https://fonts.gstatic.com');" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i');" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="<?php echo base_url ('assets/vendor/bootstrap/css/bootstrap.min.css');?>" rel="stylesheet">
  <link href="<?php echo base_url ('assets/vendor/bootstrap-icons/bootstrap-icons.css');?>" rel="stylesheet">
  <link href="<?php echo base_url ('assets/vendor/boxicons/css/boxicons.min.css');?>" rel="stylesheet">
  <link href="<?php echo base_url ('assets/vendor/quill/quill.snow.css');?>" rel="stylesheet">
  <link href="<?php echo base_url ('assets/vendor/quill/quill.bubble.css');?>" rel="stylesheet">
  <link href="<?php echo base_url ('assets/vendor/remixicon/remixicon.css');?>" rel="stylesheet">
  <link href="<?php echo base_url ('assets/vendor/simple-datatables/style.css');?>" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="<?php echo base_url ('assets/css/style.css');?>" rel="stylesheet">



   <!-- skrip bootstrap dan script jquery -->
	<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3 0-alpha3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

  <!-- skrip bootstrap dan script jquery -->
	<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3 0-alpha3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ENjdO4Dr2bkBIFxQpeoTz1HIcje39Wm4jDKdf19U8gI4ddQ3GYNS7NTKfAdVQSZe"crossorigin="anonymous"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <!-- =======================================================
  * Template Name: NiceAdmin
  * Updated: Mar 09 2023 with Bootstrap v5.2.3
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <a href="index.html" class="logo d-flex align-items-center">
      <img src="<?=base_url('assets/img/logoweb.png')?>">
        <span class="d-none d-lg-block">MAVERICKS</span>
      </a>
    </div><!-- End Logo -->

    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">

        <li class="nav-item d-block d-lg-none">
          <a class="nav-link nav-icon search-bar-toggle " href="#">
            <i class="bi bi-search"></i>
          </a>
        </li><!-- End Search Icon-->

        <li class="nav-item dropdown">
          <a class="nav-link nav-icon" href="<?=site_url('c_mavericks/index2')?>">
           <small><i class="bi bi-house"><small><small>Dashboard</small></small></i></small>
          </a><!-- End Notification Icon -->
        </li><!-- End Notification Nav -->

        <li class="nav-item dropdown">
          <a class="nav-link nav-icon" href="<?=site_url('c_mavericks/gotoSolusi2')?>">
            <small><i class="bi bi-grid"><small><small>  Solusi</small></small></i></small>
          </a><!-- End Notification Icon -->
        </li><!-- End Notification Nav -->
        <li class="nav-item dropdown">
          <a class="nav-link nav-icon" href="<?=site_url('c_mavericks/gotokontak2')?>">
            <small><i class="bi bi-envelope"><small><small>  Contact</small></small></i></small>
          </a><!-- End Notification Icon -->
        </li><!-- End Notification Nav -->
        <li class="nav-item dropdown">
          <a class="nav-link nav-icon" href="" data-bs-toggle="dropdown" >
            <small><i class="bi bi-layout-text-window-reverse"><small><small>  Admin</small></small></i></small>
          </a><!-- End Notification Icon -->
          
          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
          <li class="dropdown-header">
              <h6><?=$nama?></h6>
              <span><?=$posisi?></span>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>
            <li>
              <a class="dropdown-item d-flex align-items-center" href="<?=site_url('c_mavericks/gotoAdmin')?>">
                <i class="bi bi-bandaid"></i>
                <span>Kasus DBD</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>
            
            <li>
              <a class="dropdown-item d-flex align-items-center" href="<?=site_url('c_mavericks/Kontak')?>">
                <i class="bi bi-envelope"></i>
                <span>Contact</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>
            
            <li>
              <a class="dropdown-item d-flex align-items-center" href="#">
                <i class="bi bi-person"></i>
                <span>Profile</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="<?=site_url('C_Mavericks/logout')?>" onclick="return confirm('Are u sure u want to logout??')">
              <i class="bi bi-box-arrow-right"></i>
                <span>Logout</span>
              </a>
            </li>
        </li><!-- End Notification Nav -->

        

      </ul>
    </nav><!-- End Icons Navigation -->

  </header><!-- End Header -->
  <style>
    .nyoba{
      padding-left: 2%;
padding-right: 2%;
	}
  </style>

  <div class="nyoba">
  <div id="main" class="pagetitle">
    </div><!-- End Page Title -->
    
    <section class="section">
      <div class="row">
        <div class="col-lg-12">
        <div style="margin-left: 97%;;">
                        <a href="<?=site_url('c_mavericks/gotoAdmin')?>" ><svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-x" viewBox="0 0 16 16">
              <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
            </svg></a></div>
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Form Update Kasus Kematian</h5>

               <!-- Multi Columns Form -->
               <form class="row g-3" action="<?php echo site_url('c_mavericks/updatekasusmt/') .$id_mt?>"method="post"id="update-form">
                <div class="col-md-6">
                  <label for="inputZip" class="form-label">Tahun</label>
                  <select class="form-control"  name="id_tahun">
                    <option value="1" <?php if ($data_ks->id_tahun == 1) echo 'selected'; ?>>2019</option>
                    <option value="2" <?php if ($data_ks->id_tahun == 2) echo 'selected'; ?>>2020</option>
                    <option value="3" <?php if ($data_ks->id_tahun == 3) echo 'selected'; ?>>2021</option>
                  </select>
                </div>
                <div class="col-md-6">
                  <label for="inputZip" class="form-label">Kabupaten/Kota</label>
                  <select class="form-control"  name="id_kota">
                    <option value="1" <?php if ($data_ks->id_kota == 1) echo 'selected'; ?>>KABUPATEN BOGOR</option>
                    <option value="2" <?php if ($data_ks->id_kota == 2) echo 'selected'; ?>>KABUPATEN SUKABUMI</option>
                    <option value="3" <?php if ($data_ks->id_kota == 3) echo 'selected'; ?>>KABUPATEN CIANJUR</option>
                    <option value="4" <?php if ($data_ks->id_kota == 4) echo 'selected'; ?>>KABUPATEN BANDUNG</option>
                    <option value="5" <?php if ($data_ks->id_kota == 5) echo 'selected'; ?>>KABUPATEN GARUT</option>
                    <option value="6" <?php if ($data_ks->id_kota == 6) echo 'selected'; ?>>KABUPATEN TASIKMALAYA</option>
                    <option value="7" <?php if ($data_ks->id_kota == 7) echo 'selected'; ?>>KABUPATEN CIAMIS</option>
                    <option value="8" <?php if ($data_ks->id_kota == 8) echo 'selected'; ?>>KABUPATEN KUNINGAN</option>
                    <option value="9" <?php if ($data_ks->id_kota == 9) echo 'selected'; ?>>KABUPATEN CIREBON</option>
                    <option value="10" <?php if ($data_ks->id_kota == 10) echo 'selected'; ?>>KABUPATEN MAJALENGKA</option>
                    <option value="11" <?php if ($data_ks->id_kota == 11) echo 'selected'; ?>>KABUPATEN SUMEDANG</option>
                    <option value="12" <?php if ($data_ks->id_kota == 12) echo 'selected'; ?>>KABUPATEN INDRAMAYU</option>
                    <option value="13" <?php if ($data_ks->id_kota == 13) echo 'selected'; ?>>KABUPATEN SUBANG</option>
                    <option value="14" <?php if ($data_ks->id_kota == 14) echo 'selected'; ?>>KABUPATEN PURWAKARTA</option>
                    <option value="15" <?php if ($data_ks->id_kota == 15) echo 'selected'; ?>>KABUPATEN KARAWANG</option>
                    <option value="16" <?php if ($data_ks->id_kota == 16) echo 'selected'; ?>>KABUPATEN BEKASI</option>
                    <option value="17" <?php if ($data_ks->id_kota == 17) echo 'selected'; ?>>KABUPATEN BANDUNG BARAT</option>
                    <option value="18" <?php if ($data_ks->id_kota == 18) echo 'selected'; ?>>KABUPATEN PANGANDARAN</option>
                    <option value="19" <?php if ($data_ks->id_kota == 19) echo 'selected'; ?>>KOTA BOGOR</option>
                    <option value="20" <?php if ($data_ks->id_kota == 20) echo 'selected'; ?>>KOTA SUKABUMI</option>
                    <option value="21" <?php if ($data_ks->id_kota == 21) echo 'selected'; ?>>KOTA BANDUNG</option>
                    <option value="22" <?php if ($data_ks->id_kota == 22) echo 'selected'; ?>>KOTA CIREBON</option>
                    <option value="23" <?php if ($data_ks->id_kota == 23) echo 'selected'; ?>>KOTA BEKASI</option>
                    <option value="24" <?php if ($data_ks->id_kota == 24) echo 'selected'; ?>>KOTA DEPOK</option>
                    <option value="25" <?php if ($data_ks->id_kota == 25) echo 'selected'; ?>>KOTA CIMAHI</option>
                    <option value="26" <?php if ($data_ks->id_kota == 26) echo 'selected'; ?>>KOTA TASIKMALAYA</option>
                    <option value="27" <?php if ($data_ks->id_kota == 27) echo 'selected'; ?>>KOTA BANJAR</option>
                  </select>
                </div> 
                <div class="col-6">
                  <label for="inputAddress2" class="form-label">Jumlah Kasus</label>
                  <input type="text" class="form-control" value="<?php echo $data_ks->jumlah_kasus_ks?>" name="jumlah_kasus_ks">
                </div>
                <div class="text-center">
                  <button type="submit" class="btn btn-primary">Submit</button>
                  <button type="button" onclick="location.href='<?php echo base_url('/index.php/C_Mavericks/gotoAdmin')?>';" class="btn btn-secondary">Cancel</button>
                </div>
              </form><!-- End Multi Columns Form -->

            </div>
          </div>



        </div>
      </div>
    </section>
</div>
  <!-- ======= Footer ======= -->
  <footer  class="footer">
    <div class="copyright">
      &copy; Copyright <strong><span>Mavericks</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
      <!-- All the links in the footer should remain intact. -->
      <!-- You can delete the links only if you purchased the pro version. -->
      <!-- Licensing information: https://bootstrapmade.com/license/ -->
      <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
      Designed by <a href="https://bootstrapmade.com/">Mavericks</a>
    </div>
  </footer><!-- End Footer -->

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
 <!-- Vendor JS Files -->
 <script src="<?=base_url('assets/vendor/apexcharts/apexcharts.min.js')?>"></script>
  <script src="<?=base_url('assets/vendor/bootstrap/js/bootstrap.bundle.min.js')?>"></script>
  <script src="<?=base_url('assets/vendor/chart.js/chart.umd.js')?>"></script>
  <script src="<?=base_url('assets/vendor/echarts/echarts.min.js')?>"></script>
  <script src="<?=base_url('assets/vendor/quill/quill.min.js')?>"></script>
  <script src="<?=base_url ('assets/vendor/simple-datatables/simple-datatables.js')?>"></script>
  <script src="<?=base_url('assets/vendor/tinymce/tinymce.min.js')?>"></script>
  <script src="<?=base_url('assets/vendor/php-email-form/validate.js')?>"></script>

  <!-- Template Main JS File -->
  <script src="<?=base_url('assets/js/main.js')?>"></script>
</body>

</html>