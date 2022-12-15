<?php
// memanggil file conn.php untuk melakukan conn database
include 'connection.php';

	// membuat variabel untuk menampung data dari form
  $category_id   = $_POST['category_id'];
  $title     = $_POST['title'];
  $content     = $_POST['content'];
  $date    = $_POST['date'];
  $time    = $_POST['time'];
  $image = $_FILES['image']['name'];


//cek dulu jika ada gambar produk jalankan coding ini
if($image != "") {
  $ekstensi_diperbolehkan = array('png','jpg'); //ekstensi file gambar yang bisa diupload 
  $x = explode('.', $image); //memisahkan nama file dengan ekstensi yang diupload
  $ekstensi = strtolower(end($x));
  $file_tmp = $_FILES['image']['tmp_name'];   
  $angka_acak     = rand(1,999);
  $nama_gambar_baru = $angka_acak.'-'.$image; //menggabungkan angka acak dengan nama file sebenarnya
        if(in_array($ekstensi, $ekstensi_diperbolehkan) === true)  {     
                move_uploaded_file($file_tmp, 'gambar/'.$nama_gambar_baru); //memindah file gambar ke folder gambar
                  // jalankan query INSERT untuk menambah data ke database pastikan sesuai urutan (id tidak perlu karena dibikin otomatis)
                  $query = "INSERT INTO news (category_id, title, content, date, time, image) VALUES ('$category_id', '$title','$content', '$date', '$time', '$nama_gambar_baru')";
                  $result = mysqli_query($conn, $query);
                  // periska query apakah ada error
                  if(!$result){
                      die ("Query gagal dijalankan: ".mysqli_errno($conn).
                           " - ".mysqli_error($conn));
                  } else {
                    //tampil alert dan akan redirect ke halaman index.php
                    //silahkan ganti index.php sesuai halaman yang akan dituju
                    echo "<script>alert('Data berhasil ditambah.');window.location='index.php';</script>";
                  }

            } else {     
             //jika file ekstensi tidak jpg dan png maka alert ini yang tampil
                echo "<script>alert('Ekstensi gambar yang boleh hanya jpg atau png.');window.location='tambah_produk.php';</script>";
            }
} else {
   $query = "INSERT INTO news (category_id, title, content, date, time, image) VALUES ('$category_id', '$title','$content', '$date', '$time', null)";
                  $result = mysqli_query($conn, $query);
                  // periska query apakah ada error
                  if(!$result){
                      die ("Query gagal dijalankan: ".mysqli_errno($conn).
                           " - ".mysqli_error($conn));
                  } else {
                    //tampil alert dan akan redirect ke halaman index.php
                    //silahkan ganti index.php sesuai halaman yang akan dituju
                    echo "<script>alert('Data berhasil ditambah.');window.location='index.php';</script>";
                  }
}