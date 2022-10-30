<?php
include 'config.php';
session_start();
if(isset($_POST['submit'])){
   $email = mysqli_real_escape_string($conn, $_POST['email']);
   $pass=mysqli_real_escape_string($conn,$_POST['password']);
   setcookie($email, $pass);

   $select1 = " SELECT * FROM user_form WHERE email = '$email'  ";
   $result1 = mysqli_query($conn, $select1);
   if (mysqli_num_rows($result1) == 0) {
      $row=mysqli_fetch_array($result1);
         $error[]='Email không tồn tại';
    }
   $select2 = " SELECT * FROM user_form WHERE password = '$pass' ";
   $result2 = mysqli_query($conn, $select2);
   if (mysqli_num_rows($result2) == 0) {
      $row=mysqli_fetch_array($result2);
         $error[]='Mật khẩu không đúng';
    }

    $select="SELECT * FROM user_form WHERE email = '$email' && password = '$pass' ";
    $result = mysqli_query($conn, $select);
   if (mysqli_num_rows($result) > 0) {
      $row=mysqli_fetch_array($result);
      header('location:home.php');
   }

   if(isset($_POST['remember_me'])&&($_POST['remember_me'])){
      setcookie("email", $email, time()+ 86400);
      setcookie("password", $pass, time()+ 86400);
      $msgcookie="Đã ghi nhớ đăng nhập!";
  }
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Trang Đăng Nhập</title>

   <!-- custom css file link  -->
   <link rel="stylesheet" href="ashe_css/sign_up.css">

</head>
<body>
   
<div class="form-container">

   <form action="" method="post">
      <h3>Đăng nhập ngay</h3>
      <?php
      if(isset($error)){
         foreach($error as $error){
            echo '<span class="error-msg">'.$error.'</span>';
         };
      };
      ?>
      <input type="email" name="email" required placeholder="Email">
      <input type="password" name="password" required placeholder="Mật khẩu">
      Ghi nhớ đăng nhập: <input type ="checkbox" name = "remember_me">
      <input type="submit" name="submit" value="Đăng nhập" class="form-btn">
      <p>Bạn chưa có tài khoản? <a href="sign_up.php">Đăng ký ngay?</a></p>

      <?php 
         if(isset($msgcookie)) echo $smgcookie;
      ?>
   </form>

</div>

</body>
</html>