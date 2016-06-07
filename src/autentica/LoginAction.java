package autentica;
import javax.servlet.*;
import javax.servlet.http.*;

import model.Amministratore;
import model.FacadeAutenticazione;
import model.FacadeAutenticazioneImpl;

public class LoginAction {

	public LoginAction(){}

	public String esegui(HttpServletRequest request)
	  throws ServletException  {
		FacadeAutenticazione authService = new FacadeAutenticazioneImpl();
		String username = request.getParameter("userName");
		String password = request.getParameter("password");
		Amministratore amministratore = authService.login(username, password);
		if (amministratore!=null) {
			HttpSession session = request.getSession();
			session.setAttribute("amministratore",amministratore);
			return "OK";
		} else
			return "KO";
	}
}