<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Accueil Projet 01</title>
<link rel="stylesheet" type="text/css" href="css/styleCorr.css">
</head>
<body>
<h1>
<a href="index.jsp">Index</a><br/>
</h1>
<br/>
<hr/>
<% 
int colmax=5,ligmax=10;
if(request.getParameter("colmax")!=null)
{
    colmax = Integer.parseInt(request.getParameter("colmax"))+1;
}
if(request.getParameter("ligmax")!=null)
{
    ligmax = Integer.parseInt(request.getParameter("ligmax"));
}
%>
<form method="post" action="table.jsp">
    <label>Nombre de colonnes</label><input type="text" name="colmax" value="<%=colmax-1%>"><br/>
    <label>Nombre de lignes</label><input type="text" name="ligmax" value="<%=ligmax%>"><br/>
    <input type="submit" value="Valider">
</form>
<hr/>

<table border="1">
<thead>
<tr>
<% for(int i=1;i<colmax;i++) {%>
<th><%="COl:"+i %></th>
<% } %>
</tr>
</thead>
<tbody>
<% for(int i=0;i<ligmax;i++) { %>
<tr><% for(int j=1;j<colmax;j++) {%>
<th><%="contenu:"+i + "-"+j%></th>
<% } %></tr>
<% } %>
</tbody>
</table>
</body>