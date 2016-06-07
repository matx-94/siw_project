package controller;



import java.util.List;

import javax.ejb.EJB;
import javax.ejb.EJBException;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.SessionScoped;

import model.Amministratore;
import model.AmministratoreFacade;




@ManagedBean(name="amministratoreController")
@SessionScoped
public class AmministratoreController {
	
	@EJB(beanName="amministratoreFacade")
	private AmministratoreFacade amministratoreFacade;
	
	private Long id;

	private String userName;
	private String password;
	private String loginErr;
	private Amministratore amministratore;
	private List<Amministratore> amministratori;
	public String validate(){
		try {this.amministratore = amministratoreFacade.validate(userName, password);}
		catch (EJBException e) {
			this.loginErr = "Username o Password errati";
			return "loginAmministratore.jsp"; //da creare
		} 
			return "amministratore.jsp"; //da creare
		}

	public AmministratoreFacade getAmministratoreFacade() {
		return amministratoreFacade;
	}

	public void setAmministratoreFacade(AmministratoreFacade amministratoreFacade) {
		this.amministratoreFacade = amministratoreFacade;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getLoginErr() {
		return loginErr;
	}

	public void setLoginErr(String loginErr) {
		this.loginErr = loginErr;
	}

	public Amministratore getAmministratore() {
		return amministratore;
	}

	public void setAmministratore(Amministratore amministratore) {
		this.amministratore = amministratore;
	}
	
	public List<Amministratore> getAmministratori() {
		return amministratori;
	}

	public void setAmministratori(List<Amministratore> amministratori) {
		this.amministratori = amministratori;
	}
	
	public String listAmministratori() {
		this.amministratori = amministratoreFacade.getAllAmministratori();
		return "amministratori"; 
	}
	public String findAmministratore(Long id) {
		this.amministratore = amministratoreFacade.getAmministratore(id);
		return "amministratore";
	}
	
}