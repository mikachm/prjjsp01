<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="JSP/bandeau.jsp"></jsp:include>
<body class="container">
<% 
/** Déclarations globales à la page ! **/
	boolean creeform = false;
	int saisie = 0;
%>
<% if(request.getParameter("saisie") != null) { 
	
	try {
		saisie = 
			Integer.parseInt(request.getParameter("saisie"));
		out.print("<h1 class='bg-success'>"+saisie+"</h1>");
		/** Test de la valeur de saisie **/
		creeform = true;
	}
	catch(Exception e)
	{
		out.print("<h1 class='bg-danger'>Erreur de saisie !</h1>");
	}
%>
 
<% } else {  
	out.print("<h1 class='bg-danger'>Pas de saisie faite !</h1>");
} %>
<form method="post" action="">
	 <div class="form-group">
	<label for="saisie">Nombre :</label>
	<input class="form-control" type="number" name="saisie" 
	required value="0"/>
	</div>
	
	<input type="submit" class="btn btn-default"value="ok"/>
</form>

<% if(creeform==true) {%>
<form method="post" action="moyenne.jsp">
<input type="hidden" name="saisie" value="<%=saisie%>">
<h1>Formulaire de saisie pour la moyenne</h1>
	<%
		for(int i=0;i<saisie;i++)
		{
	out.print("<input class='form-control' "+
			"type='number' name='moy_"+i+
			"' required value='0'/>");
		}
	%>
	<input type="submit" class="btn btn-default"value="ok"/>
</form>
<% } %>
</body>
</html>