<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ include file="/WEB-INF/jsp/fragments/i18n.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<%@include file="/WEB-INF/jsp/fragments/head.jsp"%>
	<script src="/javascript/libs/Detector.js"></script>
	<script src="/static/javascript/index.js"></script>
	<style>
	/* Make sure that the development tools used in freeciv are not to big */
	img.small {
		max-height: 40px;
	}
	/* 2D/3D teasers must remain within their container. */
	img.teaser {
		display: block;
		margin: auto;
		width: 100%;
	}
	.statistics { text-align: center; }

   /* Make lastest blog articles look less like a list.	*/
	ul.blog-post-summary { list-style-type: none; }
	ul.blog-post-summary > li {	margin-bottom: 5px;	}
	ul.blog-post-summary > li > a {
		color: #494A49;
		display: block;
	}
	ul.blog-post-summary > li > a:nth-of-type(1n) {	text-decoration: underline; }
	ul.blog-post-summary > li > a:nth-of-type(2n) {
		font-size: x-small;
		text-decoration: none;
	}
	/* Game launcher */          
	#game-launcher {
		width: 100%;
		margin: 0 auto;
		font-family: 'Open Sans', Helvetica;
	}
	#game-launcher .game-type {
		width: 100%;
		background: #fcf1e0;
		display: inline-table;
		top: 0;
	}
	#game-launcher .game-type:not(:last-child) { margin-right: 40px; }
	#game-launcher .header {
		color: #000000;
		font-family: 'Fredericka the Great', cursive;
		padding: 15px;
		margin-bottom: 0px;
		background-image: -webkit-linear-gradient(top, #fcf8e3 0, #f8efc0 100%);
		background-image: -o-linear-gradient(top, #fcf8e3 0, #f8efc0 100%);
		background-image: -webkit-gradient(linear, left top, left bottom, color-stop(0, #fcf8e3), to(#f8efc0));
		background-image: linear-gradient(to bottom, #fcf8e3 0, #f8efc0 100%);
		background-repeat: repeat-x;
		filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#fffcf8e3', endColorstr='#fff8efc0', GradientType=0);
		background-color: #fcf8e3;
		border: 1px solid transparent;
		border-radius: 4px 4px 0 0;
		border-bottom: 0;
		border-color: #f5e79e;
	}
	#game-launcher .name {
		width: 100%;
		font-size: 2em;
		display: block;
		text-align: center;
		padding: 2px 0 2px;
	}
	#game-launcher .features {
		list-style: none;
		text-align: center;               
		margin: 0;
		padding: 10px 0 0 0;                
		font-size: 0.9em;
	}
	#game-launcher .btn {
		display: inline-block;
		color: rgb(255, 255, 255);
		border: 0;
		border-radius: 5px;
		padding: 10px;
		width: 200px;
		display: block;
		font-weight: 700;
		font-size: 20px;
		text-transform: uppercase;
		margin: 20px auto 10px;
		background: #be602d;
   text-shadow:
    -0.5px -0.5px 0 #000,
    0.5px -0.5px 0 #000,
    -0.5px 0.5px 0 #000,
    0.5px 0.5px 0 #000;
	}
	#game-launcher a.small { width: 130px;	}
	.multiplayer-games th:last-child { width: 100px; }
	.multiplayer-games a.label:last-child { margin-left: 3px; }
	.multiplayer-games .highlight { 
		color: green;
		font-weight: bold;
	}

	.videoWrapper {
	position: relative;
	padding-bottom: 56.25%; /* 16:9 */
	padding-top: 25px;
	height: 0;
    }

	.videoWrapper iframe {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
	}
	.jumbotron {
	padding-bottom: 0px;
	}
	.nav {
	  font-size: 16px;
	}
</style>
</head>
<body>
	<div class="container">
		<%@include file="/WEB-INF/jsp/fragments/header.jsp"%>

		<div class="row">
			<div class="col-md-12">
				<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
				<ins class="adsbygoogle"
					style="display:block"
					data-ad-client="ca-pub-5520523052926214"
					data-ad-slot="7043279885"
					data-ad-format="auto"></ins>
				<script>
				(adsbygoogle = window.adsbygoogle || []).push({});
				</script>
			</div>
		</div>

		<div class="jumbotron">
			<div class="row">
				<img src="/static/images/frontpage-jumbotron.png" alt="" style="width: 95%;">
			</div>
			<div class="container-fluid">
				<div class="row top-buffer-3">
					<p class="lead">
						<fmt:message key="index-lead"/>


                        <%-- <div class="row top-buffer-3">
                         <h1>LongTurn for Freeciv-web 2</h1>
                         <b>LongTurn game number 2 of Freeciv-web has started and you can join it now!</b><br>
                         <b>Each player will play one turn every day. Players in LongTurn game #1 can join <a href="https://play.freeciv.org/game/list?v=multiplayer">here</a>.<br><br>
                         This will be the largest ever multiplayer game of Freeciv with 250 players!<br>
                         </b>
                         <h2><a href="https://play.freeciv.org/webclient?action=multi&civserverport=6004&civserverhost=play&multi=true">Join the LongTurn Freeciv-web game 2 here!</a></h2>
                        </div>  --%>

					</p>
				</div>
			</div>
		</div> <!-- end jumbotron -->

		<div id="game-launcher" class="row">

				<div class="col-md-6">
					<div class="game-type">
						<div class="header">
							<span class="name"><i class="fa fa-user"></i> <fmt:message key="index-game-launcher-singleplayer" /></span>
						</div>

						<c:if test="${default_lang}">
							<div class="features">
								Play against the Freeciv AI with 3D WebGL<br>graphics using the Three.js 3D engine
							</div>
						</c:if>
						<a href="/webclient/?action=new&renderer=webgl" class="btn" id="webgl_button"><i class="fa fa-cube"></i> <fmt:message key="index-game-launcher-3d"/></a>


						<c:if test="${default_lang}">
							<div class="features">
								Play against the Freeciv AI with 2D HTML5 graphics
							</div>
						</c:if>
						<a id="single-button" href="/webclient/?action=new" class="btn"><i class="fa fa-flag"></i> <fmt:message key="index-game-launcher-2d"/></a>

						<c:if test="${default_lang}">
							<div class="features">
								Start on a scenario map, such as <br> World map, America, Italy or Japan.
							</div>
						</c:if>
						<a href="/webclient/?action=load&amp;scenario=true" class="btn"><i class="fa fa-map-o"></i> <fmt:message key="index-game-launcher-scenario"/></a>
						<c:if test="${default_lang}">
							<div class="features">
								Choose your map from a real earth map.
							</div>
						</c:if>
						<a href="/freeciv-earth/" class="btn"><i class="fa fa-globe"></i> <fmt:message key="index-game-launcher-real-earth"/></a>
					</div>
				</div>
				<div class="col-md-6">
					<div class="game-type">
						<div class="header">
							<span class="name"><i class="fa fa-users"></i> <fmt:message key="index-game-launcher-multiplayer"/></span>
						</div>
						<c:if test="${default_lang}">
							<div class="features">
								Start or join a game with multiple human or AI players.
							</div>
						</c:if>
						<a href="/game/list?v=multiplayer" class="btn"><i class="fa fa-users"></i> <fmt:message key="index-game-launcher-multiplayer"/></a>
						<c:if test="${default_lang}">
							<div class="features">
								Play a LongTurn game, where 250 human <br>players play one turn every day.
							</div>
						</c:if>
						<a href="/game/list?v=multiplayer" class="btn"><i class="fa fa-users"></i><i class="fa fa-clock-o"></i> <fmt:message key="index-game-launcher-longturn"/></a>
						<c:if test="${default_lang}">
							<div class="features">
								Start a play-by-email game where you get an e-mail <br> when it is your turn to play.
							</div>
						</c:if>
						<a href="/webclient/?action=pbem" class="btn"><i class="fa fa-envelope"></i> <fmt:message key="index-game-launcher-play-by-email"/></a>
						<c:if test="${default_lang}">
							<div class="features">
								Play multiple human players <br> on the same computer
							</div>
						</c:if>
						<a href="/webclient/?action=hotseat" class="btn"><i class="fa fa-user-plus"></i> <fmt:message key="index-game-launcher-hotseat" /></a>
					</div>
				</div>
		</div> <!-- end game launcher -->


		<c:if test="${default_lang}">
			<div id="statistics" class="row">
				<div class="col-md-12">
					<div class="panel-freeciv statistics">
						<h4><span id="statistics-singleplayer"><b>0</b></span> <fmt:message key="index-stats-singleplayer"/> <span id="statistics-multiplayer"><b>0</b></span> <fmt:message key="index-stats-multiplayer"/><br>
						<fmt:message key="index-stats-since"/></h4>

					</div>
				</div>
			</div> <!-- end statistics -->
		</c:if>

		<div class="row top-buffer-1">
			<div class="col-md-12">
				<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
				<ins class="adsbygoogle"
					style="display:block"
					data-ad-client="ca-pub-5520523052926214"
					data-ad-slot="7043279885"
					data-ad-format="auto"></ins>
				<script>
				(adsbygoogle = window.adsbygoogle || []).push({});
				</script>
			</div>
		</div>

		<div class="row">
			<div class="col-md-12">
				<h2><fmt:message key="index-youtube"/></h2>
			</div>
		</div>
		<div class="row">
			<div class="col-md-6">
				<div class="videoWrapper">
					<iframe class="embed-responsive-item" width="542" height="343" src="https://www.youtube.com/embed/Vlon-ZF8F40" frameborder="0" allowfullscreen></iframe>
				</div>
			</div>
			<div class="col-md-6">
				<div class="videoWrapper">
					<iframe class="embed-responsive-item" width="542" height="343" src="https://www.youtube.com/embed/K6xBi2JWyZU" frameborder="0" allowfullscreen></iframe>
				</div>
			</div>
		</div> <!-- end youtube -->


		<div id="chrome-web-store" style="display: none;" class="alert alert-warning top-buffer-3" role="alert">
			<a href="https://chrome.google.com/webstore/detail/freeciv/ldhdjhmbapbeafmhdoobnlldhfopfcgh">
				<img src="/static/images/chrome-web-store.png" alt="">
			</a>
			<a href="https://chrome.google.com/webstore/detail/freeciv/ldhdjhmbapbeafmhdoobnlldhfopfcgh">
				<fmt:message key="index-chrome-web-store"/>
			</a>
		</div>
		<div id="google-play-store" style="display: none;" class="alert alert-warning top-buffer-3" role="alert">
			<a href="https://play.google.com/store/apps/details?id=org.freeciv.play">
				<img src="/static/images/google-play-store.png" alt="">
			</a>
			<a href="https://play.google.com/store/apps/details?id=org.freeciv.play">
				<fmt:message key="index-play-store"/>
			</a>
		</div>
		<div id="microsoft-store" style="display: none;" class="alert alert-warning top-buffer-3" role="alert">
			<a href="http://apps.microsoft.com/windows/app/freeciv/43da4eed-42cf-4105-87a2-e03f45ade081">
				<img src="/static/images/microsoft-store.png" alt="">
			</a>
			<a href="http://apps.microsoft.com/windows/app/freeciv/43da4eed-42cf-4105-87a2-e03f45ade081">
				<fmt:message key="index-microsoft-store"/>
			</a>
		</div> <!-- end apps/browser plugins -->

		<div class="row top-buffer-1">
			<div class="col-md-12 ">
				<script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
				<ins class="adsbygoogle"
					style="display:block"
					data-ad-client="ca-pub-5520523052926214"
					data-ad-slot="7043279885"
					data-ad-format="auto"></ins>
				<script>
				(adsbygoogle = window.adsbygoogle || []).push({});
				</script>
			</div>
		</div>

		<div class="row">
			<div class="col-md-6">
				<div class="panel-freeciv">
					<h3><fmt:message key="index-multiplayer-games"/></h3>
					<c:if test="${not empty games and fn:length(games) > 0}">
						<table class="table multiplayer-games">
							<thead>
								<tr>
									<th>Game name</th>
									<th>State</th>
									<th>Turn</th>
									<th>Players</th>
									<th>Actions</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${games}" var="game">
									<tr class="${game.players > 0 && state == 'Pregame' ? 'highlight' : ''}">
										<td>
										    <b>
											  ${game.message}
											</b>
										</td>
										<td>
											${game.state}
										</td>
										<td>
											${game.turn}
										</td>
										<td>
											<c:choose>
												<c:when test="${game.players == 0}">
													None
												</c:when>
												<c:when test="${game.players == 1}">
													1 player
												</c:when>
												<c:otherwise>
													${game.players} players
												</c:otherwise>
											</c:choose>
										</td>			
										<td>
											<c:choose>
												<c:when test="${game.state == 'Running' or game.state == 'Pregame'}">
													<a  class="label label-success" href="/webclient/?action=multi&civserverport=${game.port}&amp;civserverhost=${game.host}&amp;multi=true">
														Play
													</a>
												</c:when>
												<c:otherwise>
													<a class="label label-success" href="/webclient/?action=observe&amp;civserverport=${game.port}&amp;civserverhost=${game.host}&amp;multi=true">
														Observe
													</a>
												</c:otherwise>
											</c:choose>
											<a class="label label-primary" href="/game/details?host=${game.host}&amp;port=${game.port}">
												Info
											</a>
										</td>
									</tr>
								</c:forEach>		
							</tbody>
						</table>
					</c:if>
					<c:if test="${empty games or fn:length(games) == 0}">
						No servers currently listed.
					</c:if>
				</div>
			</div>

			<div class="col-md-6 container" id="best-of-play-by-email">
				<div class="panel-freeciv">
					<h3><fmt:message key="index-best-of-play-by-email"/></h3>
					<table class="table">
						<thead>
							<tr>
								<th>Rank</th>
								<th>Player</th>
								<th>Wins</th>
							</tr>
						</thead>
						<tbody id="play-by-email-list">
							<!-- 
								loaded dynamically
							-->
						</tbody>
					</table>
				</div>
			</div>
		</div> <!-- end multiplayer/best play by email -->

		<div class="row" id="latest-from-blog">
			<div class="col-md-12 container">
				<h2><fmt:message key="index-latest-blog"/></h2>
				<div class="panel-freeciv">
					<ul id="latest-from-blog-articles" class="blog-post-summary">
						<!--
							loaded dynamically
						-->
					</ul>
				</div>
			</div>
		</div> <!-- end blog -->

		<div class="row">
			<div class="col-md-12">
				<h2><fmt:message key="index-press"/></h2>
				<div class="well">
					<h4><i><fmt:message key="index-press-pc-gamer-title"/></i></h4>
					<i><fmt:message key="index-press-pc-gamer-content"/></i>
					<br>
					<a href="http://www.pcgamer.com/freeciv-available-in-html5-browsers-worldwide-productivity-plummets/" target="new"><img style="display: block; float: right;" src="images/pcgamer.gif" alt="PC Gamer"></a>
					<br>
				</div>
			</div>
		</div> <!-- end press -->
		
		<c:if test="${default_lang}">
			<div class="row">
				<div class="col-md-12">
					<h2><fmt:message key="index-developers"/></h2>
				</div>
			</div> 
			<div class="row">
				<div class="col-md-4">
					<div class="panel-freeciv">
						<h4><fmt:message key="index-contributing"/></h4>
						Freeciv is open source software released under the GNU General Public License.
						<a href="https://github.com/freeciv/freeciv-web"><fmt:message key="index-developers"/></a> and <a href="https://github.com/freeciv/freeciv-web/wiki/Contributing-Blender-models-for-Freeciv-WebGL"><fmt:message key="index-3d-artists"/></a> are welcome to join development.
					</div>
				</div>
				<div class="col-md-4">
					<div class="panel-freeciv">
						<h4><fmt:message key="index-stack"/></h4>
						<img class="small" src="/static/images/webgl-stack.png">WebGL
						<img class="small" src="/static/images/html5-stack.png">HTML5<br>
						<img class="small" src="/static/images/tomcat-stack.png">Tomcat
						<img class="small" src="/static/images/python-stack.png">Python<br>
						<img class="small" src="/static/images/three-stack.png">Three.js
						<img class="small" src="/static/images/blender-stack.png">Blender
					</div>
				</div>
				<div class="col-md-4">
					<div class="panel-freeciv">
						<h4><fmt:message key="index-credits"/></h4>
						<ul>
							<li>Andreas R&oslash;sdal <i class="fa fa-twitter"></i>  <a href="https://twitter.com/andreasrosdal/">@andreasrosdal</a></li>
							<li>Sveinung Kvilhaugsvik <i class="fa fa-github"></i>  <a href="https://github.com/kvilhaugsvik">@kvilhaugsvik</a></li>
							<li>Marko Lindqvist <i class="fa fa-github"></i>  <a href="https://github.com/cazfi">@cazfi</a></li>
							<li><a href="http://freeciv.wikia.com/wiki/People">Full list</a></li>
						</ul>
						
					</div>
				</div>
			</div> <!-- end developers -->
		</c:if>


		<%@include file="/WEB-INF/jsp/fragments/footer.jsp"%>
	</div>
</body>
</html>	
