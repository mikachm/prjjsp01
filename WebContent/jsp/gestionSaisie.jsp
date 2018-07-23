<jsp:include page="header.jsp" />
<body>
<div id=wrapper>
<form method="post" action="gestionSaisie.jsp">
<label>Taper un entier n > 0</label>
<input id="" type="number"  name="saisie" required value="0" class=""/><br>
<input id="" type="submit" action="" value="Valider" class=""/>
</form>

<%
if(request.getParameter("saisie")!= null){
	try{
		int saisie = Integer.parseInt(request.getParameter("saisie"));
		out.print("<h2>valeur saisie: "+saisie+"</h2>");
	}
	catch(Exception e){
	out.print("<h2>Attention Erreur de saisie!</h2>");
	}
}else{out.print("<h2>Attention pas de saisie!</h2>");
}%>
</div><!-- wrapper -->
<jsp:include page="footer.jsp" />