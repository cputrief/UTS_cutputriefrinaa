<?php
//  1. membuat koneksi 
include_once("koneksi.php");

//  2. mengambil value dari form
$id_pesanan = $_POST['id_pesanan'];
$nm_pelanggan = $_POST['nm_pelanggan'];
$produk = $_POST['produk'];
$jumlah = $_POST['jumlah'];
$tgl_pesan = $_POST['tgl_pesan'];

//  3. simpan
$edit = "UPDATE tb_pesanan SET nm_pelanggan='$nm_pelanggan',produk='$produk', jumlah='$jumlah', tgl_pesan='$tgl_pesan' WHERE id_pesanan='$id_pesanan'";

//  4. jalankan query
$proses = mysqli_query($koneksi,$edit);


?>
<!-- 5. mengalihkan halaman menggunakan js ✓  -->
<script>
    document.location="index.php"
</script>


