<?php
     include '../../connection.php';

     $id = $_GET['id'];
     $sql = "DELETE FROM categorys WHERE id='$id'";
     $datas = $conn->query($sql);

     if (mysqli_affected_rows($conn) > 0) {
        header("location:index.php");
    }else{
        $_SESSION['error'] = "Hapus data gagal";
    }
