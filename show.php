<!DOCTYPE html>
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
    <style>
        .oo {
            text-align: center;
        }

        .page-detail {
            margin-top: 100px;
        }

        .img-detail {
            align-items: center;
            margin-top: 30px;
            margin-bottom: 30px;
            width: 55em;
            height: 30em;
            display: block;
            margin-left: auto;
            margin-right: auto;

        }
    </style>


<body>
    <?php
    include 'connection.php';

    $id = $_GET['id'];
    $sql = "SELECT * FROM news JOIN categorys ON news.category_id =  categorys.id  WHERE news.id='$id'";
    $datas = $conn->query($sql);

    while ($data = mysqli_fetch_array($datas)) {
        $title = $data['title'];
        $content = $data['content'];
        $date = $data['date'];
        $time = $data['time'];
        $image = $data['image'];
        $categorys = $data['name'];
    }
    ?>

    <!-- NAVBAR -->
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
            <a class="navbar-brand" href="#">Menit.com</a>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav ml-auto">
                    <div class="d-flex align-items-center">
                        <div class="row" style="margin-left:300px">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </nav>
    <!-- AKHIR NAVBAR -->

    <!--AWAL BERITA-->
    <?php foreach ($datas as $data) : ?>
    <?php
      $date = date_create($data['date']);
      $time = date_create($data['time']);
      ?>
    <div class="container provide page-detail">
        <div class="row justify-content-center">
            <div class="col-lg-10">
                <p class="info1"><?php echo $title ?></p>
                <p class="oo">Menit.com - <?php echo $categorys ?> | <?php echo date_format($date, "d M Y"); ?> , <?php echo date_format($time, "H:i"); ?></p>
                <img class="img-detail" src="admin/berita/gambar/<?php echo $image ?>" alt="">
                <p class="lead desc"><?php echo $content ?></p>
                <a href="print.php?id=<?php echo $data['id']; ?>" class="nav-item button btn btn-light" style="margin-top:-80px;">Download Berita</a>
            </div>
        </div>
    </div>
    <?php endforeach; ?>
    <!--AKHIR BERITA-->

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
            <p>copyright Menit.com ?? 2022 all rights reserved</p>
          </div>
        </div>
      </div>
    </div>
  </footer>
  <!-- AKHIR FOOTER -->

</body>

</html>