<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title></title>
</head>
<style type="text/css">
	.get-in-touch {
  max-width: 800px;
  margin: 50px auto;
  position: relative;

}
.get-in-touch .title {
  text-align: center;
  text-transform: uppercase;
  letter-spacing: 3px;
  font-size: 3.2em;
  line-height: 48px;
  padding-bottom: 48px;
     color: #5543ca;
    background: #5543ca;
    background: -moz-linear-gradient(left,#f4524d  0%,#5543ca 100%) !important;
    background: -webkit-linear-gradient(left,#f4524d  0%,#5543ca 100%) !important;
    background: linear-gradient(to right,#f4524d  0%,#5543ca  100%) !important;
    -webkit-background-clip: text !important;
    -webkit-text-fill-color: transparent !important;
}

.contact-form .form-field {
  position: relative;
  margin: 32px 0;
}
.contact-form .input-text {
  display: block;
  width: 100%;
  height: 36px;
  border-width: 0 0 2px 0;
  border-color: #5543ca;
  font-size: 18px;
  line-height: 26px;
  font-weight: 400;
}
.contact-form .input-text:focus {
  outline: none;
}
.contact-form .input-text:focus + .label,
.contact-form .input-text.not-empty + .label {
  -webkit-transform: translateY(-24px);
          transform: translateY(-24px);
}
.contact-form .label {
  position: absolute;
  left: 20px;
  bottom: 11px;
  font-size: 18px;
  line-height: 26px;
  font-weight: 400;
  color: #5543ca;
  cursor: text;
  transition: -webkit-transform .2s ease-in-out;
  transition: transform .2s ease-in-out;
  transition: transform .2s ease-in-out, 
  -webkit-transform .2s ease-in-out;
}
.contact-form .submit-btn {
  display: inline-block;
  background-color: #000;
   background-image: linear-gradient(125deg,#a72879,#064497);
  color: #fff;
  text-transform: uppercase;
  letter-spacing: 2px;
  font-size: 16px;
  padding: 8px 16px;
  border: none;
  width:200px;
  cursor: pointer;
}
</style>
<body>
	<section class="get-in-touch">
   	<h1 class="title">Login</h1>
		<form action="user_controller/login" class="contact-form row" method="get">
	      <div class="form-field col-lg-8">
	         <input id="name" class="input-text js-input" type="text" name="name">
	         <label class="label" for="name">Username :</label>
	      </div>
	      <br>
	      <div class="form-field col-lg-8 ">
	         <input id="password" class="input-text js-input" type="password" name="password">
	         <label class="label" for="password">Password :</label>
	      </div>
	      <div style="display: flex;justify-content:right;">	
	     	 <div class="form-field col-lg-12">
	        	 <input class="submit-btn" type="submit" value="Next Step->">
	      	</div>
	      </div>
	    </form>
	    <div style="text-align: center;font-size: 20px;">Bạn chưa có tài khoản? <a href="user_controller/register" style="color: blue;text-decoration: none;font-weight: bold;">Vượng ăn buồi</a></div>
    </section>
</body>
</html>