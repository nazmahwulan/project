<?php
    ob_start();
    include 'connection.php';

    $id = $_GET['id'];
    $sql = "SELECT * FROM news WHERE id='$id'";
    $datas = $conn->query($sql);

    while ($data = mysqli_fetch_array($datas)) {
        $title = $data['title'];
        $content = $data['content'];
        $date = $data['date'];
        $time = $data['time'];
        $image = $data['image'];
    }
?>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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
        .info1 {
            text-align: center;
        }
        .lead {
            text-align: justify;
        }

    </style>
    </style>

</head>
<body>

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
                <p class="oo">Menit.com - <?php echo date_format($date, "d M Y"); ?> , <?php echo date_format($time, "H:i"); ?></p>
                <h1 class="title"></h1>
                <img class="img-detail" src="admin/berita/gambar/<?php echo $image ?>" alt="">
                <p class="lead desc"><?php echo $content ?></p>
            </div>
        </div>
    </div>
    <?php endforeach; ?>
    <!--AKHIR BERITA-->
    
</body>
</html>

<?php
    require './mpdf/mpdf/vendor/autoload.php';

    $mpdf = new \Mpdf\Mpdf([
        'mode' => 'utf-8',
        'format' => 'A4',
        'margin_top' => 25,
        'margin_bottom' => 25,
        'margin_left' => 25,
        'margin_right' => 25
    ]);

    $html = ob_get_contents();

    ob_end_clean();
    $mpdf->WriteHTML(utf8_encode($html));

    $content = $mpdf->Output("cetak.pdf", "D");
?>