<!DOCTYPE html>
<html lang="en">

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

  <!-- ======= Sidebar ======= -->
  <style>
    .nyoba{
      padding-left: 2%;
padding-right: 2%;
	}
  </style>

  <div class="nyoba">

  <div id="main" class="pagetitle">
      
    </div><!-- End Page Title -->
    <!-- </main>End #main -->
    <section class="section dashboard">
    <h1>Dashboard</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item active">Dashboard</li>
        </ol>
      </nav>
      <section class="section">
      <div class="row">
        <div class="col-lg-12">
  

          <div class="row">
            <!-- Customers Card -->
            <div class="col-xxl-4 col-md-4">

              <div class="card info-card customers-card">

                <div class="card-body">
                  <h5 class="card-title">Total Kasus <span>| <?=$taun?></span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-people"></i>
                    </div>
                    <div class="ps-3">
                    <h6><?= $sum_tahun; ?></h6>
                    <span class="text-muted small pt-2 ps-1">Kasus</span>
                      <span class="text-danger small pt-1 fw-bold">Terkonfirmasi</span>
                  </div>
                  </div>

                </div>
              </div>

            </div><!-- End Customers Card -->
<!-- Sales Card -->
<div class="col-xxl-4 col-md-4">
              <div class="card info-card sales-card">
                <div class="card-body">
                  <h5 class="card-title">Kematian <span>| <?=$taun?></span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <img src="<?=base_url('assets/img/mati.png')?>" alt="">
                    </div>
                    <div class="ps-3">
                    <h6><?= $sum_mati; ?></h6>
                    <span class="text-muted small pt-2 ps-1">Kasus</span>
                    <span class="text-danger small pt-1 fw-bold">Meninggal Dunia</span>

                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Sales Card -->

            <!-- Revenue Card -->
            <div class="col-xxl-4 col-md-4">
              <div class="card info-card revenue-card">
                <div class="card-body">
                  <h5 class="card-title">Sembuh<span>| <?=$taun?></span></h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                    <img width="50" height="50" src="https://img.icons8.com/external-filled-outline-geotatah/64/external-cure-alzheimers-disease-symbol-color-filled-outline-geotatah.png" alt="external-cure-alzheimers-disease-symbol-color-filled-outline-geotatah"/>
                    </div>
                    <div class="ps-3">
                    <h6><?= $sum_sembuh; ?></h6>
                     <span class="text-muted small pt-2 ps-1">Kasus</span> <span class="text-success small pt-1 fw-bold">Sembuh</span> 

                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Revenue Card -->
            
            </div>

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Data Kasus DBD berdasarkan Jenis Kelamin</h5>
              <p>Berikut ini merupakan database dari kasus demam berdarah dengue berdasarkan jenis kelamin yang ada di Jawa Barat.

              <!-- Table with stripped rows -->
              <table class="table datatable">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Nama Kabupaten/ Kota</th>
                      <th scope="col">Jenis Kelamin</th>
                      <th scope="col">Jumlah Kasus</th>
                      <th scope="col">Bulan</th>
                      <th scope="col">Tahun</th>
                      <th scope="col">Jumlah Curah Hujan</th>
                  </tr>
                </thead>
                <tbody>
                    <?php
                    $cacah = 1;
                    foreach ($ks_jenkel as $jk) {
                    ?>
                    <tr>
                      <th scope="row"><?=$cacah?></th>
                      <td><?=$jk->nama_kab?></td>
                      <td><?=$jk->jenis_kelamin?></td>
                        <td><?=$jk->jumlah_kasus_jk?></td>
                        <td><?=$jk->nama_bulan?></td>
                        <td><?=$jk->tahun?></td>
                        <td><?=$jk->jml_ch?></td>
                      </tr>

                      <?php
                        $cacah++;
                      }
                      ?>
                </tbody>
              </table>
              <!-- End Table with stripped rows -->

            </div>
          </div>
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Data Kasus DBD berdasarkan Tingkat Umur</h5>
              <p>Berikut ini merupakan database dari kasus demam berdarah dengue berdasarkan tingkat umur yang ada di Jawa Barat.

              <!-- Table with stripped rows -->
              <table class="table datatable">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Nama Kabupaten/ Kota</th>
                      <th scope="col">Tingkat Usia</th>
                      <th scope="col">Jumlah Kasus</th>
                      <th scope="col">Tahun</th>
                  </tr>
                </thead>
                <tbody>
                    <?php
                    $cacah = 1;
                    foreach ($ks_tu as $tu) {
                    ?>
                    <tr>
                      <th scope="row"><?=$cacah?></th>
                      <td><?=$tu->nama_kab?></td>
                      <td><?=$tu->jenis_tingkat?></td>
                        <td><?=$tu->jumlah_kasus_tu?></td>
                        <td><?=$tu->tahun?></td>
                      </tr>

                      <?php
                        $cacah++;
                      }
                      ?>
                </tbody>
              </table>
              <!-- End Table with stripped rows -->

            </div>
          </div>
        
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Data Kasus Kematian DBD</h5>
              <p>Berikut ini merupakan database dari kasus kematian demam berdarah dengue yang ada di Jawa Barat.

              <!-- Table with stripped rows -->
              <table class="table datatable">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Nama Kabupaten/ Kota</th>
                      <th scope="col">Jenis Kasus</th>
                      <th scope="col">Jumlah Kasus</th>
                      <th scope="col">Tahun</th>
                  </tr>
                </thead>
                <tbody>
                    <?php
                    $cacah = 1;
                    foreach ($ks_koid as $koid) {
                    ?>
                    <tr>
                      <th scope="row"><?=$cacah?></th>
                      <td><?=$koid->nama_kab?></td>
                      <td><?=$koid->jenis_kasus?></td>
                        <td><?=$koid->jumlah_kasus_ks?></td>
                        <td><?=$koid->tahun?></td>
                      </tr>

                      <?php
                        $cacah++;
                      }
                      ?>
                </tbody>
              </table>
              <!-- End Table with stripped rows -->

            </div>
          </div>

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Data Kasus Sembuh DBD</h5>
              <p>Berikut ini merupakan database dari kasus sembuh demam berdarah dengue yang ada di Jawa Barat.

              <!-- Table with stripped rows -->
              <table class="table datatable">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Nama Kabupaten/ Kota</th>
                      <th scope="col">Jenis Kasus</th>
                      <th scope="col">Jumlah Kasus</th>
                      <th scope="col">Tahun</th>
                  </tr>
                </thead>
                <tbody>
                    <?php
                    $cacah = 1;
                    foreach ($ks_sembuh as $sbh) {
                    ?>
                    <tr>
                      <th scope="row"><?=$cacah?></th>
                      <td><?=$sbh->nama_kab?></td>
                      <td><?=$sbh->jenis_kasus?></td>
                        <td><?=$sbh->jumlah_kasus_ks?></td>
                        <td><?=$sbh->tahun?></td>
                      </tr>

                      <?php
                        $cacah++;
                      }
                      ?>
                </tbody>
              </table>
              <!-- End Table with stripped rows -->
            </div>
          </div>

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Data Kasus DBD PerKOta</h5>
              <p>Berikut ini merupakan database dari kasus sembuh demam berdarah dengue yang ada di Jawa Barat.

              <!-- Table with stripped rows -->
              <table class="table datatable">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Nama Kabupaten/ Kota</th>
                    <th scope="col">Tahun</th>
                    <th scope="col">Jumlah Kasus</th>
                  </tr>
                </thead>
                <tbody>
                    <?php
                    $cacah = 1;
                    foreach ($all as $sbh) {
                    ?>
                    <tr>
                      <th scope="row"><?=$cacah?></th>
                      <td><?=$sbh->nama_kab?></td>
                      <td><?=$sbh->tahun?></td>
                      <td><?=$sbh->jum_total?></td>
                      </tr>

                      <?php
                        $cacah++;
                      }
                      ?>
                </tbody>
              </table>
              <!-- End Table with stripped rows -->
            </div>
          </div>
          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Data Kasus DBD PerBulan</h5>
              <p>Berikut ini merupakan database dari kasus sembuh demam berdarah dengue yang ada di Jawa Barat.

              <!-- Table with stripped rows -->
              <table class="table datatable">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Tahun</th>
                    <th scope="col">Bulan</th>
                    <th scope="col">Jumlah Kasus</th>
                  </tr>
                </thead>
                <tbody>
                    <?php
                    $cacah = 1;
                    foreach ($perbln as $sbh) {
                    ?>
                    <tr>
                      <th scope="row"><?=$cacah?></th>
                      <td><?=$sbh->tahun?></td>
                      <td><?=$sbh->nama_bulan?></td>
                      <td><?=$sbh->jumlah_kasus?></td>
                      </tr>

                      <?php
                        $cacah++;
                      }
                      ?>
                </tbody>
              </table>
              <!-- End Table with stripped rows -->
            </div>
          </div>

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Data Kasus DBD Berdasarkan Tingkat Hujan</h5>
              <p>Berikut ini merupakan database dari kasus sembuh demam berdarah dengue yang ada di Jawa Barat.

              <!-- Table with stripped rows -->
              <table class="table datatable">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Nama Kabupaten/ Kota</th>
                    <th scope="col">Tahun</th>
                    <th scope="col">Jumlah Kasus</th>
                    <th scope="col">Tingkat Curah Hujan</th>
                  </tr>
                </thead>
                <tbody>
                    <?php
                    $cacah = 1;
                    foreach ($tch as $sbh) {
                    ?>
                    <tr>
                      <th scope="row"><?=$cacah?></th>
                      <td><?=$sbh->nama_kab?></td>
                      <td><?=$sbh->tahun?></td>
                      <td><?=$sbh->jumah_ch?></td>
                      <td><?=$sbh->tingkat_ch?></td>
                      </tr>

                      <?php
                        $cacah++;
                      }
                      ?>
                </tbody>
              </table>
              <!-- End Table with stripped rows -->
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