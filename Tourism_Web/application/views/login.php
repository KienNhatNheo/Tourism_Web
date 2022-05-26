<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Tourism_Web</title>
</head>
<?php include_once('css/login.css'); ?>
<body>
	<section class="get-in-touch">
   	<h1 class="title">Login</h1>
		<form action="user_controller/login" class="contact-form row" method="post">
	      <div class="form-field col-lg-8">
          <label class="label" for="name">Username :</label>
	         <input id="name" class="input-text js-input" type="text" name="name">
	         
	      </div>
	      <br>
	      <div class="form-field col-lg-8 ">
          <label class="label" for="password">Password :</label>
	         <input id="password" class="input-text js-input" type="password" name="password">
	         
	      </div>
	      <div style="display: flex;justify-content:right;">	
	     	 <div class="form-field col-lg-12">
	        	 <input class="submit-btn" type="submit" value="Login">
	      	</div>
	      </div>
	    </form>
	    <div style="text-align: center;font-size: 20px;">Bạn chưa có tài khoản? <a href="user_controller/register" style="color: blue;text-decoration: none;font-weight: bold;">Đăng ký ngay</a></div>
    </section>
</body>
</html>