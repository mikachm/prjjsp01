<%--
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
--%>
<jsp:include page="header.jsp" />
<div id=wrapper>
<div>
<a href="index.jsp"> Vers ma page d'acceuil!</a>

<form method="post" action="table.jsp">
<label>Nombre de colonnes</label><input id="" type="text" name="nbCol" value="" class=""></input>
<label>Nombre de lignes</label><input id="" type="text" name="nbRow" value="" class=""></input>
<input id="" type="submit" action="" name=""value="Valider" class=""></input>
</form>



<%
int nbCol;
int nbRow;
if(request.getParameter("nbCol")!= null && request.getParameter("nbCol")!= "" ){
	nbCol = Integer.parseInt(request.getParameter("nbCol"));
	}else{ 
		nbCol=4;
			}

if(request.getParameter("nbRow")!= null && request.getParameter("nbRow")!= "" ){
	nbRow = Integer.parseInt(request.getParameter("nbRow"));
	}else { 
		nbRow=10;
		}
%>

<table>
<thead>
	<tr>
		<% for(int i=1;i<=nbCol;i++) {%>
			<th><%="COl:"+i %></th>
			<% } %>
	</tr>
</thead>

<tbody>
	<% for(int i=0;i<nbRow;i++) { %>
		<tr><% for(int j=1;j<=nbCol;j++) {%>
			<th><%="contenu:"+i + "-"+j%></th>
			<% } %></tr>
			<% } %>
</tbody>
</table>
</div>
</div><!-- wrapper -->
<jsp:include page="footer.jsp"/>