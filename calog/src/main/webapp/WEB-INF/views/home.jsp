<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Fitness Gym - A Modern Fitness Gym Template</title>

    <!-- Favicon -->
    <link rel="icon" href="./resources/img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="./resources/style.css">

</head>

<body>
    <!-- ##### Preloader ##### -->
    <div id="preloader">
        <i class="circle-preloader"></i>
    </div>

    <!-- ##### Header Area Start ##### -->
    <header class="header-area">
        <!-- Navbar Area -->
        <div class="fitness-main-menu">
            <div class="classy-nav-container breakpoint-off">
                <div class="container">
                    <!-- Menu -->
                    <nav class="classy-navbar justify-content-between" id="fitnessNav">

                        <!-- Nav brand -->
        <!--                 <a href="/" class="nav-brand"><img src="./resources/img/core-img/logo.png" alt=""></a> -->
						<a href="/" class="home-btn" style="color:#7FFF00;">CALOG</a>
                        <!-- Navbar Toggler -->
                        <div class="classy-navbar-toggler">
                            <span class="navbarToggler"><span></span><span></span><span></span></span>
                        </div>

                        <!-- Menu -->
                        <div class="classy-menu">

                            <!-- close btn -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav Start -->
                            <div class="classynav">
                                <ul>
                                    <li><a href="/">Home</a></li> 
                                    <li><a href="about_us">About Us</a></li>
                                    <li><a href="./main/user_data">User Data</a></li>
                                    <li><a href="noticeboard">Notice</a></li>
                                    <li><a href="contact">Contact</a></li>
                                </ul>

                                <!-- Login Button -->
                                <a href="login" class="fitness-btn menu-btn ml-30">Login</a>

                            </div>
                            <!-- Nav End -->
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ##### Header Area End ##### -->

    <!-- ##### Hero Area Start ##### -->
    <section class="hero-area">
        <div class="hero-slides owl-carousel">

            <!-- Single Hero Slide -->
            <div class="single-hero-slide bg-img" style="background-image: url(./resources/img/bg-img/bg-1.jpg);">
                <div class="container h-100">
                    <div class="row h-100 align-items-center">
                       
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Hero Area End ##### -->



    <div class="about-us-area section-padding-100-0">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="section-heading">
                        <h6>Smartphone Application</h6>
                        <h2>CALOG</h2>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12 col-lg-8">
                    <div class="row1">
                        
                        <div class="col-12col-lg-6">
                            <div class="about-text">
                                <p> Calog is a smartphone application developed by team 7Hours(Every developers who has 'H' in their names from KOSMO IT institution in Korea.)
                                <br> The name Calog is compounded word;Calorie+Log, which it means that it calculates the calories the user intakes and consumes a day, records it and shows to the user for help manage daily live for better health and life.
                                <br> For more detail, please click below 'see more' button or contact menu on the upper menu. </p>
                            </div>
                        </div>
                        
                        <div class="col-12">
                            <div class="about-btn-group mt-50">
                                <a href="#" class="btn fitness-btn mr-3">download now</a>
                                 <a href="about_us" class="btn fitness-btn mr-3">See more</a>
                               
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-lg-4">
                    <div class="about-thumb">
                        <img src="./resources/img/bg-img/man.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>


  

    <!-- ##### Footer Area Start ##### -->
    <div id="footer">
		<%@include file="footer.jsp" %>	<!-- footer 파일 인클루드 -->
	</div>
    <!-- ##### Footer Area Start ##### -->

    <!-- ##### All Javascript Script ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="./resources/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="./resources/js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="./resources/js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="./resources/js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="./resources/js/active.js"></script>
    <!-- Live Chat Code :: Start of Tawk.to Script -->
    <script>
        var Tawk_API = Tawk_API || {},
            Tawk_LoadStart = new Date();
        (function() {
            var s1 = document.createElement("script"),
                s0 = document.getElementsByTagName("script")[0];
            s1.async = true;
            s1.src = 'https://embed.tawk.to/5b55ea72df040c3e9e0bdf85/default';
            s1.charset = 'UTF-8';
            s1.setAttribute('crossorigin', '*');
            s0.parentNode.insertBefore(s1, s0);
        })();
    </script>
    <!-- End of Tawk.to Script -->
</body>

</html>