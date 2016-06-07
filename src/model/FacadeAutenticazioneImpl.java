package model;


public class FacadeAutenticazioneImpl implements FacadeAutenticazione {

	@Override
	public Amministratore login(String username, String password) {
	
		Amministratore am = new Amministratore();
		if (am.getUsername().equals(username)&&am.getPassword().equals(password)){
			return am;
		}
			 
	return null;
	}
}
