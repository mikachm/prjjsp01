<%--
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Accueil</title>
</head>
--%>
<jsp:include page="header.jsp" />
<div id=wrapper>
<div>
<h1>Affichage information client</h1>
<%="Protocol: "+request.getProtocol() %><br>
<%="Character Encoding: "+request.getCharacterEncoding()%><br/>
<%="port: "+request.getServerPort() %><br>
<%="Local: "+request.getLocale().getDisplayCountry() %><br/>
<a href="index.jsp"> Vers mon d'index!</a>

</div>
</div><!-- wrapper -->
</body>
</html>