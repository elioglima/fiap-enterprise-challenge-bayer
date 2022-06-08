package br.fiap.bayer;

import java.util.Base64;
import java.util.Date;

import br.fiap.bayer.db.ConnectionManager;
import br.fiap.bayer.db.DbUser;

public class User extends DbUser {
	private String messageError;
	public UserAddress address;
	private boolean isLogged;
	
	public User(ConnectionManager connectionManager) {
		super(connectionManager);
	}
	
	@Override
	public boolean loadData() {
		if (!super.loadData()) return false;
		this.address = new UserAddress(this.connectionManager, this.row.getId());
		return true;		
	}
	
	public void addressFindAll() {
		this.address.row.setUserId(this.row.getId());
		this.address.findAll(100);
	}
	
	public void addAddress() {
		this.address.row.setUserId(this.row.getId());
		this.address.append();		
	}
	
	public void editAddress() {
		this.address.edit();		
	}

	public void saveAddress() {
		this.address.post();		
		
	}

	public String getMessageError() {
		return messageError;
	}

	public void setMessageError(String messageError) {
		this.messageError = messageError;
	}

	
	public boolean logIn(String mail, String password) {		
		setMessageError(null);
		
		if (!this.FindMail(mail)) {
			this.setLogged(false);
			setMessageError("Usuário não localizado ou Senha errada!!");			
			return false;
		}
		
		this.setLogged(true);
		this.loadData();
		
		try {
			return password.equals(this.row.getPassword());			
		} catch (Exception e) {
			setMessageError("Falha ao localizar usuario.");
			return false;
		}		
	}	
	
	
	public boolean register(String mail, String password, String name, String phoneMobile, Date birthDate) {
		this.setLogged(false);
		
		this.append();
		this.row.setMail(mail);
		this.row.setPassword(password);
		this.row.setName(name);
		if (!this.post()) {			
			System.err.println("Falha ao cadastrar usuário.");
			return false; 
		}
		
		System.err.println("Usuario Logado.");
		return this.logIn(mail, password);
	}

	public boolean isLogged() {
		return isLogged;
	}

	public void setLogged(boolean isLogged) {
		this.isLogged = isLogged;
	}

	
	
}
