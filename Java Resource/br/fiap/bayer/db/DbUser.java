package br.fiap.bayer.db;

import java.util.Date;
import br.fiap.bayer.model.UserModel;
import java.sql.PreparedStatement;
import java.sql.SQLException;


public abstract class DbUser extends InstanceManager implements IController {
	
	private String select = "select * from BAYER_USER ";
	private String insert = "insert into BAYER_USER ";
	private String update = "update BAYER_USER set ";	
	public UserModel row;	
	
	public DbUser(ConnectionManager connectionManager) {
		this.row =  new UserModel();			
		this.setConnectionManager(connectionManager);
	}
	
	public boolean loadData() {
		if (!this.checkConnected()) return false;
		this.row.setResult(this.resultQuery);		
		return true;		
	}
	
	public boolean next() {
		if (!super.nextResults()) return false;
		return this.loadData();	
	}	
	
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
		return this.recordCount > 0; 		
	}
	
	public boolean FindMail(String mail) {		
		String sql = this.select.concat("where mail = ").concat("'"+ mail + "'");
		sql = sql.concat(" and rownum <= ").concat(String.valueOf(1));
		this.clearSQL();		
		this.addSQL(sql);		
		if (!this.executeSelect()) 
			return false;
		
		this.loadData();
		return this.getRecordCount() > 0; 
		
	}
	
	public boolean FindId(int id) {		
		String sql = this.select.concat("where id = ").concat(Integer.toString(id));
		sql = sql.concat(" and rownum <= ").concat(String.valueOf(1));
		this.clearSQL();
		this.addSQL(sql);
		if (!this.executeSelect()) 
			return false;		
		this.loadData();
		this.executeSelectClose();
		return this.recordCount > 0;		 		
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
				sql = this.insert.concat(" (mail, name, password, documenttype_id, documentnumber, phonemobile, at_create, at_update, active)");
				sql = sql.concat(" values (?,?,?,?,?,?,?,?,?)");
				pstmt = this.connectionManager.getInstance().prepareStatement(sql);
				pstmt.setString(1, this.row.getMail());
				pstmt.setString(2, this.row.getName());
				pstmt.setString(3, this.row.getPassword());
				pstmt.setInt(4, this.row.getDocumentTypeId());
				pstmt.setString(5, this.row.getDocumentNumber());				
				pstmt.setDate(7, this.row.getAtUpdateSQLDate());
				pstmt.setDate(8, this.row.getAtCreateSQLDate());
				pstmt.setInt(9, 1);				
				
			} else if (this.getDbState() == "edit") {
				sql = this.update.concat(" mail = ?");
				sql = sql.concat("name = ?,");
				sql = sql.concat("phonemobile = ?,");
				sql = sql.concat("documenttype_id = ?,");
				sql = sql.concat("documentnumber = ?,");
				sql = sql.concat("at_update = ?,");
				sql = sql.concat("active = ?");
				sql = sql.concat(" where id = ?");
				
				pstmt = this.connectionManager.getInstance().prepareStatement(sql);
				pstmt.setString(1, this.row.getMail());
				pstmt.setString(2, this.row.getName());				
				pstmt.setInt(4, this.row.getDocumentTypeId());
				pstmt.setString(5, this.row.getDocumentNumber());
				pstmt.setDate(6, this.row.getAtUpdateSQLDate());
				pstmt.setInt(8, this.row.getId());
			} else {
				return false;
			}
			if (pstmt.executeUpdate() == 0) return false;
			return true;						
		} catch (SQLException e) {
			return false; 		
		}	
	}		
}
