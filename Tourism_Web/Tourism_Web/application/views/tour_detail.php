<?php include_once('header.php');?>
<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Humberger Begin -->
    <div class="humberger__menu__overlay"></div>
    <div class="humberger__menu__wrapper">
        <div class="humberger__menu__logo">
            <a href="#"><img src="img/logo.png" alt=""></a>
        </div>
       
        <div class="humberger__menu__widget">
            <div class="header__top__right__language">
                <img src="img/language.png" alt="">
                <div>English</div>
                <span class="arrow_carrot-down"></span>
                <ul>
                    <li><a href="#">Spanis</a></li>
                    <li><a href="#">English</a></li>
                </ul>
            </div>
            <div class="header__top__right__auth">
                <a href="#"><i class="fa fa-user"></i> Login</a>
            </div>
        </div>
        <nav class="humberger__menu__nav mobile-menu">
            <ul>
                <li class="active"><a href="./index.html">Home</a></li>
                <li><a href="./shop-grid.html">Shop</a></li>
                <li><a href="#">Pages</a>
                    <ul class="header__menu__dropdown">
                        <li><a href="./shop-details.html">Shop Details</a></li>
                        <li><a href="./shoping-cart.html">Shoping Cart</a></li>
                        <li><a href="./checkout.html">Check Out</a></li>
                        <li><a href="./blog-details.html">Blog Details</a></li>
                    </ul>
                </li>
                <li><a href="user_controller/history">History</a></li>
                <li><a href="user_controller/contact_button">Contact</a></li>
            </ul>
        </nav>
        <div id="mobile-menu-wrap"></div>
        <div class="header__top__right__social">
            <a href="#"><i class="fa fa-facebook"></i></a>
            <a href="#"><i class="fa fa-twitter"></i></a>
            <a href="#"><i class="fa fa-linkedin"></i></a>
            <a href="#"><i class="fa fa-pinterest-p"></i></a>
        </div>
        <div class="humberger__menu__contact">
            <ul>
                <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
                <li>Free Shipping for all Order of $99</li>
            </ul>
        </div>
    </div>
    <!-- Humberger End -->

    <!-- Header Section Begin -->
    <header class="header">
        <div class="header__top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="header__top__left">
                            <ul>
                                <li><i class="fa fa-envelope"></i> hello@colorlib.com</li>
                                <li>Free Shipping for all Order of $99</li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="header__top__right">
                            <div class="header__top__right__social">
                                <a href="#"><i class="fa fa-facebook"></i></a>
                                <a href="#"><i class="fa fa-twitter"></i></a>
                                <a href="#"><i class="fa fa-linkedin"></i></a>
                                <a href="#"><i class="fa fa-pinterest-p"></i></a>
                            </div>
                            <div class="header__top__right__language">
                                <img src="img/language.png" alt="">
                                <div>English</div>
                                <span class="arrow_carrot-down"></span>
                                <ul>
                                    <li><a href="#">Spanis</a></li>
                                    <li><a href="#">English</a></li>
                                </ul>
                            </div>
                            <div class="header__top__right__auth">
                                <a href="#"><i class="fa fa-user"></i> Login</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="header__logo">
                        <a href="./index.html"><img src="img/logo.png" alt=""></a>
                    </div>
                </div>
                <div class="col-lg-6">
                    <nav class="header__menu">
                        <ul>
                            <li class="active"><a href="../home">Home</a></li>
                            <li><a href="./shop-grid.html">Shop</a></li>
                            <li><a href="#">Pages</a>
                                <ul class="header__menu__dropdown">
                                    <li><a href="./shop-details.html">Shop Details</a></li>
                                    <li><a href="./shoping-cart.html">Shoping Cart</a></li>
                                    <li><a href="./checkout.html">Check Out</a></li>
                                    <li><a href="./blog-details.html">Blog Details</a></li>
                                </ul>
                            </li>
                            <li><a href="../user_controller/history">History</a></li>
                            <li><a href="../user_controller/contact">Contact</a></li>
                        </ul>
                    </nav>

                </div>
                <div class="col-lg-3" style="margin-top:1rem;">
                    <div class="hero__search__phone__icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="hero__search__phone__text">
                                <a href="../user_controller/user_detail" style="text-decoration: none;color: black;"><?php echo 'Welcome '.$_SESSION['name']; ?></a>
                            </div>
                </div>
            </div>
            <div class="humberger__open">
                <i class="fa fa-bars"></i>
            </div>
        </div>
    </header>
    <!-- Header Section End -->

    <!-- Hero Section Begin -->
    <section class="hero hero-normal">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="hero__categories">
                        <div class="hero__categories__all">
                            <i class="fa fa-bars"></i>
                            <span>All departments</span>
                        </div>
                        <ul>
                            <li><a href="#">Fresh Meat</a></li>
                            <li><a href="#">Vegetables</a></li>
                            <li><a href="#">Fruit & Nut Gifts</a></li>
                            <li><a href="#">Fresh Berries</a></li>
                            <li><a href="#">Ocean Foods</a></li>
                            <li><a href="#">Butter & Eggs</a></li>
                            <li><a href="#">Fastfood</a></li>
                            <li><a href="#">Fresh Onion</a></li>
                            <li><a href="#">Papayaya & Crisps</a></li>
                            <li><a href="#">Oatmeal</a></li>
                            <li><a href="#">Fresh Bananas</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-9">
                    <div class="hero__search">
                        <div class="hero__search__form">
                            <form action="../user_controller/search_start_place" method="post">
                                <input type="text" placeholder="What do you need?" name="place_search">
                                <button type="submit" class="site-btn">SEARCH</button>
                            </form>
                        </div>
                        <div class="hero__search__phone">
                            <div class="hero__search__phone__icon">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="hero__search__phone__text">
                                <h5>+65 11.188.888</h5>
                                <span>support 24/7 time</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Breadcrumb Section Begin -->
    <div style="text-align: center;font-size: 30px;margin-top: 30px;margin-bottom: 30px;">Thông Tin Chuyến Đi</div>
    <?php foreach($tour_detail as $item){ ?>
        <div style="display: flex;margin-left: 12.5%;margin-right: 12.5%;margin-bottom: 30px;">
            <div>
                <img style="height:500px;width:500px;margin-right:50px" src="<?php echo $item->tour_image;?>">
            </div>
            <div >
                <table border="1" style="width:500px;background-color: rgb(216, 216, 216);">
                    <tr>
                       <th style="padding:10px;width: 30%;">Tên tour</th>
                       <td style="padding:10px"><?php echo $item->tour_name;?></td> 
                    </tr>
                    <tr>
                       <th style="padding:10px">Tuyến đường đi</th>
                       <td style="padding:10px"><?php echo $item->tour_route;?></td> 
                    </tr>
                    <tr>
                       <th style="padding:10px">Giá tiền</th>
                       <td style="padding:10px"><?php echo $item->tour_price;?></td> 
                    </tr> 
                    
                    <tr>
                       <th style="padding:10px">Kéo dài</th>
                       <td style="padding:10px"><?php echo $item->tour_length;?></td> 
                    </tr> 
                    <tr>
                       <th style="padding:10px">Loại tour</th>
                       <td style="padding:10px"><?php echo $item->tour_type;?></td> 
                    </tr>
                    <tr>
                       <th style="padding:10px">Ngày bắt đầu</th>
                       <td style="padding:10px"><?php echo $item->tour_startday;?></td> 
                    </tr>
                    <tr style="width:500px">
                       <th style="padding:10px;width: 30%;">Chi tiết</th>
                       <td style="padding:10px;width:70%"><?php echo $item->tour_detail;?></td> 
                    </tr> 
                </table>
            </div>
        </div>
    <div id="hidden_element" style="display: none;"><?php echo $confirm; ?></div>
    <div>
        <a href="../tour_register/<?php echo $item->tour_id;?>"><button class="btn btn-success" style="margin-left: 12.5%;margin-top: 1rem">
            Đăng ký
        </button></a>
        <style type="text/css">
            a {
                text-decoration: none;
            }
        </style>
    </div>
    <form action="../../user_controller/add_tour_comment" method="post">
        <label style="margin-left: 12.5%;margin-top: 3rem;font-size: 2rem;">Bình luận</label><br>
        <input type="hidden" name="tour_id" value="<?php echo $item->tour_id; ?>">
        <input style="margin-left: 12.5%;margin-top: 1rem;width: 50%;height: 4rem;" type="form_textarea" name="comment" placeholder="Nhập bình luận của bạn về chuyến đi"><br>
        <input style="margin-left: 12.5%;margin-top: 1rem" type="submit" name="" value="Gửi bình luận" class="btn btn-success"> 
    </form>
    <h3 style="margin-left: 12.5%;margin-top: 1rem">Các bình luận trước đó</h3>
        <?php } 
        error_reporting(0);
       ?>
    <!-- Footer Section Begin -->
    
    <!-- Footer Section End -->

    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/mixitup.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>



</body>

</html>
    