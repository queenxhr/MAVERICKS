<!DOCTYPE html>
<html lang="en">
<style>
  .nav-headerkw {
	height : 300px;
  padding:0;
	margin: 0;
	list-style-type: none;
	display: flex;
	/*align-content: flex-end;*/
	/*justify-content: flex-end;*/
}
</style>
<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Mavericks - Data Kasus DBD Jawa Barat</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="<?php echo base_url ('assets/img/logoweb.png');?>" rel="icon">
  <link href="<?php echo base_url ('assets/img/apple-touch-icon.png');?>" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com');" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i')" rel="stylesheet">

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
          <a class="nav-link nav-icon" href="<?=site_url('c_mavericks/index')?>">
           <small><i class="bi bi-house"><small><small>Dashboard</small></small></i></small>
          </a><!-- End Notification Icon -->
        </li><!-- End Notification Nav -->

        <li class="nav-item dropdown">
          <a class="nav-link nav-icon" href="<?=site_url('c_mavericks/gotoSolusi')?>">
            <small><i class="bi bi-grid"><small><small>  Solusi</small></small></i></small>
          </a><!-- End Notification Icon -->
        </li><!-- End Notification Nav -->
        <li class="nav-item dropdown">
          <a class="nav-link nav-icon" href="<?=site_url('c_mavericks/gotokontak')?>">
            <small><i class="bi bi-envelope"><small><small>  Contact</small></small></i></small>
          </a><!-- End Notification Icon -->
        </li><!-- End Notification Nav -->
        <li class="nav-item dropdown">
          <a class="nav-link nav-icon" href="" data-bs-toggle="dropdown" >
            <small><i class="bi bi-layout-text-window-reverse"><small><small>  Admin</small></small></i></small>
          </a><!-- End Notification Icon -->
          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">

            <li>
              <a class="dropdown-item d-flex align-items-center" href="<?=site_url('c_mavericks/gotoAdmin')?>">
                <i class="bi bi-person"></i>
                <span>Kasus DBD</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="<?=site_url('c_mavericks/Kontak')?>">
                <i class="bi bi-gear"></i>
                <span>Contact</span>
              </a>
            </li>
            <!-- <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="pages-faq.html">
                <i class="bi bi-question-circle"></i>
                <span>Sembuh</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="#">
                <i class="bi bi-box-arrow-right"></i>
                <span>Kematian</span>
              </a>
            </li> -->
        </li><!-- End Notification Nav -->

        

      </ul>
    </nav><!-- End Icons Navigation -->

  </header><!-- End Header -->

<!-- ======= Sidebar ======= -->
<style>
.nyoba{
padding-left: 2%;
padding-right: 2%;

}
.gembel{
		text-align: justify;
}
</style>

<div class="nyoba">
<div id="main" class="pagetitle">
      
      </div>
  <section class="section dashboard">
    <h1>Solusi</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item active">Solusi</li>
        </ol>
      </nav>
      <section class="section">
    <section class="section">
      <div class="row">
        <div class="col-lg-12">

          <!-- Reports -->
          <div class="col-12">
            <div class="pagetitle">
                <header class="nav-headerkw">
                <img src="<?=base_url('assets/img/headersolusi.png')?>">
                </header>
            </div>

              <div class="card">

                

                <div class="card-body">
                  <br>
                  <p class="gembel">
                  Menghadapi musim penghujan, banyak persiapan yang harus dilakukan oleh seseorang. Selain peralatan fisik yang 
                  digunakan untuk melindungi diri dari hujan seperti payung dan jas hujan,  namun juga persiapan kondisi tubuh
                  agar terhindar dari penyakit yang biasa datang bersamaan dengan tingginya curah hujan.
                  </p>
                  <p class="gembel">
                  Terbentuknya genangan pada penampungan ataupun lubang-lubang akibat air hujan, merupakan salah satu hal 
                  yang dapat mengundang penyakit di musim penghujan seperti saat ini, salah satunya adalah demam berdarah
                  dengue. Demam berdarah dengue (DBD) merupakan penyakit yang terbentuk akibat dari adanya infeksi virus
                  dengue yang masuk kedalam tubuh melalui gigitan nyamuk Aedes aegypti.
                  </p>
                  <p class="gembel">
                  Berikut ini adalah beberapa langkah pencegahan sederhana yang dapat dilakukan agar terhindar dari penyakit
                  Demam Berdarah Dengue :
                  </p>
                  <p class="gembel">
                  1. Memasang kelambu pada tempat tidur maupun jendela <br>

                  2. Menerapkan program 3M, yaitu menguras, menutup, serta mendaur ulang<br>

                  3. Memperbanyak konsumsi vitamin C<br>

                  4. Memperoleh vaksin dengue setelah berkonsultasi dengan dokter.<br>
                  </p>
                  <p class="gembel">
                  Penerapan yang baik beberapa langkah diatas, merupakan kunci penting dalam meminimalisir kemungkinan
                  seseorang terpapar demam berdarah dengue selama musim penghujan seperti saat ini. Apabila mengalami gejala
                  penyakit demam berdarah seperti demam tinggi, mual, dan muncul ruam atau bintik merah dalam tubuh, segera
                  periksakan diri ke dokter atau tenaga kesehatan terdekat untuk mendapatkan penanganan yang cepat dan tepat.

                  </p>
                  <p class="gembel">
                  Tetap jaga protokol kesehatan 5M ketika beraktivitas dan bersegera dalam mendapatkan vaksinasi dosis primer
                  dan dosis lanjutan (Booster) untuk meminimalisir hospitalisasi, kematian, serta kemungkinan terburuk dari
                  paparan Covid-19.
                  </p>
                </div>

              </div>
            </div><!-- End Reports -->

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