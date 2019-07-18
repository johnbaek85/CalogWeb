<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form"  uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
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
                        <a href="/" class="nav-brand"><img src="./resources/img/core-img/logo.png" alt=""></a>

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
    <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(./resources/img/bg-img/breadcumb-2.jpg);">
        <div class="bradcumbContent">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h2>Contact</h2>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Contact</li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Breadcumb Area End ##### -->

    <!-- ##### Contact Area Start ##### -->
    <section class="contact-area section-padding-100">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="contact-title">
                        <h3>Get in touch</h3>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-12">
                    <div class="contact-content">
                        <!-- Contact Form Area -->
                        <div class="contact-form-area">
                            <%-- <form action="/mailSending" method="post" enctype="text/plain">
                            <!-- <form action="mailto:toki42ver@naver.com?subject=Comments from MailTo Syntax Page" method="post" enctype="text/plain"> -->
                                <div class="form-group">
                                    <input type="text" class="form-control" name = "sendername"  placeholder="Your Name">
                                    
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control" name="sendermail" placeholder="Your E-mail">
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" name = "title"  placeholder="subject">
                                </div>
                                <div class="form-group">
                                    <textarea name="message" class="form-control" name = "content"  cols="30" rows="10" placeholder="Message"></textarea>
                                </div>
                                <button class="btn fitness-btn btn-2 mt-30" type="submit">Contact Us</button>
                            </form> --%>
                            
                            <form action="/mailSending" method="post">
							    <div align="center"><!-- 받는 사람 이메일 -->
							      <input type="email" name="yourmail" size="120" style="width:100%" placeholder="회신받을 메일 주소를 입력하셍" class="form-control" >
							    </div>
							    <div align="center"><!-- 받는 사람 이름 -->
							      <input type="text" name="yourname" size="120" style="width:100%" placeholder="이름을 입력해주세요" class="form-control" >
							    </div>     
							    <div align="center"><!-- 제목 -->
							      <input type="text" name="title" size="120" style="width:100%" placeholder="제목을 입력해주세요" class="form-control" >
							    </div>
							    <p>
							    <div align="center"><!-- 내용 --> 
							      <textarea name="content" cols="120" rows="12" style="width:100%; resize:none" placeholder="내용#" class="form-control"></textarea>
							    </div>
							    <p>
							    <div align="center">
							      <input type="submit" value="메일 보내기" class="btn btn-warning">
							    </div>
					  		</form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Contact Area End ##### -->

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