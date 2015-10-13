<a class="navbar-brand" href="etusivu.html"><b>Koulutusjärjestelmä</b></a>

			</div>
			
			<div>
      <ul class="nav navbar-nav">
        <li><a href="etusivu.html"><b>Etusivu</b></a></li>
        <li><a href="koulutukset.jsp"><b>Koulutukset</b></a></li>
        <li><a href="lomake.jsp"><b>Lisää koulutus</b></a></li>
        <li><a href="lol dunno"><b>Hallinnointi</b></a></li>
      </ul>
    </div>














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
	
	<!-- Google fontit -->

 <link href='https://fonts.googleapis.com/css?family=Lato|Source+Sans+Pro:300|Open+Sans+Condensed:300' rel='stylesheet' type='text/css'>

<!-- Tyylitiedosto -->
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
		<a class="navbar-brand" href="etusivu.html">Koulutusjärjestelmä</a>
			</div>

			<div>
				<ul class="nav navbar-nav">
					<li><a href="etusivu.html">Etusivu</a></li>
					 <li><a href="koulutukset"><b>Koulutukset</b></a></li>
        			<li><a href="lomake.jsp"><b>Lisää koulutus</b></a></li>
        			<li><a href=><b>Hallinnointi</b></a></li>
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
			<h1>Softala - Koulutukset</h1>
			<p>Täältä löydät kaikki Softalan tulevat koulutukset...</p>
		
		</div>
	</div>


	<div id="section1" class="container">
	<form action="poistoServlet" method="post">
		<table class="table" >
			<thead>
				<tr>
					<th>Koulutus ID</th>
					<th>Aihe</th>
					<th>Aika</th>
					<th>Paikka</th>
					<th>Kouluttaja</th>
					<th>Opettaja</th>
					<th>Kuvaus</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${koulutukset}" var="koulutus">
					<tr class="taulurow">
						<td><c:out value="${koulutus.koulutus_id}"/></td>
						<td><c:out value="${koulutus.aihe}"/></td>
						<td><c:out value="${koulutus.alkamisaika}"/> - <c:out value="${koulutus.paattymisaika}"/></td>
						<td><c:out value="${koulutus.paikka}"/></td>
						<td>KOULUTTAJA </td>
						<td><c:out value="${koulutus.opettajanNimi}"/></td>
						<td><c:out value="${koulutus.kuvaus}"/></td>
						<td>&nbsp;<td><button type="submit" value="${koulutus.koulutus_id}" name="poistaKoulutusId">Poista</button></td>
					</tr>
				</c:forEach>
			</tbody>
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
	<script src="scripti.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>
