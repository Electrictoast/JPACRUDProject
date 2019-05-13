<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
<c:if test="${not empty message }">
<h2>${message }</h2>
</c:if>
<form action="getGameById.do" method="GET">
  Boardgame ID: <input type="text" name="bgid" />
  <input type="submit" value="Show Game" />
</form>
<form action="getGameByKeyword.do" method="GET">
  Boardgame Search: <input type="text" name="keyword" />
  <input type="submit" value="Find" />
</form>
<form action="browse.do" method="GET">
  <input type="submit" value="Browse" />
</form>
<form action="chooseForm.do" method = "GET">
Add a game <input type= "radio" checked="checked" name = "value" value = "add"><br>
Edit a game <input type= "radio" name = "value" value = "change"> ID: <input name="bgid"><br>
Delete a game <input type= "radio" name = "value" value = "delete"><br>
<input type= "submit" value="Go">
</form>
<c:if test="${value == 'add'}">
	<form action="add.do">
	Title: <input name="title" ><br>
	Rating: <input name="averageRating" ><br>
	Minimum number of players: <input name= "minPlayers"><br>
	Maximum number of players: <input name= "maxPlayers" ><br>
	Minimum play time: <input name= "minPlaytime" ><br>
	Maximum play time: <input name= "maxPlaytime" ><br>
	Release year: <input name= "releaaseYear"><br>
	Age range: <input name="ageRange" ><br>
	<input type="submit" value="Add">
	</form>
</c:if>
<c:if test="${value == 'change' }">
<form action="change.do">
	Title: <input name="title" value=${boardgame.title }><br>
	Rating: <input name="averageRating" value=${boardgame.averageRating }><br>
	Minimum number of players: <input name= "minPlayers" value=${boardgame.minPlayers }><br>
	Maximum number of players: <input name= "maxPlayers" value=${boardgame.maxPlayers }><br>
	Minimum play time: <input name= "minPlaytime" value=${boardgame.minPlaytime }><br>
	Maximum play time: <input name= "maxPlaytime" value=${boardgame.maxPlaytime }><br>
	Release year: <input name= "releaaseYear" value=${boardgame.releaseYear }><br>
	Age range: <input name="ageRange" value=${boardgame.ageRating }><br>
	<input type="submit" value="Add">
	</form>

</c:if>
<c:if test="${value == 'delete' }">
<form action = "delete.do">
Game ID: <input name="bgid">
<input type="submit" value="Delete">
</form>
</c:if>
</body>
</html> --%>
<!DOCTYPE HTML>

<html>
<head>
<title>Lets Play</title>
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

	<!-- Banner -->
	<section id="banner">
		<div class="inner">
			<h1>
				<strong>Lets Play</strong>
			</h1>
			<h3>Board games for bored gamers</h3>
			<c:if test="${not empty message }">
				<h2>${message }</h2>
			</c:if>
			<br>
			<p>

				A Board game Database site with full CRUD<br /> designed by <a
					href="https://www.linkedin.com/in/jake-kisor/">Jake Kisor</a>
			</p>
		</div>
		<video autoplay loop muted playsinline src="images/banner.mp4"></video>
	</section>

	<!-- Highlights -->
	<section class="wrapper">
		<div class="inner">
			<header class="special">
				<h2>Search</h2>
				<p>Find games by keyword or id</p>
			</header>
			<div class="highlights">
				<section>
					<div class="content">
						<header>
							<a href="#" class="icon fa-vcard-o"><span class="label">Icon</span></a>
							<h3>Search by number of players</h3>
						</header>
						<p>
						<form action="getGameByNumPlayers.do" method="GET">
							Number of Players: <input type="text" name="numPlayers" /><br> <input
								type="submit" value="Search" />
						</form>
						</p>

					</div>
				</section>
				<section>
					<div class="content">
						<header>
							<a href="#" class="icon fa-files-o"><span class="label">Icon</span></a>
							<h3>Search by keyword</h3>
						</header>
						<p>
						<form action="getGameByKeyword.do" method="GET">
							Boardgame Search: <input type="text" name="keyword" /><br>
							<input type="submit" value="Search" />
						</form>
						</p>
					</div>
				</section>
				<section>
					<div class="content">
						<header>
							<a href="browse.do" class="icon fa-floppy-o"><span
								class="label">Icon</span></a>
							<h3>Browse Games</h3>
						</header>
					</div>
				</section>
			</div>
		</div>
	</section>

	<!-- Modify -->
	<section id="cta" class="wrapper">
		<div class="inner">

			<h2>Modify</h2>

			<form action="chooseForm.do" method="GET">
				<div class="row">
					<div class="col-4 col-sm-12">
						<input type="radio" id="radio-add" name="value" value="add">
						<label for="radio-add">Add a game</label>
					</div>
					<div class="col-4 col-sm-12">
						<input type="radio" id="radio-change" name="value" value="change"
							checked="checked"> <label for="radio-change">Edit
							a game</label> ID: <input type="text" name="bgid">
					</div>
					<div class="col-4 col-sm-12">
						<input type="radio" id="radio-delete" name="value" value="delete">
						<label for="radio-delete">Delete a game</label>
					</div>
				</div>
				<br> <input type="submit" value="Go">


			</form>
			<c:if test="${value == 'add'}">
				<form action="add.do" method="post">
					<div class="row">
						<div class="col-6">
							Title: <input type="text" name="title"><br> Rating:
							<input type="text" name="averageRating"><br> Minimum
							number of players: <input type="text" name="minPlayers"><br>
							Maximum number of players: <input type="text" name="maxPlayers"><br>
						</div>
						<div class="col-6">
							Minimum play time: <input type="text" name="minPlaytime"><br>
							Maximum play time: <input type="text" name="maxPlaytime"><br>
							Release year: <input type="text" name="releaaseYear"><br>
							Age range: <input type="text" name="ageRange"><br>
						</div>
					</div>
					<div class="row">
						<div class="col-12">
							<input type="submit" value="Add">
						</div>
					</div>
				</form>
			</c:if>
			<c:if test="${value == 'change' }">
				<form action="change.do" method="post">
				<input type="hidden" name="id" value="${boardgame.id }">
					<div class="row">
						<div class="col-6">
							Title: <input type="text" name="title"
								value="${boardgame.title }"><br> Rating: <input
								type="text" name="averageRating"
								value="${boardgame.averageRating }"><br> Minimum
							number of players: <input type="text" name="minPlayers"
								value="${boardgame.minPlayers }"><br> Maximum
							number of players: <input type="text" name="maxPlayers"
								value="${boardgame.maxPlayers }"><br>
						</div>
						<div class="col-6">
							Minimum play time: <input type="text" name="minPlaytime"
								value="${boardgame.minPlaytime }"><br> Maximum play
							time: <input type="text" name="maxPlaytime"
								value="${boardgame.maxPlaytime }"><br> Release
							year: <input type="text" name="releaaseYear"
								value="${boardgame.releaseYear }"><br> Age range: <input
								type="text" name="ageRange" value="${boardgame.ageRange }"><br>
						</div>
					</div>
						<div class="row">
							<div class="col-12">
								<input type="submit" value="Change">
							</div>
						</div>
				</form>

			</c:if>
			<c:if test="${value == 'delete' }">
				<form action="delete.do" method="post">
					Game ID: <input type="text" name="bgid"> <input
						type="submit" value="Delete">
				</form>
			</c:if>
		</div>
	</section>

	<!-- Testimonials -->
	<section class="wrapper">
		<div class="inner">
			<header class="special">
				<h2>Recent reviews</h2>
				<p>Listen to what people are saying about the latest games</p>
			</header>
			<div class="testimonials">
				<section>
					<div class="content">
						<blockquote>
							<p>Nunc lacinia ante nunc ac lobortis ipsum. Interdum
								adipiscing gravida odio porttitor sem non mi integer non
								faucibus.</p>
						</blockquote>
						<div class="author">
							<div class="image">
								<img src="images/pic01.jpg" alt="" />
							</div>
							<p class="credit">
								- <strong>Jane Doe</strong> <span>CEO - ABC Inc.</span>
							</p>
						</div>
					</div>
				</section>
				<section>
					<div class="content">
						<blockquote>
							<p>Nunc lacinia ante nunc ac lobortis ipsum. Interdum
								adipiscing gravida odio porttitor sem non mi integer non
								faucibus.</p>
						</blockquote>
						<div class="author">
							<div class="image">
								<img src="images/pic03.jpg" alt="" />
							</div>
							<p class="credit">
								- <strong>John Doe</strong> <span>CEO - ABC Inc.</span>
							</p>
						</div>
					</div>
				</section>
				<section>
					<div class="content">
						<blockquote>
							<p>Nunc lacinia ante nunc ac lobortis ipsum. Interdum
								adipiscing gravida odio porttitor sem non mi integer non
								faucibus.</p>
						</blockquote>
						<div class="author">
							<div class="image">
								<img src="images/pic02.jpg" alt="" />
							</div>
							<p class="credit">
								- <strong>Janet Smith</strong> <span>CEO - ABC Inc.</span>
							</p>
						</div>
					</div>
				</section>
			</div>
		</div>
	</section>
	<!-- Footer -->
	<!--
	<footer id="footer">
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

		</div>
	</footer> -->

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>