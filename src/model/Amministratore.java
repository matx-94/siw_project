package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class Amministratore { //aggiungere vari fetch
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long id;

	@Column(nullable = false)
	private String username;

	@Column(nullable = false)
	private String password;
	
	@Column(nullable = false)
	private String ruolo;
	
	public Amministratore(){}
		
	public Amministratore (String username, String password) {
		this.username = username;
		this.password = password;
		this.ruolo = new String("admin");
	}
	
	public boolean verificaPassword(String password) {
		return this.password.equals(password);
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getRuolo() {
		return ruolo;
	}

	public void setRuolo(String ruolo) {
		this.ruolo = ruolo;
	}
	
	

}