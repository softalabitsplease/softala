<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lisää koulutus</title>
</head>
<body>
	<h1>Lisää koulutus</h1>
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
					placeholder="Syötä koulutuksen aihe" /></td>
			</tr>
			<br>
			<tr>
				<td>Alkamisaika</td>
				<td><input type="datetime" name="alkamisaika"
					placeholder="Syötä koulutuksen alkamisaika" /></td>
			</tr>
			<br>
			<tr>
				<td>Päättymisaika</td>
				<td><input type="datetime" name="paattymisaika"
					placeholder="Syötä koulutuksen päättymisaika" /></td>
			</tr>
			<br>
			<tr>
				<td>Paikka</td>
				<td><input type="text" name="paikka"
					placeholder="Syötä koulutuksen paikka" /></td>
			</tr>
			<br>
			<!--  <tr>
				<td>Opettaja</td>
				<td><input type="text" name="opettaja"
					placeholder="Syötä koulutuksen opettaja" /></td>
			</tr>-->
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
</body>
Bits Please 2015
</html>