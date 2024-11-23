<?php
// 1. koneksi database
include("koneksi.php");

// 2. ambil id yang akan di edit
$id_pesanan = $_GET['id_pesanan'];

// 3. mengambil semua record data berdasarkan id yang dipilih
$ambil = "SELECT * FROM tb_pesanan WHERE id_pesanan='$id_pesanan'";

// 4. menjalankan query
$edit = mysqli_query($koneksi,$ambil);

// 5. memisahkan record data berdasarkan field/kolom
$data = mysqli_fetch_array($edit);
?>




<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>form edit</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/all.css">
</head>
<body>

<div class="container">
    <div class="row mt-5">
        <div class="col-6 m-auto">
            <div class="card">
                <div class="card-header text-center">
                    <h3>Edit Data Pesanan</h3>
                </div>
                <div class="card-body">
                    <!-- atribut wajib di form -->
                     <!-- readonly = tidak bisa di edit lagi = harus unique -->
                    <form action="update.php" method="POST" enctype="multipart/form-data">
                        <input type="hidden" name="id_pesanan" value="<?=$data['id_pesanan']?>">
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">NAMA PELANGGAN</label>
                                <input type="text"  value="<?=$data['nm_pelanggan']?>" name="nm_pelanggan" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">      
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputPassword1" class="form-label">PRODUK</label>
                            <input type="text" value="<?=$data['produk']?>" name="produk" class="form-control" id="exampleInputPassword1">
                        </div>
                        <div class="mb-3">
                            <label for="quantity" class="form-label">JUMLAH</label>
                            <input type="number" id="quantity" min="1" value="<?=$data['jumlah']?>" name="jumlah" class="form-control" id="exampleInputPassword1">
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputPassword1" class="form-label">TGL PESAN</label>
                            <input type="date" value="<?=$data['tgl_pesan']?>" name="tgl_pesan" class="form-control" id="exampleInputPassword1">
                        </div>
                        
                        <button type="submit" class="btn btn-primary">Update</button>
                    </form>
                </div>
            </div>

        </div>

    </div>


</div>
    <script src="js/bootstrap.js"></script>
    <script src="js/bootstrap.bundle.js"></script>
    <script src="../js/all.js"></script>
</body>
</html>