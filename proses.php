<?php
//  1. membuat koneksi 
include_once("koneksi.php");

//  2. mengambil value dari form
$nm_pelanggan = $_POST['nm_pelanggan'];
$produk = $_POST['produk'];
$jumlah = $_POST['jumlah'];
$tgl_pesan = $_POST['tgl_pesan'];

//  3. simpan
$simpan = "INSERT INTO tb_pesanan (nm_pelanggan,produk, jumlah, tgl_pesan) VALUES ('$nm_pelanggan','$produk', '$jumlah', '$tgl_pesan')";

//  4. jalankan query
$proses = mysqli_query($koneksi,$simpan);


?>
<!-- 5. mengalihkan halaman menggunakan js ✓  -->
<script>
    document.location="index.php"
</script>


