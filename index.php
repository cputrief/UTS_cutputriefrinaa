<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>uts_cutputri</title>
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/all.css">
</head>
<body>
    <!-- include_once = tidak akan double -->
<!-- <?php include_once('../navbar.php') ?> -->

<div class="container">
    <div class="row mt-5">
        <div class="col-6 m-auto">
            <div class="card">
                <div class="card-header text-left">
                    <h3 class="card-header text-center">DAFTAR PESANAN</h3>
                </div>
                <div class="card-body">
                <h3></h3>
                <table class="table table-striped text-center">
                    <thead>
                        <tr>
                        <th scope="col">NO</th>
                        <th scope="col">NAMA PELANGGAN</th>
                        <th scope="col">PRODUK</th>
                        <th scope="col">JUMLAH</th>
                        <th scope="col">TGL PESANAN</th>
                        <th scope="col">Action</th>
                        </tr>
                    </thead>
                    
                    <tbody>
                    
                        <?php 
                        //  1. membuat koneksi 
                            include_once("koneksi.php");

                        //  2. menampilkan 
                            $tampil = "SELECT * FROM tb_pesanan";

                        //  3. jalankan query
                            $proses = mysqli_query($koneksi,$tampil);

                        //  4. looping data dari DB
                            $nomor = 1;
                            foreach($proses as $data){

                        ?>
                        <tr>
                        <th scope="row"><?=$nomor++?></th>
                        <td><?=$data['nm_pelanggan']?></td>
                        <td><?=$data['produk']?></td>
                        <td><?=$data['jumlah']?></td>
                        <td><?=$data['tgl_pesan']?></td>
                        <td>
                            <a class="btn btn-info btn-sm" href="edit.php?id_pesanan=<?=$data['id_pesanan']?>"><i class="fa fa-pen-to-square"></i></a>
                            
                            <!-- Button trigger modal hapus -->
                                <button type="button" class="btn btn-danger btn-sm" data-bs-toggle="modal" data-bs-target="#hapus<?=$data['id_pesanan']?>">
                                <i class="fa fa-trash"></i>
                                </button>
                            <!-- Modal -->
                                <div class="modal fade" id="hapus<?=$data['id_pesanan']?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                    <div class="modal-header">
                                        <h1 class="modal-title fs-5" id="exampleModalLabel">PERINGATAN</h1>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        Apakah anda yakin ingin menghapus data ini..?
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
                                        <a href="hapus.php?scop=<?=$data['id_pesanan']?>" class="btn btn-danger">Hapus</a>
                                    </div>
                                    </div>
                                </div>
                                </div>
                        </td>
                        </tr>
                        <?php
                            }
                        ?>
                       
                    </tbody>
                    </table>
                    <!-- <div class="card-header text-left"> -->
                        <span class="float-end "><a class="btn btn-primary" href="form.php"><i class="fa-solid fa-circle-plus"></i>Tambah Pesanan</a></span>
                    <!-- </div> -->
                    
                </div>
            </div>

        </div>

    </div>


</div>


    <script src="../js/bootstrap.js"></script>
    <script src="../js/bootstrap.bundle.js"></script>
    <script src="../js/all.js"></script>
</body>
</html>