package br.fiap.bayer.model;

import java.sql.ResultSet;
import java.sql.SQLException;

public class OcorrenceStatisticModel extends CommonsModel  {	
	private String alertPoint;
	private String category;
	private String locationType;
	private int value;
	
	
	public boolean setResult(ResultSet result) {
		try {	
			this.setAlertPoint(result.getString("alertPoint"));
			this.setCategory(result.getString("category"));
			this.setLocationType(result.getString("locationType"));
			this.setValue(result.getInt("value"));
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public void clear() {
		super.clear();
		this.setAlertPoint(null);
		this.setCategory(null);
		this.setLocationType(null);
	}

	public String getAlertPoint() {
		return this.alertPoint;
	}

	public void setAlertPoint(String alertPoint) {
		this.alertPoint = alertPoint;
	}

	public String getCategory() {
		return this.category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getLocationType() {
		return this.locationType;
	}

	public void setLocationType(String locationType) {
		this.locationType = locationType;
	}

	public int getValue() {
		return this.value;
	}

	public void setValue(int value) {
		this.value = value;
	}
}
