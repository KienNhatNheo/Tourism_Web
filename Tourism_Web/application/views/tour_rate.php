<?php include_once('header.php');?>
<head>
    <title>Tourism_Web</title>
</head>
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
                <a href=".."><i class="fa fa-user"></i>Logout</a>
            </div>
        </div>
        <nav class="humberger__menu__nav mobile-menu">
            <ul>
                <li class="active"><a href="./index.html">Home</a></li>
                <li><a href="./shop-grid.html">Shop</a></li>
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
                                <a href="../../user_controller"><i class="fa fa-user"></i>Logout</a>
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
                            <li><a href="../all_tour">More Tour</a></li>
                            <li><a href="../history">History</a></li>
                            <li><a href="../contact">Contact</a></li>
                        </ul>
                    </nav>

                </div>
                <div class="col-lg-3" style="margin-top:1rem;">
                    <div class="hero__search__phone__icon">
                                <img src="https://get.pxhere.com/photo/avatar-people-person-business-user-man-character-set-icon-portrait-office-profile-pictograph-social-adult-suit-technology-individual-head-face-design-concept-emblem-symbol-smile-formal-elements-facial-expression-cartoon-male-forehead-cheek-chin-human-behavior-standing-gentleman-businessperson-mouth-clip-art-communication-conversation-public-speaking-finger-illustration-facial-hair-happiness-organization-graphics-1447663.jpg">
                            </div>
                            <div class="hero__search__phone__text">
                                <a href="../user_detail" style="text-decoration: none;color: black;"><?php echo 'Welcome '.$_SESSION['name']; ?></a>
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
                            <span>Featured destination</span>
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
                            <form action="../search_start_place" method="post">
                                <input type="text" placeholder="What do you need?" name="place_search">
                                <button type="submit" class="site-btn">SEARCH</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero Section End -->

    <!-- Breadcrumb Section Begin -->
    <?php foreach($tour_data as $item){ ?>
    <div style="text-align: center;font-size: 30px;margin-top: 30px;margin-bottom: 30px;">????nh gi?? chuy???n ??i : <?php echo $item->tour_name; ?></div>
    <form action="../tour_rate_handle" method="post">
        <table style="margin-left:12%">
            <tr>
                <td ><label>S??? ??i???m ????nh gi??</label></td>
                <td style="padding-left: 10px;"><input type="text" name="rate_point">/5</td>
            </tr>
            <tr>
                <td><label>Ph???n h???i v??? chuy???n ??i</label></td>
                <td style="padding-left: 10px;"><input type="form_textarea" name="feedback" style="width:500px;" placeholder="Ph???n h???i c???a b???n ..."></td>
            </tr>
        </table>
        <input type="hidden" name="tour_id" value="<?php echo $item->tour_id; ?>">
        <input style="margin-left:12%;background-color: green;color:white;" type="submit" style="btn btn-success" name="" value="G???i ????nh gi??">
    </form>   
    <?php } ?>
    <!-- Footer Section Begin -->
    <?php include_once('footer.php'); ?>
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
    