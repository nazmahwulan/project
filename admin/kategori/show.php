<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- <link rel="shortcut icon" href="img/logo.png" type="image/png"> -->

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <!-- My Font -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">

    <!-- AOS -->
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />

    <!-- Swiper -->
    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <!-- My CSS -->
    <link rel="stylesheet" href="style.css">

    <!-- ICON -->
    <script src="https://kit.fontawesome.com/2eb34c602e.js" crossorigin="anonymous"></script>
    <style>
        .navbar {
            margin-top: 35px;
        }

        .navbar-brand,
        .nav-link {
            font-family: Poppins;
        }

        .navbar-brand {
            font-size: 24px;
            font-weight: bold;
            color: #042944 !important;

        }

        .nav-link {
            color: #042944;
            font-weight: 500;
            font-size: 13px;
            text-transform: uppercase;
        }

        .button {
            background: #25316D;
            border-radius: 30px;
            border-color: #25316D;
            color: #F1F1F1;
            font-size: 13px;
            text-transform: uppercase;
        }

        .navbar-toggler {
            border: none;
        }

        .fas {
            color: #98CCCE;
        }

        body {
            background-color: #F1F1F1;
        }

        footer {
            margin-top: 190px;
            background-color: #25316D;
        }

        .copyright {
            margin-top: 20px;
            color: #ffffff;
            font-family: Poppins;
            font-size: 14px;
        }

        .nav-link {
            margin-right: 40px;
        }

        .nav-link:hover::after {
            content: '';
            display: block;
            border-bottom: 3px solid #EF7746;
            width: 100%;
            margin: auto;
            padding: 2px;
            margin-bottom: -8px;
        }

        .card {
            border-radius: 30px;
            border: none;
            margin-top: 20px;

        }

        .btn-primary {
            border: none;
            background-color: #25316D;
            color: #ffffff;
            font-family: Poppins;
            font-size: 14px;
            border-radius: 10px;
        }

        .h2 {
            font-family: Poppins;
            font-weight: bold;
            color: #042944;
            text-align: center;
        }

        .breadcrumb-item {
            font-family: Poppins;
            font-size: 14px;
        }
    </style>
</head>
<body>
    <?php
    session_start();
    if (isset($_SESSION['status']) != "login") {
        header("location:/project2/admin");
    }
    if (isset($_POST['submit'])) {
        session_destroy();
        header("location:/project2/admin");
    }
    include '../../connection.php';

    $id = $_GET['id'];
    $sql = "SELECT * FROM categorys WHERE id='$id'";
    $datas = $conn->query($sql);

    while ($data = mysqli_fetch_array($datas)) {
        $name = $data['name'];
    }

    ?>

    <!-- NAVBAR -->
    <nav class="navbar navbar-expand-lg navbar-light">
        <div class="container">
            <a class="navbar-brand" href="#">Menit.com</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fas fa-bars bar"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav ml-auto">
                    <a class="nav-item nav-link active" href="/project2/admin/dashboard.php">Beranda</a>
                    <a class="nav-item nav-link" href="/project2/admin/kategori">Kategori</a>
                    <a class="nav-item nav-link" href="/project2/admin/berita">Berita</a>
                </div>
            </div>
        </div>
        </div>
    </nav>
    <!-- AKHIR NAVBAR -->

    <div class="container">
        <div class="row justify-content-center ">
            <main class="col-md-9 ms-sm-auto col-lg-12 px-md-4 py-4">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item active" aria-current="page">Kategori</li>
                        <li class="breadcrumb-item active" aria-current="page">Lihat Kategori</li>
                    </ol>
                </nav>
                <h1 class="h2">Melihat Kategori</h1>
                <div class="card">
                    <div class="card-body">
                        <div class="mb-3">
                            <label for="name" class="form-label">Kategori</label>
                            <input type="text" class="form-control" id="name" name="name" placeholder="Kategori" required value="<?php echo $name ?>" disabled>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </div>

    <!-- FOOTER -->
    <footer>
        <div class="container footer">
            <div class="row">
                <div class="copyright">
                    <p>copyright Menit.com © 2022 all rights reserved</p>
                </div>
            </div>
        </div>
        </div>
    </footer>
    <!-- AKHIR FOOTER -->
    <?php
    unset($_SESSION['error']);
    ?>
</body>

</html>