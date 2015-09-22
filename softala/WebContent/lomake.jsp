<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>


<html>
<head>

<!--  <meta charset="ISO-8859-1"> -->

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">


<!-- The above 3 meta tags must come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">




<title>Softala | Koulutukset</title>





<!-- Latest compiled and minified CSS SS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>


<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.5/yeti/bootstrap.min.css">


<!-- Google fontit -->


<link rel="stylesheet" href="styles/styles.css">


</head>





<body>

	<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#navbar" aria-expanded="false"
				aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Koulutusjärjestelmä</a>
		</div>
		
		  <div>
      <ul class="nav navbar-nav">
        <li><a href="etusivu.html">Etusivu</a></li>
      </ul>
    </div>
		<div id="navbar" class="navbar-collapse collapse">
			<!-- Login -->
			<!-- <form class="navbar-form navbar-right">
            <div class="form-group">
              <input type="text" placeholder="Email" class="form-control">
            </div>
            <div class="form-group">
              <input type="password" placeholder="Password" class="form-control">
            </div>
            <button type="submit" class="btn btn-success">Sign in</button>
          </form> -->
		</div>
		<!--/.navbar-collapse -->
	</div>
	</nav>

	<div id="jumbotroni" class="jumbotron">
		<div class="container">
			<h1>Softala - Lisää koulutus</h1>
			<p>Täällä pystyt lisäämään koulutuksia.</p>
		
		</div>
	</div>


	<div id="section1" class="container">
	
	<h1>Lisää koulutus</h1>
	<% String lisatty = request.getParameter("lisatty");
	  if(lisatty != null && lisatty.equals("true")){
	  %>
	 	Koulutus lisätty!
	  <%} %>
	<form action="koulutukset" method="post">
		<table>
			<!--<tr>
				<td>Kouluttaja</td>
				<td><input type="text" name="kouluttaja"
					placeholder="Syötä kouluttajan nimi" /></td>
			</tr> -->
			<br>
			<tr>
				<td>Aihe</td>
				<td><input type="text" name="aihe"
					placeholder="Syötä koulutuksen aihe" required/></td>
			</tr>
			<br>
			<tr>
				<td>Alkamisaika</td>
				<td><input type="datetime" name="alkamisaika"
					placeholder="Syötä koulutuksen alkamisaika" required /></td>
			</tr>
			<br>
			<tr>
				<td>Päättymisaika</td>
				<td><input type="datetime" name="paattymisaika"
					placeholder="Syötä koulutuksen päättymisaika" required /></td>
			</tr>
			<br>
			<tr>
				<td>Paikka</td>
				<td><input type="text" name="paikka_id"
					placeholder="Syötä koulutuksen paikka" required/></td>
			</tr>
			<br>
			<tr>
				<td>Opettaja</td>
				<td><input type="text" name="opettaja_id"
					placeholder="Syötä koulutuksen opettaja" required/></td>
			</tr>
			<br>
			<!--   <tr>
				<td>Kuvaus</td>
				<td><input type="text" name="kuvaus"
					placeholder="Syötä koulutuksen kuvaus" /></td>
			</tr>-->
			<br>
			<tr>
				<td><button type="submit">Lisää</button></td>
			</tr>
		</table>
	</form>
	
	
	
<hr id="viiva">

		<footer>
		<p>&copy; Bits Please 2015</p>
		</footer>
	</div>
	<!-- /container -->


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="../../dist/js/bootstrap.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
