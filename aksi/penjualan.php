<?php
session_start();
include "../koneksi.php";
include "../function.php";

if ($_POST) {
  if($_POST['aksi']=="tambah-keranjang-bybarcode"){
    $id_user=$_SESSION['id'];
    $barcode=$_POST['barcode'];
    $jumlah=$_POST['jumlah'];

    //temukan produk berdasarkan barcode 
    $sql1="SELECT * FROM produk WHERE barcode=$barcode";
    $query1=mysqli_query($koneksi,$sql1);
    $produk=mysqli_fetch_array($query1);
    if(mysqli_num_rows($query1)>=1){
        //echo "produk ditemukan di database";
        $produkid=$produk['produkid'];
        $sql2="INSERT INTO keranjang(keranjangid,produkid,jumlah,id_user) VALUE(DEFAULT,$produkid,$jumlah,$id_user)";
        mysqli_query($koneksi,$sql2);
        header('location:../index.php?p=tambah');
    } else {
        //echo "produk tidak ditemukan di database";
        header('location:../index.php?p=tambah&err=produk_tidak_ditemukan');
    }
  }
}

if ($_GET) {
    if ($_GET['aksi'] == 'hapus') {
        $produkid = $_GET['produkid'];
        $sql = "DELETE FROM produk WHERE produkid=$produkid";

        mysqli_query($koneksi, $sql);
        notifikasi($koneksi);
        header('location:../index.php?p=produk');
}
}
?>
