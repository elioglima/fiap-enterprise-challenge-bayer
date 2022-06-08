package br.fiap.bayer;

import br.fiap.bayer.db.ConnectionManager;
import br.fiap.bayer.db.*;

public class UserAddress extends DbUserAddress {
	public UserAddress(ConnectionManager connectionManager, int idController) {
		super(connectionManager, idController);		
	}

	public void setAddress(String string) {
		this.row.setAddress(string);
	}

	public void setNumber(int i) {
		this.row.setNumber(i);		
	}

	public void setZipCode(String string) {
		this.row.setZipCode(string);		
	}

	public void setDistrict(String string) {
		this.setDistrict(string);		
	}

	public void setCity(String string) {
		this.setCity(string);		
	}

	public void setState(String string) {
		this.setState(string);		
	}

	public void setUnit(String string) {
		this.setUnit(string);		
	}

	public void setComplement(String string) {
		this.setComplement(string);		
	}
}
