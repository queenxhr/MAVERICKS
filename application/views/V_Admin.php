<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Admin Mavericks</title>
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
              <a class="dropdown-item d-flex align-items-center" href="<?=site_url('C_Mavericks/logout')?>" onclick="return confirm('Are u sure nak logout ah??\n What Sia??')">
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
      
      <section class="section">
      <h1>Data Tables</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="index.html">Home</a></li>
          <li class="breadcrumb-item">Tables</li>
          <li class="breadcrumb-item active">Data</li>
        </ol>
      </nav>
      <div class="row">
        <div class="col-lg-12">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Data Kasus JK</h5>
              <p>Add lightweight datatables to your project with using the </p>
             <button  class="badge bg-success" onclick="location.href='<?php echo site_url('/c_mavericks/createdatajk/')?>';" >Create Data</button>

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
                      <th scope="col">Action</th>
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
                        <td>
                          <button  class="badge bg-warning" onclick="location.href='<?php echo base_url('/index.php/c_mavericks/updateformjk/'). $jk->id_kasus?>';" >Update</button>
                          <a onclick="return confirm('Are u sure want to delete this huh??\nu sure meh??')" href="<?php echo base_url('/index.php/c_mavericks/delkasusjk/'). $jk->id_kasus?>"><button  class="badge bg-danger">Delete</button></a>
                        </td>
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
              <h5 class="card-title">Data Kasus TU</h5>
              <p>Add lightweight datatables to your project with using the </p>
              <button  class="badge bg-success" onclick="location.href='<?php echo site_url('/c_mavericks/createdatatu/')?>';" >Create Data</button>


              <!-- Table with stripped rows -->
              <table class="table datatable">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Nama Kabupaten/ Kota</th>
                      <th scope="col">Tingkat Usia</th>
                      <th scope="col">Jumlah Kasus</th>
                      <th scope="col">Tahun</th>
                      <th scope="col">Action</th>
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
                        <td>
                          <button  class="badge bg-warning" onclick="location.href='<?php echo base_url('/index.php/c_mavericks/updateformtu/'). $tu->id_kasus_tu ?>';" >Update</button>
                          <a onclick="return confirm('Are u sure want to delete this huh??\nu sure meh??')" href="<?php echo base_url('/index.php/c_mavericks/delkasustu/'). $tu->id_kasus_tu ?>"><button  class="badge bg-danger">Delete</button></a>
                        </td>
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
              <h5 class="card-title">Data Kasus Kematian</h5>
              <p>Add lightweight datatables to your project with using the </p>
              <button  class="badge bg-success" onclick="location.href='<?php echo site_url('/c_mavericks/createdatak/')?>';" >Create Data</button>

              <!-- Table with stripped rows -->
              <table class="table datatable">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Nama Kabupaten/ Kota</th>
                      <th scope="col">Jenis Kasus</th>
                      <th scope="col">Jumlah Kasus</th>
                      <th scope="col">Tahun</th>
                      <th scope="col">Action</th>
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
                        <td>
                         
                          <button  class="badge bg-warning" onclick="location.href='<?php echo base_url('/index.php/c_mavericks/updateformmt/'). $koid->id_kasus_ks?>';" >Update</button>
                          <a onclick="return confirm('Are u sure want to delete this huh??\nu sure meh??')" href="<?php echo base_url('/index.php/c_mavericks/delkasusks/'). $koid->id_kasus_ks ?>"><button  class="badge bg-danger">Delete</button></a>
                        </td>
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
              <h5 class="card-title">Data Kasus Sembuh</h5>
              <p>Add lightweight datatables to your project with using the </p>
              <button  class="badge bg-success" onclick="location.href='<?php echo site_url('/c_mavericks/createdatas/')?>';" >Create Data</button>


              <!-- Table with stripped rows -->
              <table class="table datatable">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Nama Kabupaten/ Kota</th>
                      <th scope="col">Jenis Kasus</th>
                      <th scope="col">Jumlah Kasus</th>
                      <th scope="col">Tahun</th>
                      <th scope="col-md-2">Action</th>
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
                      
                        <td>
                          <button  class="badge bg-warning" onclick="location.href='<?php echo base_url('/index.php/c_mavericks/updateforms/'). $sbh->id_kasus_ks ?>';" >Update</button>
                          <a onclick="return confirm('Are u sure want to delete this huh??\nu sure meh??')" href="<?php echo base_url('/index.php/c_mavericks/delkasusks/'). $sbh->id_kasus_ks ?>"><button  class="badge bg-danger">Delete</button></a>
                        </td>
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
              <h5 class="card-title">Data Kasus DBD PerKota</h5>
              <p>Berikut ini merupakan database dari kasus demam berdarah dengue yang ada di Jawa Barat.

              <!-- Table with stripped rows -->
              <table class="table datatable">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Nama Kabupaten/ Kota</th>
                    <th scope="col">Tahun</th>
                    <th scope="col">Jumlah Kasus</th>
                    <th scope="col">Action</th>
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
                      <td>
                        <button  class="badge bg-warning" onclick="location.href='<?php echo base_url('/index.php/c_mavericks/updateformtotkota/'). $sbh->id_total?>';" >Update</button>
                        <a onclick="return confirm('Are u sure want to delete this huh??\nu sure meh??')" href="<?php echo base_url('/index.php/c_mavericks/delkasustotkota/'). $sbh->id_total?>"><button  class="badge bg-danger">Delete</button></a>
                        </td>
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
                    <th scope="col">Action</th>
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
                      <td>
                        <button  class="badge bg-warning" onclick="location.href='<?php echo base_url('/index.php/c_mavericks/updateformtotbln/'). $sbh->id_kasus?>';" >Update</button>
                        <a onclick="return confirm('Are u sure want to delete this huh??\nu sure meh??')" href="<?php echo base_url('/index.php/c_mavericks/delkasustotbln/'). $sbh->id_kasus?>"><button  class="badge bg-danger">Delete</button></a>
                        </td>
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
                    <th scope="col">Action</th>
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
                      <td>
                        <button  class="badge bg-warning" onclick="location.href='<?php echo base_url('/index.php/c_mavericks/updateformtotch/'). $sbh->id_kasus?>';" >Update</button>
                        <a onclick="return confirm('Are u sure want to delete this huh??\nu sure meh??')" href="<?php echo base_url('/index.php/c_mavericks/delkasustotch/'). $sbh->id_kasus?>"><button  class="badge bg-danger">Delete</button></a>
                        </td>
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