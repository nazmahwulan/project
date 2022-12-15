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
            margin-top: 50px;
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
            background-color: #ffffff;
            font-family: Poppins;
            font-size: 15px;
            margin-top: 20px;
        }

        .card-header {
            background-color: #25316D;
            color: #ffffff;
            font-size: 15px;
            font-family: Poppins;
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
        header("location:/project2");
    }
    if (isset($_POST['submit'])) {
        session_destroy();
        header("location:/project2/admin");
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
                    <form id="logout_form" action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
                        <button class="nav-item button btn btn-light" type="submit" name="submit">Logout</button>
                    </form>
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
                        <li class="breadcrumb-item active" aria-current="page">Beranda</li>
                        <li class="breadcrumb-item active" aria-current="page">Dashboard</li>
                    </ol>
                </nav>
                <h1 class="h2">Dashboard</h1>

                <div class="row">
                    <div class="col-12 col-xl-12 mb-4 m-lg-0">
                        <div class="card">
                            <h5 class="card-header">Update Data Terbaru</h5>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table">
                                        <thead>
                                            <tr>
                                                <th scope="col">Kategori</th>
                                                <th scope="col" style="text-align: center;">Judul</th>
                                                <th scope="col">Keterangan</th>
                                                <th scope="col"></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">Sepakbola</th>
                                                <td>Daftar Tim dan Jadwal 16 Besar Liga Champions: Klub Inggris dan Jerman Dominan</td>
                                                <td>1 Agustus 2022 (05:00)</td>
                                                <td><a href="#" class="btn btn-sm btn-primary">Lihat</a></td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Terkini</th>
                                                <td>Tewasnya Sekeluarga di Kalideres Diduga Akibat Bunuh Diri dan Terencana</td>
                                                <td>2 Agustus 2022 (09:10)</td>
                                                <td><a href="#" class="btn btn-sm btn-primary">Lihat</a></td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Sepakbola</th>
                                                <td>Nasib Penonton Piala AFF 2022, Menpora: Ditentukan Polri</td>
                                                <td>3 Agustus 2022 (12:00)</td>
                                                <td><a href="#" class="btn btn-sm btn-primary">Lihat</a></td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Internasional</th>
                                                <td>Presiden Prancis Macron Banjir Kecaman karena Dianggap Bela Rusia</td>
                                                <td>4 Agustus 2022 (15:30)</td>
                                                <td><a href="#" class="btn btn-sm btn-primary">Lihat</a></td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <a href="#" class="btn btn-primary btn-light">Lihat Semua</a>
                            </div>
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