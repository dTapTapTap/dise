<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Tool</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://www.w3schools.com/lib/w3-theme-blue-grey.css">
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Open+Sans'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/menu.css">
<link rel="stylesheet" href="css/main.css">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-2.2.0.min.js">
	
</script>
<script>
	$(document).ready(function() {
		$('#showlogin').click(function() {
			$('#loginpanel').slideToggle('fast', function() {
			});
		});
	});
</script>

<style>
html, body, h1, h2, h3, h4, h5 {
	font-family: "Open Sans", sans-serif
}
</style>
<body class="w3-theme-l5">

	<!-- Navbar -->
	<div class="w3-top">
		<div class="w3-bar w3-theme-d1 w3-left-align w3-large">
			<a
				class="w3-bar-item w3-button w3-hide-large w3-right w3-padding-large w3-hover-white w3-large w3-theme-d2"
				href="javascript:void(0);" onclick="openNav()"><i
				class="fa fa-bars"></i></a> <a href="#"
				class="w3-bar-item w3-button w3-padding-large w3-theme-d4"><i
				class="fa fa-home w3-margin-right"></i>Home</a>
			<text
				class="w3-bar-item w3-theme-d1 w3-padding-large w3-hide-medium w3-hide-large">Emojictionary</text>
			<text class="w3-bar-item w3-theme-d1 w3-padding-large w3-hide-small">Emoji
			Social Dictionary</text>
			<a href="#"
				class="w3-bar-item w3-button w3-hide-small w3-right w3-padding-large w3-hover-white w3-theme-d2 w3-hide-medium"
				title="Log out"> Log out </a> <a href="#"
				class="w3-bar-item w3-button w3-hide-small w3-right w3-padding-large w3-hover-white w3-theme-d2 w3-hide-medium"
				title="My Account"> Account </a>
		</div>
	</div>

	<!-- Navbar on small screens -->
	<div id="navDemo"
		class="w3-bar-block w3-theme-d2 w3-hide w3-hide-large w3-large">
		<a href="#" class="w3-bar-item w3-button w3-padding-large">O</a> <a
			href="#" class="w3-bar-item w3-button w3-padding-large">Account</a> <a
			href="#" class="w3-bar-item w3-button w3-padding-large">Log out</a>
	</div>

	<!-- Page Container -->
	<div class="w3-container w3-content"
		style="max-width: 1400px; margin-top: 80px">
		<!-- The Grid -->
		<div class="w3-row">
			<!-- Left Column -->
			<div class="w3-col m3">
				<!-- Profile -->
				<div class="w3-card-2 w3-round w3-white">
					<div class="w3-container">
						<h4 class="w3-center w3-padding-large">Menu</h4>
					</div>
				</div>
				<br>

				<!-- Accordion -->
				<div class="w3-card-2 w3-round">
					<div class="w3-white">
						<button onclick="myFunction('Demo1')"
							class="w3-button w3-block w3-theme-d1 w3-left-align">
							<i class="fa fa-question-circle-o fa-fw w3-margin-right"></i>Guest
						</button>
						<div id="Demo1"
							class="w3-hide w3-container w3-theme-d3 w3-padding-large">
							<a href="#" class="w3-margin-right">Function</a>
						</div>
						<button onclick="myFunction('Demo2')"
							class="w3-button w3-block w3-theme-d1 w3-left-align">
							<i class="fa fa-user-o fa-fw w3-margin-right"></i>User
						</button>
						<div id="Demo2"
							class="w3-hide w3-container w3-theme-d3 w3-padding-large">
							<a href="#" class="w3-margin-right">Function</a>
						</div>
						<button onclick="myFunction('Demo3')"
							class="w3-button w3-block w3-theme-d1 w3-left-align">
							<i class="fa fa-vcard-o fa-fw w3-margin-right"></i>Admin
						</button>
						<div id="Demo3"
							class="w3-hide w3-container w3-theme-d3 w3-padding-large">
							<a href="#" class="w3-margin-right">Function</a> <br> <a
								href="#" class="w3-margin-right">Function</a>
						</div>
						<!-- POP UP defniciones -->
						<a href='/create'>Crear emoji</a>

						<div id="openDefs" class="modalDialog">
							<div>
								<a href="#close" title="Close" class="close">X</a>
								<form action="#" method="post">
									<div style="float: left; width: 100%;">
										<img id="emojidef" src="Wink-Emoji-PNG.png"
											style="float: left; max-width: 20%">
										<textarea class="textround"
											style="width: 70%; float: left; min-height: 100px; margin-top: 7%;"
											type="text" id="trad"> 
        </textarea>
									</div>
									<div style="clear: both";=""></div>
									<div>
										<textarea class="textround"
											style="width: 100%; min-height: 100px;" type="text" id="def"></textarea>
									</div>
									<button class="round"
										style="max-width: 20%; margin-top: 10px; margin-left: 40%; font-size: 20px; background-color: #A9A9A9;"
										type="submit" id="submit">Save</button>
								</form>
							</div>
						</div>
						<!-- Fin de POP UP defniciones -->
					</div>
				</div>
				<br>


				<!-- End Left Column -->
			</div>

			<!-- Middle Column -->
			<div class="w3-col m7">

				<div class="w3-row-padding">
					<div class="w3-col m12">
						<div class="w3-card-2 w3-round w3-white">
							<div class="w3-container w3-padding">
								<div>
									<br>
									<div class="container w-container"></div>
								</div>

								<br>
							</div>
						</div>
					</div>
				</div>

				<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
					<br>

					<div>
						<div class="container w-container">
							<div class="w-row">
								<div class="w-clearfix w-col w-col-2">
									<img class="image"
										src="http://uploads.webflow.com/58f776cfc914f269a449b21d/58f776cfc914f269a449b246_128-25.jpg"
										width="100">
								</div>
								<div class="w-clearfix w-col w-col-10">
									<h5 class="heading-3">EMOJI NAME</h5>
									<br>
									<p class="paragraph">"TU Definicion favorita del emoji o la
										que tu le hayas dado lorem ipsum etctctctctcTUT TTU "</p>
									<a class="remove w-button" href="#">Delete</a>
								</div>
								<br>
							</div>
						</div>
					</div>

					<br>
				</div>



				<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
					<br>
					<div class="w-tab-content">
						<div id="TodosIconos" class="w-tab-pane" data-w-tab="Tab 1">
							<h1 class="heading-2">Lista de emojis</h1>
							<div class="section-title-group">
								<h2 class="centered heading">Todos los Emojis</h2>
								<div class="section-subheading">
									Buscar: <input type="search" style="margin: auto;">
								</div>
							</div>
							<div id="d2"
								style="height: 500px; width: auto; position: relative;">
								<div id="container"
									style="max-height: 100%; overflow: auto; margin-top: 30px;">
									<div id="Main" style="height: 700px; border: 5px">
										<c:forEach items="${emojis}" var="emoji" varStatus="loop">
											<div class="w3-card-2 w3-round w3-white w3-center">
												<p>
													<strong>Emoji ${emoji.idemoji}</strong>
												</p>
												<div class="w3-container">
													<p>
														<strong>Traducción ${emoji.trademoji}</strong>
													</p>
													<img src="/w3images/forest.jpg" alt="Emoji"
														style="width: 100%;">
													<p>Descripción ${emoji.descemoji}</p>
													<p>
														<a class="w3-button w-inline-block w-tab-link"
															onclick="openTab(event, 'Icono1')" data-w-tab="Tab 2">Más
															traducciones
															</button>
														</a>
													</p>
												</div>
											</div>
											<br>
										</c:forEach>
									</div>
								</div>
							</div>
						</div>




						<div id="Icono1" class="w-tab-pane" data-w-tab="Tab 2"
							style="display: none">
							<h1 class="heading-2">Información de emoji</h1>
							<div class="section-title-group">
								<a class="w3-button w-inline-block w-tab-link"
									onclick="openTab(event, 'TodosIconos')" data-w-tab="Tab 1">Volver
									</button>
								</a>
							</div>

							<div class="w3-card-2 w3-round w3-white w3-center">
								<div class="w3-container">
									<p>
										<strong>Icono</strong>
									</p>
									<img src="/w3images/forest.jpg" alt="Emoji"
										style="width: 100%;">
									<div class="w3-row w3-opacity">
										<div class="w3-half">
											<button class="w3-button w3-block w3-green w3-section"
												title="Accept">
												<i class="fa fa-thumbs-up"></i>
											</button>
										</div>
										<div class="w3-half">
											<form method="get" action="#openReportE">
												<button type="submit"
													class="w3-button w3-block w3-red w3-section"
													title="Decline">
													<i class="fa fa-exclamation-triangle"></i>
												</button>
											</form>
										</div>
									</div>
									<DIV>
										<p>Traducción más votada:</p>
									</DIV>
									<div class="w3-row w3-opacity">
										<div class="w3-half">
											<button class="w3-button w3-block w3-green w3-section"
												title="Accept">
												<i class="fa fa-thumbs-up"></i>
											</button>
										</div>
										<div class="w3-half">
											<form method="get" action="#openReportE">
												<button type="submit"
													class="w3-button w3-block w3-red w3-section"
													title="Decline">
													<i class="fa fa-exclamation-triangle"></i>
												</button>
											</form>
										</div>
									</div>
									<DIV>
										<p>Descripción más votada:</p>
									</DIV>
									<div class="w3-row w3-opacity">
										<div class="w3-half">
											<button class="w3-button w3-block w3-green w3-section"
												title="Accept">
												<i class="fa fa-thumbs-up"></i>
											</button>
										</div>
										<div class="w3-half">
											<form method="get" action="#openReportE">
												<button type="submit"
													class="w3-button w3-block w3-red w3-section"
													title="Decline">
													<i class="fa fa-exclamation-triangle"></i>
												</button>
											</form>
											<!-- POP UP reportes -->
											<div id="openReportE" class="modalDialog">
												<div>
													<a href="#close" title="Close" class="close">X</a>
													<form action="#" method="post">
														<div style="float: left; width: 100%;">
															<center>
																<h2 style="font-family: 'Abel', 'sans-serif'" id="type">Report
																	Emoji</h2>
															</center>
														</div>
														<div>
															<textarea class="textround"
																style="width: 100%; min-height: 200px; background-color: #A9A9A9;"
																type="text" id="def"></textarea>
														</div>
														<button class="round"
															style="max-width: 20%; margin-top: 40px; margin-left: 23%; font-size: 20px; background-color: #A9A9A9;"
															type="submit" id="submit">Cancel</button>
														<button class="round"
															style="max-width: 20%; margin-left: 12%; font-size: 20px; background-color: #A9A9A9;"
															type="submit" id="submit">Submit</button>
													</form>
												</div>
											</div>
											<!-- Fin de POP UP reportes-->
										</div>
									</div>
									<div class="w3-card-2 w3-round w3-white w3-center">
										<div id="d2"
											style="height: 500px; width: auto; position: relative;">
											<div id="container"
												style="max-height: 100%; overflow: auto; margin-top: 30px;">
												<div id="Main" style="height: 700px; border: 5px">
													<div class="w3-card-2 w3-round w3-white w3-center">
														<br>Otra posible traducción de USUARIO:<br> <br>
														<div class="w3-card-2 w3-round w3-white w3-center">
															<br>ASDFASDFASDFSADFADSFADSFA<br>
															<br>
															<div class="w3-row w3-opacity">
																<div class="w3-half">
																	<button class="w3-button w3-block w3-green w3-section"
																		title="Accept">
																		<i class="fa fa-thumbs-up"></i>
																	</button>
																</div>
																<div class="w3-half">
																	<form method="get" action="#openReportE">
																		<button type="submit"
																			class="w3-button w3-block w3-red w3-section"
																			title="Decline">
																			<i class="fa fa-exclamation-triangle"></i>
																		</button>
																	</form>
																</div>
															</div>
														</div>
													</div>
													<div class="w3-card-2 w3-round w3-white w3-center">
														<br>Otra posible descripción de USUARIO:<br> <br>
														<div class="w3-card-2 w3-round w3-white w3-center">
															<br>ASDFASDFASDFSADFADSFADSFA<br>
															<br>
															<div class="w3-row w3-opacity">
																<div class="w3-half">
																	<button class="w3-button w3-block w3-green w3-section"
																		title="Accept">
																		<i class="fa fa-thumbs-up"></i>
																	</button>
																</div>
																<div class="w3-half">
																	<form method="get" action="#openReportE">
																		<button type="submit"
																			class="w3-button w3-block w3-red w3-section"
																			title="Decline">
																			<i class="fa fa-exclamation-triangle"></i>
																		</button>
																	</form>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<br>
						</div>
					</div>
				</div>



				<div class="w3-container w3-card-2 w3-white w3-round w3-margin">
					<br>
					<div>
						<h1 class="heading-2">Your Profile</h1>
						<!--     <div class="tab">
        <button class="tablinks" onclick="openTab(event, 'London')">London</button>
        <button class="tablinks" onclick="openTab(event, 'Paris')">Paris</button>
        <button class="tablinks" onclick="openTab(event, 'Tokyo')">Tokyo</button>
    </div> -->
						<div class="w-tabs" data-duration-in="300" data-duration-out="100">
							<div class="w-tab-menu">
								<a class="w3-button w-inline-block w-tab-link w--current"
									onclick="openTab(event, 'Options')" data-w-tab="Tab 1">
									<div>Options</div>
								</a> <a class="w3-button w-inline-block w-tab-link"
									onclick="openTab(event, 'Emojis')" data-w-tab="Tab 2">
									<div>Emojis</div>
								</a> <a class="w3-button w-inline-block w-tab-link"
									onclick="openTab(event, 'Definiciones')" data-w-tab="Tab 3">
									<div>Definiciones</div>
								</a>
							</div>
							<div class="w-tab-content">

								<div w3-include-html="options.html"></div>

								<div id="Emojis" class="w-tab-pane" data-w-tab="Tab 2"
									style="display: none">
									<div class="section-title-group">
										<h2 class="centered heading">Emojis</h2>
										<div class="section-subheading">Tus emojis favoritos.</div>
									</div>
									<ul class="w-list-unstyled">
										<li class="emoji-list-item">
											<div>
												<div class="container w-container">
													<div class="w-row">
														<div class="w-clearfix w-col w-col-2">
															<img class="image"
																src="http://uploads.webflow.com/58f776cfc914f269a449b21d/58f776cfc914f269a449b246_128-25.jpg"
																width="100">
														</div>
														<div class="w-clearfix w-col w-col-10">
															<h5 class="heading-3">EMOJI NAME</h5>
															<p class="paragraph">"Definicion favorita del emoji o
																la que tu le hayas dado lorem ipsum etctctctctc"</p>
															<a class="remove w-button" href="#">Delete</a>
														</div>
													</div>
												</div>
											</div>
										</li>
										<li class="emoji-list-item">
											<div>
												<div class="container w-container">
													<div class="w-row">
														<div class="w-clearfix w-col w-col-2">
															<img class="image"
																src="http://uploads.webflow.com/58f776cfc914f269a449b21d/58f776cfc914f269a449b246_128-25.jpg"
																width="100">
														</div>
														<div class="w-clearfix w-col w-col-10">
															<h5 class="heading-3">EMOJI NAME</h5>
															<p class="paragraph">"Definicion favorita del emoji o
																la que tu le hayas dado lorem ipsum etctctctctc"</p>
															<a class="remove w-button" href="#">Delete</a>
														</div>
													</div>
												</div>
											</div>
										</li>
										<li class="emoji-list-item">
											<div>
												<div class="container w-container">
													<div class="w-row">
														<div class="w-clearfix w-col w-col-2">
															<img class="image"
																src="http://uploads.webflow.com/58f776cfc914f269a449b21d/58f776cfc914f269a449b246_128-25.jpg"
																width="100">
														</div>
														<div class="w-clearfix w-col w-col-10">
															<h5 class="heading-3">EMOJI NAME</h5>
															<p class="paragraph">"Definicion favorita del emoji o
																la que tu le hayas dado lorem ipsum etctctctctc"</p>
															<a class="remove w-button" href="#">Delete</a>
														</div>
													</div>
												</div>
											</div>
										</li>
									</ul>
								</div>
								<div id="Definiciones" class="w-tab-pane" data-w-tab="Tab 3"
									style="display: none">
									<div class="section-title-group">
										<h2 class="centered heading">Definiciones</h2>
										<div class="section-subheading">El sentido que le das a
											la vida.</div>
									</div>
									<ul class="w-list-unstyled">
										<li class="emoji-list-item">
											<div>
												<div class="container w-container">
													<div class="w-row">
														<div class="w-clearfix w-col w-col-2">
															<img class="image"
																src="http://uploads.webflow.com/58f776cfc914f269a449b21d/58f776cfc914f269a449b246_128-25.jpg"
																width="100">
														</div>
														<div class="w-clearfix w-col w-col-10">
															<h5 class="heading-3">EMOJI NAME</h5>
															<p class="paragraph">"TU Definicion favorita del
																emoji o la que tu le hayas dado lorem ipsum
																etctctctctcTUT TTU "</p>
															<a class="remove w-button" href="#">Delete</a>
														</div>
													</div>
												</div>
											</div>
										</li>
										<li class="emoji-list-item">
											<div>
												<div class="container w-container">
													<div class="w-row">
														<div class="w-clearfix w-col w-col-2">
															<img class="image"
																src="http://uploads.webflow.com/58f776cfc914f269a449b21d/58f776cfc914f269a449b246_128-25.jpg"
																width="100">
														</div>
														<div class="w-clearfix w-col w-col-10">
															<h5 class="heading-3">EMOJI NAME</h5>
															<p class="paragraph">"Definicion favorita del emoji o
																la que tu le hayas dado lorem ipsum etctctctctc"</p>
															<a class="remove w-button" href="#">Delete</a>
														</div>
													</div>
												</div>
											</div>
										</li>
										<li class="emoji-list-item">
											<div>
												<div class="container w-container">
													<div class="w-row">
														<div class="w-clearfix w-col w-col-2">
															<img class="image"
																src="http://uploads.webflow.com/58f776cfc914f269a449b21d/58f776cfc914f269a449b246_128-25.jpg"
																width="100">
														</div>
														<div class="w-clearfix w-col w-col-10">
															<h5 class="heading-3">EMOJI NAME</h5>
															<p class="paragraph">"Definicion favorita del emoji o
																la que tu le hayas dado lorem ipsum etctctctctc"</p>
															<a class="remove w-button" href="#">Delete</a>
														</div>
													</div>
												</div>
											</div>
										</li>
									</ul>
								</div>

							</div>
						</div>
					</div>



				</div>

				<!-- End Middle Column -->
			</div>

			<!-- Right Column -->
			<div class="w3-col m2">

				<div class="w3-card-2 w3-round w3-white w3-center">
					<div class="w3-container">
						<p>
							<strong>Word</strong>
						</p>
						<img src="/w3images/forest.jpg" alt="Emoji" style="width: 100%;">
						<p>Description</p>
						<p>
							<button class="w3-button w3-block w3-theme-l4">Info</button>
						</p>
						<div class="w3-row w3-opacity">
							<div class="w3-half">
								<button class="w3-button w3-block w3-green w3-section"
									title="Accept">
									<i class="fa fa-thumbs-up"></i>
								</button>
							</div>
							<div class="w3-half">
								<form method="get" action="#openReportE">
									<button type="submit"
										class="w3-button w3-block w3-red w3-section" title="Decline">
										<i class="fa fa-exclamation-triangle"></i>
									</button>
								</form>
								<!-- POP UP reportes -->
								<div id="openReportE" class="modalDialog">
									<div>
										<a href="#close" title="Close" class="close">X</a>
										<form action="#" method="post">
											<div style="float: left; width: 100%;">
												<center>
													<h2 style="font-family: 'Abel', 'sans-serif'" id="type">Report
														Emoji</h2>
												</center>
											</div>
											<div>
												<textarea class="textround"
													style="width: 100%; min-height: 200px; background-color: #A9A9A9;"
													type="text" id="def"></textarea>
											</div>
											<button class="round"
												style="max-width: 20%; margin-top: 40px; margin-left: 23%; font-size: 20px; background-color: #A9A9A9;"
												type="submit" id="submit">Cancel</button>
											<button class="round"
												style="max-width: 20%; margin-left: 12%; font-size: 20px; background-color: #A9A9A9;"
												type="submit" id="submit">Submit</button>
										</form>
									</div>
								</div>
								<!-- Fin de POP UP reportes-->
							</div>
						</div>
					</div>
				</div>
				<br>

				<div class="w3-card-2 w3-round w3-white w3-center">
					<div class="w3-container">
						<p>
							<strong>Word</strong>
						</p>
						<img src="/w3images/forest.jpg" alt="Emoji" style="width: 100%;">
						<p>Description</p>
						<p>
							<button class="w3-button w3-block w3-theme-l4">Info</button>
						</p>
						<div class="w3-row w3-opacity">
							<div class="w3-half">
								<button class="w3-button w3-block w3-green w3-section"
									title="Accept">
									<i class="fa fa-thumbs-up"></i>
								</button>
							</div>
							<div class="w3-half">
								<form method="get" action="#openReportD">
									<button class="w3-button w3-block w3-red w3-section"
										title="Decline">
										<i class="fa fa-exclamation-triangle"></i>
									</button>
								</form>
								<!-- POP UP reportes -->
								<div id="openReportD" class="modalDialog">
									<div>
										<a href="#close" title="Close" class="close">X</a>
										<form action="#" method="post">
											<div style="float: left; width: 100%;">
												<center>
													<h2 style="font-family: 'Abel', 'sans-serif'" id="type">Report
														Description</h2>
												</center>
											</div>
											<div>
												<textarea class="textround"
													style="width: 100%; min-height: 200px; background-color: #A9A9A9;"
													type="text" id="def"></textarea>
											</div>
											<button class="round"
												style="max-width: 20%; margin-top: 40px; margin-left: 23%; font-size: 20px; background-color: #A9A9A9;"
												type="submit" id="submit">Cancel</button>
											<button class="round"
												style="max-width: 20%; margin-left: 12%; font-size: 20px; background-color: #A9A9A9;"
												type="submit" id="submit">Submit</button>
										</form>
									</div>
								</div>
								<!-- Fin de POP UP reportes-->
							</div>
						</div>
					</div>
				</div>
				<br>

				<!-- End Right Column -->
			</div>

			<!-- End Grid -->
		</div>

		<!-- End Page Container -->
	</div>
	<br>

	<!-- Footer -->
	<footer class="w3-container w3-theme-d5">
	<p>
		Powered by <a href="https://www.w3schools.com/w3css/default.asp"
			target="_blank">w3.css</a>
	</p>
	</footer>









	<script>
		// Accordion
		function myFunction(id) {
			var x = document.getElementById(id);
			if (x.className.indexOf("w3-show") == -1) {
				x.className += " w3-show";
				x.previousElementSibling.className += " w3-theme-d5";
			} else {
				x.className = x.className.replace("w3-show", "");
				x.previousElementSibling.className = x.previousElementSibling.className
						.replace(" w3-theme-d5", "");
			}
		}

		// Used to toggle the menu on smaller screens when clicking on the menu button
		function openNav() {
			var x = document.getElementById("navDemo");
			if (x.className.indexOf("w3-show") == -1) {
				x.className += " w3-show";
			} else {
				x.className = x.className.replace(" w3-show", "");
			}
		}

		function openTab(evt, tabName) {
			var i, tabcontent, tablinks;
			tabcontent = document.getElementsByClassName("w-tab-pane");
			for (i = 0; i < tabcontent.length; i++) {
				tabcontent[i].style.display = "none";
			}
			tablinks = document.getElementsByClassName("tablinks");
			for (i = 0; i < tablinks.length; i++) {
				tablinks[i].className = tablinks[i].className.replace(
						" active", "");
			}
			document.getElementById(tabName).style.display = "block";
			evt.currentTarget.className += " active";
		}
	</script>

</body>
</html>