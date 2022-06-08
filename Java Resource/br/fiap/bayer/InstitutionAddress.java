package br.fiap.bayer;



import br.fiap.bayer.db.*;

public class InstitutionAddress extends DbInstitutionAddress {
	public InstitutionAddress(ConnectionManager connectionManager, int intitution_id) {
		super(connectionManager, intitution_id);		
	}
}
