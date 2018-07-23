<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<jsp:include page="JSP/bandeau.jsp"></jsp:include>
<body>
<% 
/** Déclarations globales à la page ! **/
	boolean creeform = false;
	int saisie = 0;
	int tabmoyenne[] = new int[0]; 
	int somme = 0;
	float moyenne =0;
%>
<% if(request.getParameter("saisie") != null) { 
	
	try {
		saisie = 
			Integer.parseInt(
				request.getParameter("saisie"));
		if(saisie <1) {throw new Exception("message d'errerur");}
		tabmoyenne = new int[saisie]; 

		for(int i=0;i<saisie;i++)
		{
			/** moy_ **/
			if(request.getParameter("moy_"+i) != null) {
				tabmoyenne[i] = Integer.parseInt
						(request.getParameter("moy_"+i));
	
			}
			
		}
		creeform = true;
	}
	catch(Exception e)
	{
		out.print("<h1 class='bg-danger'>Erreur de saisie de moyenne !</h1>");
	}
%>
 
<% } else {  
	out.print("<h1 class='bg-danger'>Pas de saisie faite !</h1>");
} %>

<% if(creeform == true) { 
	somme = 0;
	for(int i=0;i<saisie;i++) somme+= tabmoyenne[i];
	moyenne = (float)(somme/saisie); %>
	<span class="bg-info">Somme : <%=somme%></span>
	<br/>
	<span class="bg-info">Moyenne : <%=moyenne%></span>
<% } %>
</body>
</html>