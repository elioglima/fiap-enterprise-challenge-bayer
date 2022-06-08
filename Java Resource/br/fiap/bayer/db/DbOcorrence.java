
package br.fiap.bayer.db;

import java.util.Date;
import br.fiap.bayer.model.*;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DbOcorrence extends InstanceManager implements IController {
	private String select = "select * from bayer_ocorrences ";
	private String insert = "insert into bayer_ocorrences ";
	private String update = "update bayer_ocorrences set";
	public OcorrenceModel row;	
	public DbOcorrenceStatistic statistic;
	
	public DbOcorrence(ConnectionManager connectionManager) {
		this.setConnectionManager(connectionManager);
		this.row = new OcorrenceModel();
		this.statistic = new DbOcorrenceStatistic(connectionManager);
	}
	
	public void append() {		
		super.append();
		this.row.clear();
		
		Date now = new Date();	        
		java.sql.Date sqlDateNow = new java.sql.Date(now.getTime());
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
				sql = this.insert.concat(" (note, notetext, user_id, alertpoint_id, category_id, at_create, at_update)");
				sql = sql.concat(" values (?,?,?,?,?,?,?,?,?,?,?)");
				
				pstmt = this.connectionManager.getInstance().prepareStatement(sql);
				pstmt.setString(1, this.row.getNote());
				pstmt.setString(2, this.row.getNoteText());
				pstmt.setInt(3, this.row.getUserId());
				pstmt.setInt(4, this.row.getAlertPointId());
				pstmt.setInt(5, this.row.getCategoryId());
				pstmt.setDate(6, this.row.getAtCreateSQLDate());
				pstmt.setDate(7, this.row.getAtUpdateSQLDate());
				return pstmt.executeUpdate() > 0;
				
			} else if (this.getDbState() == "edit") {
				sql = this.update.concat(" note = ?, notetext = ?, alertpoint_id = ?, category_id = ?, at_update = ?");
				sql = sql.concat(" where id = ?");
				
				
				pstmt = this.connectionManager.getInstance().prepareStatement(sql);
				pstmt.setString(1, this.row.getNote());
				pstmt.setString(2, this.row.getNoteText());
				pstmt.setInt(3, this.row.getUserId());
				pstmt.setInt(4, this.row.getAlertPointId());
				pstmt.setInt(5, this.row.getCategoryId());
				pstmt.setDate(6, this.row.getAtUpdateSQLDate());				
				pstmt.setInt(7, this.row.getId());				
				return pstmt.executeUpdate() > 0;				
			}
												
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
	
    
	public boolean findAll(int rowNum) {
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
