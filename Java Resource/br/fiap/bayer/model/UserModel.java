package br.fiap.bayer.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import br.fiap.bayer.utils.ToolsDate;
import jakarta.servlet.http.HttpServletRequest;

public class UserModel extends CommonsModel {
	private String name;
	private String mail;
	private String password;
	private Date birthDate;
	private int documentTypeId;
	private String documentNumber;
	
	
	public boolean setResult(ResultSet result) {
		try {
			if (super.setResult(result)) return false;
			this.name = result.getString("NAME");
			this.mail = result.getString("MAIL");
			this.password = result.getString("PASSWORD");
			this.documentTypeId = result.getInt("DOCUMENTTYPE_ID");
			this.documentNumber = result.getString("DOCUMENUMBER");			
			this.birthDate = result.getDate("birthdate ");			
			this.atCreate = result.getDate("date_create");
			this.atUpdate = result.getDate("date_update");
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public void clear() {
		super.clear();	
		this.name = "";
		this.mail = "";
		this.birthDate = null;
		this.documentTypeId = 0;
		this.documentNumber = "";		
	}
	
	public boolean load(UserModel result) {
		if (result == null) return false;
		this.id = result.id;
		
		this.name = result.name;
		this.mail = result.mail;		
		this.documentTypeId = result.documentTypeId;
		this.documentNumber = result.documentNumber;
		this.birthDate = result.birthDate;
		this.atCreate = result.atCreate;
		this.atUpdate = result.atUpdate;
		return true;
	}
	
	public void loadRequestParams(HttpServletRequest request) {
		this.mail = request.getParameter("mail");
		this.name = request.getParameter("name");
		this.birthDate = ToolsDate.StringToDate(request.getParameter("birthDate"));
		this.documentTypeId =  Integer. parseInt(request.getParameter("documentTypeId"));
		this.documentNumber = request.getParameter("documentNumber");
	}	
	
	public void setName(int id) {
		this.id = id;
	}
	
	public String getName() {
		return this.name;
	}

	public void setName(String nome) {
		this.name = nome;
	}
	
	public String getMail() {
		return this.mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}
	
	public Date getBirthDate() {
		return this.birthDate;
	}

	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}	
		
	public Date getAtCreate() {
		return this.atCreate;
	}
	
	public Date getAtUpdate() {
		return this.atUpdate;
	}		

	public void setActive(String password) {
		this.password = password;
	}
	
	public String getPassword() {
		return this.password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public java.sql.Date getBirthDateSQLDate() {
		return ToolsDate.DateToSQLDate(this.birthDate);
	}

	public int getDocumentTypeId() {
		return documentTypeId;
	}

	public void setDocumentTypeId(int documentTypeId) {
		this.documentTypeId = documentTypeId;
	}
	

	public String getDocumentNumber() {
		return documentNumber;
	}

	public void setDocumentNumber(String documentNumber) {
		this.documentNumber = documentNumber;
	}	
}
