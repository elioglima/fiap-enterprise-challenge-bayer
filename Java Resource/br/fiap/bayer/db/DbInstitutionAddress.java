package br.fiap.bayer.db;

import java.util.Date;

import br.fiap.bayer.model.*;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DbInstitutionAddress extends InstanceManager implements IController {
	private String select = "select * from bayer_institutionaddress ";
	private String insert = "insert into bayer_institutionaddress ";
	private String update = "update bayer_institutionaddress set";
	public InstitutionAdressModel row;

	public DbInstitutionAddress(ConnectionManager connectionManager, int intitution_id) {
		this.setConnectionManager(connectionManager);
		this.row = new InstitutionAdressModel();			
		this.row.setInstutitionId(intitution_id);
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
				sql = this.insert.concat(" (Institution_id, locationtype_id, address, zip_code, ADDRESS_NR, district, city, state, unit, complement, at_create, at_update)");
				sql = sql.concat(" values (?,?,?,?,?,?,?,?,?,?,?,?)");
				
				pstmt = this.connectionManager.getInstance().prepareStatement(sql);
				pstmt.setInt(1, this.row.getInstutitionId());
				pstmt.setInt(2, this.row.getLocationTypeId());				
				pstmt.setString(3, this.row.getAddress());
				pstmt.setString(4, this.row.getZipCode());
				pstmt.setInt(5, this.row.getNumber());
				pstmt.setString(6, this.row.getDistrict());				
				pstmt.setString(7, this.row.getCity());				
				pstmt.setString(8, this.row.getState());				
				pstmt.setString(9, this.row.getUnit());
				pstmt.setString(10, this.row.getComplement());
				pstmt.setDate(11, this.row.getAtCreateSQLDate());
				pstmt.setDate(12, this.row.getAtUpdateSQLDate());
				return pstmt.executeUpdate() > 0;
				
			} else if (this.getDbState() == "edit") {
				sql = this.update.concat(" locationtype_id = ?, address = ?, zip_code = ?, ADDRESS_NR = ?, district = ?, city = ?, state = ?, unit = ?, complement = ?, at_update = ?");
				sql = sql.concat(" where id = ? and Institution_id = ?");
				
				pstmt = this.connectionManager.getInstance().prepareStatement(sql);
				pstmt.setInt(1, this.row.getLocationTypeId());
				pstmt.setString(2, this.row.getAddress());
				pstmt.setString(3, this.row.getZipCode());
				pstmt.setInt(4, this.row.getNumber());
				pstmt.setString(5, this.row.getDistrict());
				pstmt.setString(6, this.row.getCity());
				pstmt.setString(7, this.row.getState());
				pstmt.setString(8, this.row.getUnit());
				pstmt.setString(9, this.row.getComplement());
				pstmt.setDate(10, this.row.getAtUpdateSQLDate());
				pstmt.setInt(11, this.row.getId());
				pstmt.setInt(12, this.row.getInstutitionId());
				
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
		String sql = this.select.concat("where Institution_id = ").concat(String.valueOf(this.row.getInstutitionId()));
		sql = sql.concat(" and rownum <= ").concat(String.valueOf(rowNum));
		sql = sql.concat(" order by id desc");
		this.clearSQL();
		this.addSQL(sql);		
		if (!this.executeSelect()) 
			return false;
		
		this.loadData();
		return this.getRecordCount() > 0; 			
	}	
}
