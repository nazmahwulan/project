<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
    <script src=https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js></script>
    <link rel="stylesheet" type="text/css" href="style.css" />
    <link href="http://fonts.cdnfonts.com/css/gilroy-bold" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700&display=swap" rel="stylesheet">

    <style type="text/css">
        .card {
            background-color: #F1F1F1;
            border: 0;
        }

        .btn {
            background-color: #25316D;
            color: #ffffff;
            font-family: Poppins;
            font-weight: bold
        }
        .judul { 
            font-size: 30px;
            color: #042944;
            font-family: Poppins;
            font-weight: bold;
        }

    </style>
</head>
<body>

<?php
        session_start();

        if(isset($_SESSION['status']) && $_SESSION['status'] === "login"){
            header("location:/project2/admin/dashboard.php");
            die();
        }

        include '../connection.php';

        if(isset($_POST['username']) && $_POST['password']){
            $username = $_POST['username'];
            $password = $_POST['password'];

            $sql = "SELECT * FROM admins WHERE username='$username' and password='$password'";
            $data = $conn->query($sql);

            $check = mysqli_num_rows($data);

            if(isset($_POST['submit'])){
                if($check !=0){
                    $_SESSION['username'] = $username;
                    $_SESSION['status'] = "login";
                    header("location:/project2/admin/dashboard.php");
                    die();
                }else{
                    $_SESSION['error'] = "Gagal login, silahkan cek kembali username dan password Anda";
                }
            }
        }
    ?>

<div class="container">
        <div class="row">
            <div class="col-md-6 offset-md-3">
                <div class="card my-5">
                    <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post" class="card-body cardbody-color p-lg-5">
                        <div class="text-center">
                            <h5 class="judul">Menit.com</h5>
                        </div>
                        <br><br>
                        <div class="mb-3">
                            <input type="text" class="form-control" name="username" id="username" aria-describedby="emailHelp" require placeholder="Username">
                        </div>
                        <div class="mb-3">
                            <input type="password" class="form-control" name="password" id="password" placeholder="Password" require>
                        </div>
                        <p style="color:red; font size:12px;"><?php if(isset($_SESSION['error'])){ echo($_SESSION['error']);} ?></p>
                        <div class="text-center">
                            <button type="submit" name="submit" class="btn btn-color px-5 mb-5 w-100">Login</button>
                        </div>
                        <div id="emailHelp" class="form-text text-center mb-4 text-dark">Not Registered?
                            <a href="#" class="text-dark fw-bold">Create an Account</a>
                            <br><br>
                            <a href="/project2/" class="text-dark fw-bold">Back to Home</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <?php
    unset($_SESSION['error']);
    ?>
    
</body>
</html>