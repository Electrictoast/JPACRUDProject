<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%-- <!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta charset="UTF-8">
<title>${boardgame.title }</title>
</head>
<body>
<c:if test="${not empty message }">
<h2>${message}</h2>
</c:if>
<ul>
<li><strong>Title</strong>${boardgame.title }</li>
<li><strong>Rating</strong>${boardgame.averageRating }</li>
<li><strong>Number of players:</strong> ${boardgame.minPlayers }-${boardgame.maxPlayers }</li>
<li><strong>Play time:</strong> ${boardgame.minPlaytime }-${boardgame.maxPlaytime }</li>
<li><strong>Release year:</strong> ${boardgame.releaseYear }</li>
<li><strong>Age Range:</strong> ${boardgame.ageRange }</li>
</ul>

<form action= "/">
<input type="submit" value="Home">
</form>
</body>
</html> --%>

<!DOCTYPE HTML>

<html>
<head>
<title>${boardgame.title }</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" href="assets/css/main.css" />
</head>
<body class="is-preload">

	<!-- Header -->
	<header id="header">
		<a class="logo" href="/">Lets Play</a>
		<nav>
			<a href="#menu">Menu</a>
		</nav>
	</header>

	<!-- Nav -->
	<nav id="menu">
		<ul class="links">
			<li><a href="/">Home</a></li>

		</ul>
	</nav>

	<!-- Heading -->
	<div id="heading">
		<h1>${boardgame.title }</h1>
	</div>

	<!-- Main -->
	<section id="main" class="wrapper">
		<div class="inner">
			<div class="content">
				<header>
					<h2>About the game</h2>
				</header>
				<ul style="">
					<li><strong>Rating:</strong> ${boardgame.averageRating }</li>
					<li><strong>Number of players:</strong> ${boardgame.minPlayers }-${boardgame.maxPlayers }</li>
					<li><strong>Play time:</strong> ${boardgame.minPlaytime }-${boardgame.maxPlaytime }</li>
					<li><strong>Release year:</strong> ${boardgame.releaseYear }</li>
					<li><strong>Age Range:</strong> ${boardgame.ageRange }</li>
				</ul>
				<hr />
				<!--links to images/ tutorials/ more content  -->

			<div class="row">
				<div class="col-6">
					<form action="chooseForm.do" method="get">
						<input type="hidden" name="value" value="change">
						<input type="hidden" name="bgid" value="${boardgame.id }">
						<input type="submit" value="Change">
					</form>
				</div>
				<div class="col-6">
					<form action="delete.do?bgid=${boardgame.id }" method="post">
						<input type="submit" value="Delete">
					</form>
				</div>
			</div>
			</div>
		</div>
	</section>

	<!-- Footer -->
	<!-- <footer id="footer">
		<div class="inner">
			<div class="content">
				<section>
					<h3>Accumsan montes viverra</h3>
					<p>Nunc lacinia ante nunc ac lobortis. Interdum adipiscing
						gravida odio porttitor sem non mi integer non faucibus ornare mi
						ut ante amet placerat aliquet. Volutpat eu sed ante lacinia sapien
						lorem accumsan varius montes viverra nibh in adipiscing. Lorem
						ipsum dolor vestibulum ante ipsum primis in faucibus vestibulum.
						Blandit adipiscing eu felis iaculis volutpat ac adipiscing sed
						feugiat eu faucibus. Integer ac sed amet praesent. Nunc lacinia
						ante nunc ac gravida.</p>
				</section>
				<section>
					<h4>Sem turpis amet semper</h4>
					<ul class="alt">
						<li><a href="#">Dolor pulvinar sed etiam.</a></li>
						<li><a href="#">Etiam vel lorem sed amet.</a></li>
						<li><a href="#">Felis enim feugiat viverra.</a></li>
						<li><a href="#">Dolor pulvinar magna etiam.</a></li>
					</ul>
				</section>
				<section>
					<h4>Magna sed ipsum</h4>
					<ul class="plain">
						<li><a href="#"><i class="icon fa-twitter">&nbsp;</i>Twitter</a></li>
						<li><a href="#"><i class="icon fa-facebook">&nbsp;</i>Facebook</a></li>
						<li><a href="#"><i class="icon fa-instagram">&nbsp;</i>Instagram</a></li>
						<li><a href="#"><i class="icon fa-github">&nbsp;</i>Github</a></li>
					</ul>
				</section>
			</div>
			<div class="copyright">
				&copy; Untitled. Photos <a href="https://unsplash.co">Unsplash</a>,
				Video <a href="https://coverr.co">Coverr</a>.
			</div>
		</div>
	</footer>-->

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>