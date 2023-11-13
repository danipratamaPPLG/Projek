<?php
    session_start();
    require "../koneksi.php";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../bootstrap/css/bootstrap.min.css">
    <style>
    .main{
        height:100vh;
    }

    .login-box{
        width: 500px;
        height: 300px;
        border: solid 1px;
    }
</style>
</head>
<body>
    <div class="main d-flex flex-column justify-content-center align-items-center">
        <div class="login-box p-2 shadow">
            <form action="" method="post">
                <div>
                <label for="username">username</label>
                <input type="text" class="form-control" name="username" id="username">
                </div>
                <div>
                <label for="email">email</label>
                <input type="email" class="form-control" name="email" id="email">
                </div>
                <div>
                <label for="password">password</label>
                <input type="password" class="form-control" name="password" id="password">
                </div>
                <div>
                    
                </div>
                <div>
                    <button class="btn btn-success form-control mt-3" type="submit" name="loginbtn">
                        Login
                    </button>
                </div>
            </form>
        </div>
        <div class = "mt-3" style="width:500px">
            <?php
                if(isset($_POST['loginbtn'])){
                   $username = htmlspecialchars($_POST['username']);
                   $email = htmlspecialchars($_POST['email']);
                   $password = htmlspecialchars($_POST['password']);

                   $query = mysqli_query($con,"SELECT * from users WHERE username='$username'");
                   $countdata = mysqli_num_rows($query);
                   $data = mysqli_fetch_array($query);
                    

                   if($countdata>0){
                   
                   }
                   else{
                    ?>
                    <div class="alert alert-warning" role="alert">
                        Akun tidak tersedia
                    </div>
                    <?php
                   }
                }
            ?>
        </div>
    </div>
</body>
</html>