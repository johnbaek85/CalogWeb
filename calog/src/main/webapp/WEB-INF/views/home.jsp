<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<html lang="en">
<head>

<style type="text/css">
video_title {
	font-size: 50px !important;
	color: white !important;
}

video_text {
	font-size: 20px !important;
	color: white !important;
	word-break: break-all !important;
}
</style>

<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>Fitness Gym - A Modern Fitness Gym Template</title>

<!-- Favicon -->
<link rel="icon" href="./resources/img/core-img/favicon.ico">

<!-- Core Stylesheet -->
<link rel="stylesheet" href="./resources/style.css">
<!-- Aos style -->
<link rel="stylesheet" href="./resources/css/aos.css">
<!-- video -->
<link href="./resources/css/jquery.mb.YTPlayer.min.css" media="all"
	rel="stylesheet" type="text/css">

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
						<a href="/" class="nav-brand"><img
							src="./resources/img/core-img/logo.png" alt=""></a>

						<!-- Menu -->
						<div class="classy-menu">
							<!-- close btn -->
							<div class="classycloseIcon">
								<div class="cross-wrap">
									<span class="top"></span><span class="bottom"></span>
								</div>
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


	<!-- ##### Video Area Start ##### -->
	
	<div class="hero-slides-content">
		<div class="YTPOverlay"
			style="position: relative; left: 0px; width: 100%; height: 75%; top: 0px; left: 0px; overflow: hidden; opacity: 1; margin-top: -60px; margin-left: 0px; max-width: 100%; max-height: 100%;">
			<a id="bgndVideo" class="player mb_YTPlayer isMuted"
				data-property="{videoURL:'https://www.youtube.com/embed/F9B5mOhhgSA',showYTLogo:false, showAnnotations: false, showControls: false, cc_load_policy: false, containment:'#home-section',autoPlay:true, mute:true, startAt:10, stopAt: 36, opacity:1}"
				style="display: none;"> </a>

			<div id="wrapper_bgndVideo" class="mbYTP_wrapper"
				style="position: absolute; z-index: 0; min-width: 100%; min-height: 100%; left: 0px; top: 0px; overflow: hidden; opacity: 1; background-image: none; transition-property: opacity; transition-duration: 1000ms;">
				<iframe id="iframe_bgndVideo" class="playerBox"
					style="position: absolute; z-index: 0; width: 2560px; height: 1440px; top: 0px; left: 0px; overflow: hidden; opacity: 1; user-select: none; margin-top: -135px; margin-left: -827px; max-width: initial;"
					frameborder="0" allowfullscreen="1"
					allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
					title="YouTube video player" width="640" height="360"
					src="https://www.youtube.com/embed/F9B5mOhhgSA?fs=0&mute=1&showinfo=0&autoplay=1&amp;loop=1;playlist=F9B5mOhhgSA&rel=0&controls=0&modestbranding=1&playsinline=0&start=360&end=15"
					unselectable="on"></iframe>

				<div class="YTPOverlay"
					style="position: absolute; top: 0px; left: 0px; width: 100%; height: 100%;"></div>
			</div>

			<div class="container h-100">
				<div class="row h-100 align-items-center"
					style="position: relative; top: 15px">
					<div class="col-12 col-lg-9">
						<h1 style="opacity: 1;">
							<video_title>Welcome to Calog</video_title>
						</h1>
						<p style="opacity: 1; position: relative; top: 20px">
							<video_text>We record your daily calorie intake and
							consumption easily.Try using our app and feel the change of body
							evert day.</video_text>
						</p>
					</div>
				</div>
			</div>
		</div>

		<!-- ##### Video Area End ##### -->

		<!-- ##### About Us Area Start ##### -->
		<div class="about-us-area section-padding-100-0">

			<div class="col-12">
				<div class="section-heading">
					<h6>Calorie Log</h6>
					<h2>What is CALOG???</h2>
				</div>

				<div class="row">
					<div class="col-12 col-lg-8">
						<div class="row">
							<!-- About Text -->
							<div class="col-12 col-lg-6">
								<div class="about-text">
									<p>You just need to select what you have during the meals
										and the exercises you have done in a day. It automatically
										calculate and show you the calories you have taken and
										consumed during a day, a wekk, a month and a year with graph
										chart to see it and compare it easily.</p>
								</div>
							</div>
							<!-- About Text -->
							<div class="col-12 col-lg-6">
								<div class="about-text">
									<p>Furthermore, you can check your alcohol saturation
										percentage and check the total amount of the alcohol you have
										had during specific period as well through the detector(sold
										separately). You just put it everything you put in your body,
										we will calculate them and show you.</p>
								</div>
							</div>
							<!-- About Button Group -->
							<div class="col-12">
								<div class="about-btn-group mt-50">
									<a href="#" class="btn fitness-btn mr-3">download now</a>

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
		<!-- ##### About Us Area End ##### -->

		<!-- ##### Footer Area Start ##### -->
		<div id="footer">
			<%@include file="footer.jsp"%>
			<!-- footer íì¼ ì¸í´ë£¨ë -->
		</div>
		<!-- ##### Footer Area Start ##### -->

		<!-- ##### All Javascript Script ##### -->

		<!--  video -->
		<script src="./resources/js/jquery.mb.YTPlayer.min.js"></script>
		<!-- Aos style tool -->
		<script src="./resources/js/aos.js"></script>
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
			var Tawk_API = Tawk_API || {}, Tawk_LoadStart = new Date();
			(function() {
				var s1 = document.createElement("script"), s0 = document
						.getElementsByTagName("script")[0];
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