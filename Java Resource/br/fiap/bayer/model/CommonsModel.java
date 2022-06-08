package br.fiap.bayer.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import br.fiap.bayer.interfaces.*;
import br.fiap.bayer.utils.ToolsDate;

public class CommonsModel implements ICommonsModel  {
	public int id;	
	public String description;
	public Date atCreate;
	public Date atUpdate;	
	
	@Override
	public boolean setResult(ResultSet result) {
		try {
			if (result == null) return false;
			this.id = result.getInt("id");
			this.atCreate = result.getDate("date_create");
			this.atUpdate = result.getDate("date_update");
			this.description = result.getString("description");
			return true;
		} catch (SQLException e) {
//			e.printStackTrace();
			
		}
		return false;
	}	
	
	public void clear() {
		this.id = 0;
		this.description = "";
		this.atCreate = null;
		this.atUpdate = null;
	}
		
	public void setId(int id) {
		this.id = id;
	}
	
	public int getId() {
		return this.id;
	}
	
	public Date getAtCreate() {
		return this.atCreate;
	}
	
	public Date getAtUpdate() {
		return this.atUpdate;
	}

	public void setAtUpdate(Date atUpdate) {
		this.atUpdate = atUpdate;
	}	
	
	public void setAtCreate(Date atCreate) {
		this.atCreate = atCreate;
	}

	public java.sql.Date getAtUpdateSQLDate() {
		return ToolsDate.DateToSQLDate(this.atUpdate);
	}
	
	public java.sql.Date getAtCreateSQLDate() {
		return ToolsDate.DateToSQLDate(this.atCreate);
	}
	
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}	
}
