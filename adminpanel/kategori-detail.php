<?php
require "session.php";
require "../koneksi.php";

$id = $_GET['p'];

$query = mysqli_query($con, "SELECT * FROM kategori WHERE id ='$id'");
$data = mysqli_fetch_array($query);

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detail Kategori</title>
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="../fontawesome/css/fontawesome.min.css">
</head>

<body>
<?php require "navbar.php"; ?>
<div class="container mt-5">
    <div class="col-12-md-6">
        <h2>Detail Kategori</h2>
        <form action="" method="post">
            <div>
            <label for="kategori">Kategori</label>
            <input type="text" name="kategori" id="kategori" value="<?php echo $data['nama'];?>" class="form-control mt-3">
            </div>
            <div class="mt-5 d-flex justify-content-between">
                <button type="submit" class="btn btn-primary" name="editbtn">Edit</button>
                <button type="submit" class="btn btn-danger" name="deletebtn">Delete</button>
            </div>
        </form>
        <?php 
            if(isset($_POST['editbtn'])){
                $kategori = htmlspecialchars($_POST['kategori']);
                if($data['nama']==$kategori){
                   ?> <meta http-equiv="refresh" content="0; url=kategori.php" />
                   <?php
                }
                else{
                    $query = mysqli_query($con,"SELECT * FROM kategori where nama ='$kategori'");
                    $jumlahData = mysqli_num_rows($query);
                    
                    if($jumlahData > 0){
                        ?>
                             <div class="alert alert-primary mt-3" role="start">
                        Kategori Sudah Ada
                    </div>
                        <?php
                    }else
                    {
                        $querySimpan = mysqli_query($con, "UPDATE kategori SET nama='$kategori' WHERE id='$id'");
                        if ($querySimpan) {
                            ?>
                                <div class="alert alert-primary mt-3" role="start">
                                    Kategori Berhasil Diupdate
                                </div>
                                <meta http-equiv="refresh" content="2; url=kategori.php" />
                    <?php
                               
                            }
                    }
                }
            }    
            
            if(isset($_POST['deletebtn'])){
                $queryDelete = mysqli_query($con,"DELETE FROM kategori WHERE id='$id'");
                
                if($queryDelete){
                    ?>
                                <div class="alert alert-primary mt-3" role="start">
                                    Kategori Berhasil Dihapus
                                </div>                
                                <meta http-equiv="refresh" content="2; url=kategori.php" />        
                    <?php
                }
            }
            else{
                echo mysqli_error($con);
            }
        ?>
    </div>
</div>
    <script src="../bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../fontawesome/js/all.min.js"></script>
</body>

</html>