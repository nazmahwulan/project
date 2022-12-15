<!doctype html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

  <!-- My Font -->
  <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">


  <!-- My CSS -->
  <link rel="stylesheet" href="style.css">

  <!-- ICON -->
  <script src="https://kit.fontawesome.com/2eb34c602e.js" crossorigin="anonymous"></script>
  <title>Project</title>

</head>

<body>
  <?php
  include 'connection.php';

  $sql = "SELECT * FROM news";

  if (isset($_POST['filter_submit'])) {
    if ($_POST['category'] !== "") {
      $sql = "SELECT * FROM news               
      WHERE news.category_id = " . $_POST['category'];
    }
  }

  $datas = $conn->query($sql);
  $category_sql = "SELECT * FROM categorys";
  $categorys = $conn->query($category_sql);

  ?>

  <!-- NAVBAR -->
  <nav class="navbar navbar-expand-lg navbar-light">
    <div class="container ">
      <a class="navbar-brand" href="/project2/">Menit.com</a>
        <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
          <div class="navbar-nav ml-auto">
            <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
              <div class="d-flex align-items-center">
                <div class="row">
                  <div class="select">
                    <div class="col-3">
                      <select class="form-select" aria-label ="Default select example" name="category">
                      <option value="" selected>Kategori</option>
                        <?php foreach ($categorys as $category) : ?>
                        
                        <option value="<?php echo ($category['id']) ?>"><?php echo ($category['name']) ?></option>
                        <?php endforeach; ?>
                    </select>
                  </div>
                </div>
                <div class="select3">
                  <div class="col-3">
                    <button type="submit" name="filter_submit" class="fa fa-search" aria-hidden="true"></button>
                  </div>
                </div>
              </div>
            </div>
          </form>
            <a class="nav-item button btn btn-light button2" href="/project2/admin">Login</a>
        </div>
      </div>
    </div>
  </nav>
  <!-- AKHIR NAVBAR -->

  <!-- JUMBOTRON -->
  <div class="jumbotron jumbotron-fluid">
    <div class="container">
      <div class="row">
        <div class="col" data-aos="fade-up" data-aos-duration="2000">
          <h1 class="display-4">Gunung Semeru Erupsi <br> Luncurkan Awan <br> Panas 12 KM</h1>
          <p class="lead">04 Dec 2022, 17:40 WIB</p>
          <a class="nav-item button btn btn-light button2" href="detail.php">Baca Selengkapnya</a>
        </div>
        <div class="col">
          <img src="img/ll.png" alt="" data-speed="-2" class="float-right hero" data-aos="fade-up" data-aos-duration="2000">
        </div>
      </div>
    </div>
  </div>
  <!-- AKHIR JUMBOTRON -->

  <!-- AWAL BERITA -->
  <div class="container provide">
    <div class="row justify-content-center ">
      <div class="col-lg-10">
        <p class="info2">popular</p>
        <h1 class="title">Berita Terkini</h1>
      </div>
    </div>
  </div>

  <div class="row justify-content-center ">
    <?php foreach ($datas as $data) : ?>
      <?php
      $date = date_create($data['date']);
      $time = date_create($data['time']);
      ?>
      <div class="news-slide">
        <div class="content">
          <img src="admin/berita/gambar/<?php echo $data['image']; ?>" alt="">
          <h5 class="news-title"><?php echo $data['title']; ?></h5>
          <p class="news-subtitle"><?php echo date_format($date, "d M Y"); ?> , <?php echo date_format($time, "H:i"); ?> WIB</p>
          <a href="show.php?id=<?php echo $data['id']; ?>" class="nav-item button btn btn-light" style="margin-left:20px; margin-top:-30px;">Baca Selengkapnya</a>
        </div>
      </div>
    <?php endforeach; ?>
    <div class="news-pagination"></div>
  </div>
  <!-- AKHIR BERITA -->

  <!-- FOOTER -->
  <footer>
    <div class="container footer">
      <div class="row">
        <div class="col-lg-6">
          <h1 class="footer-title">Menit.com</h1>
          <div class="footer-menu">
            <a class="footer-link" href="about.php">Tentang Kami </a>
            <a class="footer-link" href="kontak.php">Kontak</a>
            <a class="footer-link" href="kebijakan.php">Kebijakan Pribadi</a>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="contact">
            <p><i class="fa fa-map-marker"></i></i> Jalan Semangka No.5B, Bandar Lampung, lampung, 3455</p>
            <div class="row">
              <div class="col">
                <p><i class="fa fa-envelope"></i></i> Menitcom@gmail.com</p>
              </div>
            </div>
          </div>
          <div class="media-icons">
            <a href="https://www.facebook.com/nazmahwulan.nazmahwulan.9?mibextid=ZbWKwL"><i class="fab fa-facebook-f"></i></a>
            <a href="https://www.facebook.com/nazmahwulan.nazmahwulan.9?mibextid=ZbWKwL"><i class="fab fa-twitter"></i></a>
            <a href="https://www.instagram.com/nazmahwr/?hl=id"><i class="fab fa-instagram"></i></a>
            <a href="https://www.tiktok.com/@yubisayu__?_t=8YAcoe0wZmc&_r=1"><i class="fab fa-tiktok"></i></a>
            <a href="https://youtube.com/@nazmahwulanrhomadhona7534"><i class="fab fa-youtube"></i></a>
          </div>
          <div class="copyright">
            <p>copyright Menit.com © 2022 all rights reserved</p>
          </div>
        </div>
      </div>
    </div>
  </footer>
  <!-- AKHIR FOOTER -->
</body>

</html>