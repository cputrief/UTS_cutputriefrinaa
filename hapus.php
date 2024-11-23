<?php
//  1. membuat koneksi 
include_once("koneksi.php");

//  2. mengambil id dari tombol hapus
$id_pesanan = $_GET['scop'];


//  3. simpan
$hapus = "DELETE FROM tb_pesanan WHERE id_pesanan='$id_pesanan'";

//  4. jalankan query
$proses = mysqli_query($koneksi,$hapus);


?>
<!-- 5. mengalihkan halaman menggunakan js ✓  -->
<script>
    document.location="index.php"
</script>


