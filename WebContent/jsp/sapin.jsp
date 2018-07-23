
<jsp:include page="header.jsp"/>
<div id=""wrapper>

<form id="sapin" method="post" action="">
<label>Nombre d'étoiles:</label>
<input id="" type="number" required name="nbEtoiles" value="0" class=""></input>
<input id="" type="submit" action="" name=""value="Valider" class=""></input>
</form>
<div id="sapin">
<%

if(request.getParameter("nbEtoiles") != null ){
	try{
		int nbEtoiles = Integer.parseInt(request.getParameter("nbEtoiles"));
		
		for (int hauteur = 1; hauteur <= nbEtoiles; hauteur++){
			
		//Ligne de n étoiles
		for (int i = 1; i <= hauteur; i++){
			out.print("*");
			}
		out.print("<br/>");
		}
			


		
					
	}catch(Exception e){
		out.print("Erreur de saisie n°1");
	}
}else{
	out.print("erreur de saisie n°2");}
%>
</div>
</div><!-- fin wrapper -->

<jsp:include page="footer.jsp"/>