<?php 
$koneksi = mysqli_connect("localhost", "root", "", "perpus");
$result = mysqli_query($koneksi, "SELECT pengunjung.No_kartu, Nama, Judul_buku, Tgl_peminjaman 
                                    FROM pengunjung, pegawai, buku 
                                    WHERE pegawai.No_kartu=pengunjung.No_kartu 
                                    AND pegawai.No_buku = buku.No_buku");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Perpustakaan </title>
</head>
<body>
    <h1 align='center'> Daftar Peminjaman Buku Perpustakaan </h1>
    <table align="center" border="1" cellpadding="8" cellspacing="0">
        <tr> 
            <td align="center"> No_kartu </td>
            <td align="center"> Nama </td>
            <td align="center"> Judul_buku </td>
            <td align="center"> Tgl_peminjaman </td>            
        </tr>
        <?php while($row=mysqli_fetch_assoc($result)): ?>        
        <tr>
            <td align="center"><?php echo $row["No_kartu"]; ?></td>
            <td align="center"><?php echo $row["Nama"]; ?></td>
            <td align="center"><?php echo $row["Judul_buku"]; ?></td>
            <td align="center"><?php echo $row["Tgl_peminjaman"]; ?></td>
        </tr>
    <?php endwhile ?>   
    </table>
</body>
</html>