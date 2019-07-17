<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                                    <li><a href="../about_us">About Us</a></li>
                                    <li><a href="./main/user_data">User Data</a></li>
                                    <li><a href="../noticeboard">Notice</a></li>
                                    <li><a href="../contact">Contact</a></li>
                                </ul>

                                <!-- Login Button -->
                                <a href="../login" class="fitness-btn menu-btn ml-30">Login</a>

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
    <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(../resources/img/bg-img/breadcumb-2.jpg);">
        <div class="bradcumbContent">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <h2>Notice</h2>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active" aria-current="page">Notice</li>
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
                        <h3>Notice</h3>
                    </div>
                </div>
            </div>

			<div class="row">
				<div class="col-12">

					<form name="frm">
						<input type="hidden" name="bno" value="${vo.bno}">
						<input type="hidden" name="page" value="${cri.page}">
						<input type="hidden" name="searchType" value="${cri.searchType}">
						<input type="hidden" name="keyword" value="${cri.keyword}">


						<ul class="notice-board-insert">
							<!-- Contact Form Area -->

							<table>
								<tr>
									<td>No.</td>
									<td><input type="text" value="${vo.bno}"
										readOnly></td>
								</tr>
								<tr>
									<td>작성자</td>
									<td><input type="text" name="writer" value="${vo.writer}"
										readOnly></td>
								</tr>
								<tr>
									<td>제목</td>
									<td><input type="text" name="title" size=40
										value="${vo.title}" readOnly></td>
								</tr>
								<tr>
									<td>내용</td>
									<td><textarea name="content" rows="5" cols="50" readOnly>${vo.content}</textarea></td>
								</tr>
							</table>
							
							

						</ul>
							<button class="small-btn" value="수정" onClick="funUpdate()">수정</button>
							<button class="small-btn"  value="삭제" onClick="funDelete()">삭제</button> 
							<button class="small-btn"  value="목록" onClick="funList()">목록</button>
					</form>

				</div>
			</div>
		</div>
    </section>
    <!-- ##### Contact Area End ##### -->

    <!-- ##### Footer Area Start ##### -->
    <div id="footer">
		<%@include file="../footer.jsp" %>	<!-- footer 파일 인클루드 -->
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
        
        function funUpdate(){
        	frm.action="update";
        	frm.method="get";
        	frm.submit();
        }
        
        function funList(){
        	frm.action="../noticeboard"
        	frm.method="get"
        	frm.submit();
        }
        
        function funDelete(){
        	if(!confirm("삭제하시겠습니까?")){return;}
        	frm.action="delete"
    		frm.method="post"
    		frm.submit();
        	
        }
    </script>
    <!-- End of Tawk.to Script -->
</body>

</html>