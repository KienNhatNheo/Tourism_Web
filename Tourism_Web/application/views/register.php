<!DOCTYPE html>
<html>
<head>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <title></title>
   <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
   <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
   <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<?php include_once('css/login.css'); ?>
<body>
<section class="get-in-touch">
   <h1 class="title">Register</h1>
   <a href="javascript:history.go(-1)"><button class="btn-success btn"> Quay lại</button></a>
   <form action="register_handle" class="contact-form row" method="POST">
      <div class="form-field col-lg-6">
         <input id="name" class="input-text js-input" type="text" name="name" required>
         <label class="label" for="name">Name</label>
      </div>
      <div class="form-field col-lg-6 ">
         <input id="password" class="input-text js-input" type="password" name="password" required>
         <label class="label" for="password">Password</label>
      </div>
      <div class="form-field col-lg-6 ">
         <input id="email" class="input-text js-input" type="email" name="email" required>
         <label class="label" for="email">E-mail</label>
      </div>
      <div class="form-field col-lg-6 ">
         <input id="fullname" class="input-text js-input" type="text" name="fullname" required>
         <label class="label" for="fullname">Fullname</label>
      </div>
       
      <div class="form-field col-lg-12">
         <input id="message" class="input-text js-input" type="text" name="phone" required>
         <label class="label" for="phone">Phone</label>
      </div>
      <div class="form-field col-lg-12">
         <input class="submit-btn" type="submit" value="Sign up">
      </div>
      <div class="form-field col-lg-12">
                  
      </div>
   </form>
</section>
</body>
</html>

