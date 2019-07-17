<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/handlebars.js/3.0.1/handlebars.js"></script>
<style>
#search{height:28px; color:white; padding:5pz; margin-bottom:30px;-webkit-box-align: center;}
#pagination{height:28px; color:white; padding:5pz; margin-bottom:10px; text-align:center; font-color:white;webkit-box-align: center;}
</style>

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

    <!-- ##### Breadcumb Area Start ##### -->
    <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(./resources/img/bg-img/breadcumb-2.jpg);">
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
						<h3>Please be noted.</h3>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-12">
					<ul class="notice-board">
						<!-- Contact Form Area -->
						
						
					<form name = "frm">
						<div id = "search">
							
							<select name="searchType" class="serchType_slot">
								<option value="title"
									<c:out value="${cri.searchType=='title'?'selected':''}"/>>제목</option>
								<option value="content"
									<c:out value="${cri.searchType=='content'?'selected':''}"/>>내용</option>
								<option value="writer"
									<c:out value="${cri.searchType=='writer'?'selected':''}"/>>저자</option>
							</select> 
			
							<input type="hidden" name="bno"> 
							<input type="hidden"name="page" value="${cri.page}">
							<input class = "keyword-slot" type="text"name="keyword" value="${cri.keyword}"> 
							<button class = "small-btn"value="검색" onClick="funSearch()">검색</button> 
							검색데이터:${pm.totalCount}건

						</div>
					</form>
						<table>
							<tr>
								<td width="80">No.</td>
								<td width="350">Title</td>
								<td width="200">Writer</td>
								<td width="200">Date</td>
								<td width="80">View</td>
							</tr>
							
							<c:forEach var = "vo" items = "${list}">
							<tr class = "noticeList" onClick="funRead('${vo.bno}')"style="cursor:pointer">
								<td width="80">${vo.bno}</td>
								<td width="350">${vo.title}</td>
								<td width="200">${vo.writer}</td>
								<td width="200"><fmt:formatDate pattern="yyyy-MM-dd"
											value="${vo.regdate}" /></td>
								<td width="80">${vo.viewcnt}</td>
							</tr>
							</c:forEach>
						</table>
						<div id="pagination">
							<%@include file="./pagination.jsp"%>
						</div>

					</ul>
					<button class="btn fitness-btn btn-white mt-50" onClick="funInsert()">Write</button>
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
        
        function funInsert(){
        	frm.method="get";
    		frm.action="./notice/insert";
    		frm.submit();
        }
        
        function funRead(bno){
        	frm.bno.value=bno;
        	frm.method="get";
        	frm.action="notice/read";
        	frm.submit();
    	}
        
        function funSearch(){
        	frm.page.value=1;
    		frm.method="get";
    		frm.action="./noticeboard";
    		frm.submit();
        	
        }
        
        $("#pagination").on("click","a",function(){
    		event.preventDefault();
    		frm.page.value=$(this).attr("href");
    		frm.action="./noticeboard";
    		frm.method="get";
    		frm.submit();
    	});
        
        
    </script>
    <!-- End of Tawk.to Script -->
</body>

</html>