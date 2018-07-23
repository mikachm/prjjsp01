<jsp:include page="header.jsp"/>
<div id=wrapper>
<div id="maComptine">
<p>"1 kilomètre à pied, ça use, ça use"</p>
<p>"1 kilomètre à pied, ça use les souliers"</p>
<% for(int k=2; k<=15; k++){%>
<p>"<%=k %> kilomètres à pied, ça use, ça use"</p>
<p>"<%=k %> kilomètres à pied, ça use les souliers"</p>
<%} %>
</div>

<div id="sumoy">

<form id="form1" method="post" action="">
<label>Taper un entier n > 0</label>
<input id="" type="number"  name="saisie" required value="0" class=""/><br>
<input id="" type="submit" action="" value="Valider" class=""/>
</form>
<% 
boolean creeform = false;
int saisie = 0;

if(request.getParameter("saisie")!= null){
	try{
		saisie = Integer.parseInt(request.getParameter("saisie"));
		out.print("<h2>valeur saisie: "+saisie+"</h2>");
		creeform = true;
	}
	catch(Exception e){
	out.print("<h2>Attention Erreur de saisie!</h2>");
	creeform = false;
	}
}else{
	out.print("<h2>Attention pas de saisie!</h2>");
	creeform = false;
}
%>
<%
if(creeform == true){%>
<form id="form2" method="post" action="">
<label>Tapez <%= saisie %> entiers séparées par un espace</label>
<input id="" type="text" required name="listValues" value="0" class=""></input>
<input id="" type="submit" action="" name=""value="Valider" class=""></input>
</form>
<%
if ( request.getParameter("listValues")!= null && request.getParameter("listValues")!="")
{
	try{
	String seq = request.getParameter("listValues");
	
	String[] seqSplitted = seq.split(" ");
	int [] seqEntiers = new int[seqSplitted.length];
	for (int i=0; i<seqSplitted.length; i++){
			seqEntiers[i] = Integer.parseInt(seqSplitted[i]);
			out.print("|"+seqEntiers[i]);
			}
			out.print("|");		
			
	int somme = 0;
	for(int i=0; i<seqEntiers.length;i++){
			somme = somme + seqEntiers[i];
			}
	out.print("<h2>Somme: "+somme+"</h2>");
	
	float moyenne = 0;
	moyenne = (float)somme/seqEntiers.length;
	out.print("<h2>Moyenne: "+moyenne+"</h2>");
	
		}catch(Exception e)
			{out.print("<h2>Exception</h2>");}
			
	}else{out.print("<h2>Erreur de saisie</h2>");}

}
	
	%>



</div><!-- sumoy -->
</div><!-- wrapper -->

<%-- body fermé par le header  --%>

<jsp:include page="footer.jsp" />