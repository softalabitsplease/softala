<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<!-- Latest compiled and minified CSS -->
<link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
<!-- Optional theme -->
<link rel="stylesheet" href="./bootstrap/css/bootstrap-theme.min.css">
<!-- Datepicker CSS -->
<link href="./datepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">

<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootswatch/3.3.5/yeti/bootstrap.min.css"> -->
<!-- Google fontit -->
<link href='https://fonts.googleapis.com/css?family=Lato|Source+Sans+Pro:300|Open+Sans+Condensed:300' rel='stylesheet' type='text/css'>
<!-- Custom CSS -->
<link rel="stylesheet" href="styles/styles.css">

<!-- jQuery -->
<script type="text/javascript" src="./jquery/jquery-1.8.3.min.js" charset="UTF-8"></script>
<!-- Latest compiled and minified JavaScript -->
<script type="text/javascript" src="./bootstrap/js/bootstrap.min.js"></script>
<!-- Datepicker -->
<script type="text/javascript" src="./datepicker/js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
<script type="text/javascript" src="./datepicker/js/locales/bootstrap-datetimepicker.fr.js" charset="UTF-8"></script>

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
					 <li><a href="koulutukset">Koulutukset</a></li>
        			<li class="active"><a href="lomake.jsp">Lisää koulutus</a></li>
        			<li><a href=>Hallinnointi</a></li>
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
		<%
			String lisatty = request.getParameter("lisatty");
			if (lisatty != null && lisatty.equals("true")) {
		%>
		Koulutus lisätty!
		<%
			}
		%>





		<form action="koulutukset" method="post" class="form-horizontal"
			role="form">



			<div class="form-group">
				<label class="control-label col-sm-2" for="aihe">Aihe:</label>
				<div class="col-sm-4">

					<input type="text" name="aihe" class="form-control"
						placeholder="Syötä koulutuksen aihe" required>

				</div>
			</div>




			<div class="form-group">
				<label for="kouluttaja" class="col-sm-2 control-label">Kouluttaja:</label>
				<div class="col-sm-4">
					<select id="country" class="form-control">
						<option>Yksi</option>
						<option>Kaksi</option>
						<option>Kolme</option>
						<option>Neljä</option>
						<option>Viisi</option>
					</select>
				</div>
			</div>


            <div class="form-group">
            	<label for="pvm" class="col-sm-2 control-label">Päivämäärä:</label>
                <div class="input-group date form_date col-sm-4" data-date="" data-date-format="dd MM yyyy" data-link-field="pvm" data-link-format="yyyy-mm-dd">
                    <input class="form-control" type="text" value="" readonly>
                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
					<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
                </div>
                <input type="hidden" id="pvm" value="" /><br/>
            </div>


			<div class="form-group">
				<label for="aika" class="col-sm-2 control-label">Aika:</label>
				<div class="col-sm-1">
					<select id="aika" class="form-control">
						<option>08</option>
						<option>09</option>
						<option>10</option>
						<option>11</option>
						<option>12</option>
						<option>13</option>
						<option>14</option>
						<option>15</option>
						<option>16</option>
					</select>
				</div>
				<div class="col-sm-1">
					<select id="aika" class="form-control">
						<option>00</option>
						<option>15</option>
						<option>30</option>
						<option>45</option>
					</select>	
						
				</div>

			

				<div class="col-sm-1">
				
					<select id="aika" class="form-control">
						<option>08</option>
						<option>09</option>
						<option>10</option>
						<option>11</option>
						<option>12</option>
						<option>13</option>
						<option>14</option>
						<option>15</option>
						<option>16</option>
					</select>
				</div>

				<div class="col-sm-1">
					<select id="aika" class="form-control">
						<option>00</option>
						<option>15</option>
						<option>30</option>
						<option>45</option>
					</select>
				</div>

			</div>





			<div class="form-group">
				<label for="paikka" class="col-sm-2 control-label">Paikka:</label>
				<div class="col-sm-4">
					<select id="paikka" class="form-control">
						<option>h5009</option>
						<option>h5008</option>
						<option>h1001</option>
						<option>h2400</option>
						<option>h4007</option>
					</select>
				</div>
			</div>


		
			
			
			
			
			<div class="form-group">
				<label for="opettaja" class="col-sm-2 control-label">Opettaja:</label>
				<div class="col-sm-4">
					<select id="country" class="form-control">
						<option>Yksi</option>
						<option>Kaksi</option>
						<option>Kolme</option>
						<option>Neljä</option>
						<option>Viisi</option>
					</select>
				</div>
			</div>
			
			
			
			
				<div class="form-group">
				<label class="control-label col-sm-2" for="opettaja">Kuvaus:</label>
				<div class="col-sm-4">
					<input type="text" name="opettaja_id" class="form-control"
						placeholder="Syötä kuvaus" required>
				</div>
			</div>


			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">Lisää</button>
				</div>
			</div>

		</form>
















		<!-- ALKUPERÄINEN FORMI -->

		<!--<tr>
				<td>Kouluttaja</td>
				<td><input type="text" name="kouluttaja"
					placeholder="Syötä kouluttajan nimi" /></td>
			</tr> -->




		<!--  <br>
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
			</tr>
			<br>
			<tr>
				<td><button type="submit">Lisää</button></td>
			</tr>
		</table> -->




		<hr id="viiva">

		<footer>
			<p>&copy; Bits Please 2015</p>
		</footer>
	</div>
	<!-- /container -->


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="../../dist/js/bootstrap.min.js"></script> -->
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
	<!-- Datepicker -->
	<script type="text/javascript">
	$('.form_date').datetimepicker({
        language:  'fi',
        weekStart: 1,
        todayBtn:  1,
		autoclose: 1,
		todayHighlight: 1,
		startView: 2,
		minView: 2,
		forceParse: 0
    });
	</script>	
</body>
</html>
