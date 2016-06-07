<%@ page import="service.*" %>
<% Amministratore amministratore = (Amministratore)session.getAttribute("amministratore");
   boolean autorizzato = true;
   if (amministratore!=null)
	   autorizzato &= (amministratore.getRuolo().equals("admin"));
   else 
   	   autorizzato = false;
   if (!autorizzato) {
   	   out.clear();
	   RequestDispatcher rd = application.getRequestDispatcher("/fallimento.jsp");
   	   rd.forward(request, response);
	   return;
	}
%>
<!DOCTYPE html>
<html>
  <head>
    <title> … </title>
  <link rel="stylesheet" type="text/css" href="uniroma3.css" />
  </head>
  <body>
    <div>Ciao, sei qui come <%= amministratore.getRuolo() %></div>


</body>
</html>