<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

 	 <link rel="stylesheet" href="../resources/css/style.css">

    <!-- Title -->
    <title>Fitness Gym - A Modern Fitness Gym Template</title>

    <!-- Favicon -->
    <link rel="icon" href="../resources/img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link rel="stylesheet" href="../resources/style.css">
    
   

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
                        <a href="/" class="nav-brand"><img src="../resources/img/core-img/logo.png" alt=""></a>

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
                                    <li><a href="about-us">About Us</a></li>
                                    <li><a href="./main/user-data">User Data</a></li>
                                    <li><a href="notice">Notice</a></li>
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

    <!-- ##### Breadcumb Area Start ##### -->
    <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(../resources/img/bg-img/breadcumb.jpg);">
        <div class="bradcumbContent">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h2>Login</h2>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Login</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### About Us Area Start ##### -->
    <div class="about-us--area section-padding-100">
        <div class="container">
            <div class="row">

				<div class="login-page">
					<div class="form">
						<form class="calog">
							<h2>Welcome to CaLog</h2>
							<h4>We provide Check and manage daily and down load our
								health care service easily.</h4>
						</form>
						<form class="register-form" method = "post" action = "/home">
							<input type="text" placeholder="id" name="user_id" /> <input
								type="password" placeholder="password" name="password" /> <input
								type="text" placeholder="name" name="name" /> <input type="text"
								placeholder="email Address" name="email" /> <input type="text"
								placeholder="phone Number" name="phone" /> <input type="text"
								placeholder="address" name="address" /> <input type="text"
								placeholder="birthday" name="birthday" /> <input type="text"
								placeholder="gender" name="gender" /> <input type="text"
								placeholder="height" name="height" /> <input type="text"
								placeholder="weight" name="weight" /> <input type="hidden"
								name="bmi" value="weight/height/height*10000" />

							<button>create</button>
							<p class="message">
								Already registered? <a href="#">Sign In</a>
							</p>
						</form>
						<form class="login-form" method="post" action="/login">
							<input type="text" placeholder="id" name="user_id" /> <input
								type="password" placeholder="password" name="password" />
							<button>login</button>
							<p class="message">
								Not registered? <a href="#">Create an account</a>
							</p>
						</form>
					</div>
				</div>

				<script
					src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

				<script src="../resources/js/script.js"></script>
			</div>
        </div>
    </div>
    <!-- ##### About Us Area End ##### -->


    <!-- ##### Footer Area Start ##### -->
    <div id="footer">
		<%@include file="footer.jsp" %>	<!-- footer 파일 인클루드 -->
	</div>

    <!-- ##### Footer Area Start ##### -->

    <!-- ##### All Javascript Script ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="../resources/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="../resources/js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="../resources/js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="../resources/js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="../resources/js/active.js"></script>
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
        
        $("#register-form").on("click", function(){
        	var user_id = $(register-form).val();
        	var password = $(register-form).val();
        	var name = $(register-form).val();
        	var email = $(register-form).val();
        	var phone = $(register-form).val();
        	alert("click");
        	
        });
    </script>
    <!-- End of Tawk.to Script -->
    
    <!-- 로그인 기능 작성 -->
   
</body>

</html>