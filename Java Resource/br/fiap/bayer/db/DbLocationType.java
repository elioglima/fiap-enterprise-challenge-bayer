package br.fiap.bayer.db;

import java.util.Date;

import br.fiap.bayer.model.*;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DbLocationType extends InstanceManager implements IController {
	private String select = "select * from bayer_locationtype ";
	private String insert = "insert into bayer_locationtype ";
	private String update = "update bayer_locationtype set ";
	public LocationTypeModel row;
	
	public DbLocationType(ConnectionManager connectionManager) {
		this.setConnectionManager(connectionManager);
		this.row = new LocationTypeModel();
	}	

	public void append() {
		Date now = new Date();	        
		java.sql.Date sqlDateNow = new java.sql.Date(now.getTime());	
		super.append();		
		this.row.clear();
		this.row.setAtCreate(sqlDateNow);
		this.row.setAtUpdate(sqlDateNow);
	}
	
	public void edit() {
		super.edit(); 		
	}
	
	public boolean post() {
		PreparedStatement pstmt;
		try {
			String sql = null;
			if (this.getDbState() == "insert") {
				sql = this.insert.concat(" (description, AT_CREATE, AT_UPDATE)");
				sql = sql.concat(" values (?,?,?)");
				
				pstmt = this.connectionManager.getInstance().prepareStatement(sql);
				pstmt.setString(1, this.row.getDescription());
				pstmt.setDate(5, this.row.getAtUpdateSQLDate());
				pstmt.setDate(6, this.row.getAtCreateSQLDate());
				
			} else if (this.getDbState() == "edit") {								
				sql = this.update.concat(" description = ?, AT_UPDATE = ?");
				sql = sql.concat(" where ID = ?");
				
				pstmt = this.connectionManager.getInstance().prepareStatement(sql);
				pstmt.setString(1, this.row.getDescription());
				pstmt.setDate(4, this.row.getAtUpdateSQLDate());
				pstmt.setInt(5, this.row.getId());
			} else {
				return false;
			}
			
			if (pstmt.executeUpdate() == 0) return false;
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false; 		
	}
	
	@Override
	public boolean loadData() {
		if (!this.checkConnected()) return false;
		this.row.setResult(this.resultQuery);		
		return true;
	}

	@Override
	public boolean next() {
		if (!super.nextResults()) return false;
		return this.loadData();
	}

	@Override
	public boolean first() {
		super.firstResults();		
		return this.loadData();
	}
	
	public boolean findAll(int rowNum ) {
		String sql = this.select;
		sql = sql.concat(" where rownum <= ").concat(String.valueOf(rowNum));
		sql = sql.concat(" order by id desc");
		this.clearSQL();
		this.addSQL(sql);		
		if (!this.executeSelect()) 
			return false;
		
		this.loadData();
		return this.getRecordCount() > 0;
	}
}
