<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- css link -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/all.css">
    <title>Form</title>
</head>
<body>

<!-- <?php include_once('../navbar.php') ?> -->

<div class="container">
    <div class="row mt-5">
        <div class="col-6 m-auto">
            <div class="card">
                <div class="card-header text-center">
                    <h3>Form Data Pesanan</h3>
                </div>
                <div class="card-body">
                    <!-- atribut wajib di form -->
                    <form action="proses.php" method="POST" enctype="multipart/form-data">
                        <div class="mb-3">
                            <label for="exampleInputEmail1" class="form-label">NAMA PELANGGAN</label>
                                <input type="text" name="nm_pelanggan" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">      
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputPassword1" class="form-label">PRODUK</label>
                            <input type="text" name="produk" class="form-control" id="exampleInputPassword1">
                        </div>
                        <div class="mb-3">
                            <label for="quantity" class="form-label">JUMLAH</label>
                            <input type="number" id="quantity" min="1" name="jumlah" class="form-control" id="exampleInputPassword1">
                        </div>
                        <div class="mb-3">
                            <label for="exampleInputPassword1" class="form-label">TGL PESAN</label>
                            <input type="date" name="tgl_pesan" class="form-control" id="exampleInputPassword1">
                        </div>
                        
                        <button type="submit" class="btn btn-primary">Submit</button>
                        <button type="reset" class="btn btn-danger">Reset</button>
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