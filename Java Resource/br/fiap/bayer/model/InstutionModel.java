package br.fiap.bayer.model;

import java.sql.ResultSet;
import java.sql.SQLException;

public class InstutionModel extends CommonsModel  {
	private String socialReason;
	private String cnpj;
	
	public boolean setResult(ResultSet result) {
		try {
			if (!super.setResult(result)) return false;
			this.socialReason = result.getString("socialReason");
			this.cnpj = result.getString("cnpj");
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public void clear() {
		super.clear();
		this.socialReason = "";
		this.cnpj = "";
		this.atCreate = null;
		this.atUpdate = null;
	}
		
	public String getSocialReason() {
		return this.socialReason;
	}

	public void setSocialReason(String socialReason) {
		this.socialReason = socialReason;
	}		
	
	public String getCNPJ() {
		return this.cnpj;
	}

	public void setCNPJ(String cnpj) {
		this.cnpj = cnpj;
	}	
}
