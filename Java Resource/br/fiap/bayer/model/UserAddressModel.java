package br.fiap.bayer.model;

import java.sql.ResultSet;
import java.sql.SQLException;

public class UserAddressModel extends CommonsModel {
	private int userId;
	private String zipCode;
	private String address;
	private int number;
	private String district;
	private String city;
	private String state;
	private String unit;
	private String complement;
	public boolean setResult(ResultSet result) {
		try {
			if (super.setResult(result)) return false;
			this.userId = result.getInt("user_id");
			this.address = result.getString("address");
			this.zipCode = result.getString("zip_code");
			this.number = result.getInt("number");
			this.complement = result.getString("complement");
			this.district = result.getString("district");
			this.city = result.getString("city");
			this.state = result.getString("state");
			this.unit = result.getString("unit");
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public void clear() {
		super.clear();		
		this.address = " ";
		this.zipCode = " ";
		this.number = 0;
		this.complement = " ";
		this.district = " ";
		this.city = " ";
		this.state = " ";
		this.unit = " ";
	}
	
	public int getUserId() {
		return this.userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getZipCode() {
		return this.zipCode;
	}

	public void setZipCode(String zipCode) {
		this.zipCode = zipCode;
	}

	public int getNumber() {
		return this.number;
	}

	public void setNumber(int number) {
		this.number = number;
	}
	
	public String getDistrict() {
		return this.district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}
	
	
	public String getCity() {
		return this.city;
	}

	public void setCity(String city) {
		this.city = city;
	}
	
	
	public String getState() {
		return this.state;
	}

	public void setState(String state) {
		this.state = state;
	}
	
	public String getUnit() {
		return this.unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}
	
	
	public String getComplement() {
		return this.complement;
	}

	public void setComplement(String complement) {
		this.complement = complement;
	}
}