package br.fiap.bayer;

import br.fiap.bayer.db.ConnectionManager;
import br.fiap.bayer.db.*;

public class Institution extends DbInstitution {
	public InstitutionAddress address;
	private String messageError;
	
	public Institution(ConnectionManager connectionManager) {
		super(connectionManager);
	}

	public void addAddress() {
		this.address.row.setInstutitionId(this.row.getId());
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

	
}
