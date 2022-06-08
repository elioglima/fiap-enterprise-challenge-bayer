package br.fiap.bayer.db;

import br.fiap.bayer.model.OcorrenceStatisticModel;

public class DbOcorrenceStatistic extends InstanceManager {
	public OcorrenceStatisticModel row;
	
	public DbOcorrenceStatistic(ConnectionManager connectionManager) {
		this.setConnectionManager(connectionManager);
		this.row = new OcorrenceStatisticModel();
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
	
	public boolean findStatistic() {		
		String sql = "SELECT t.description as locationType,";
		sql = sql.concat(" ap.description as alertpoint, c.description as category,");
		sql = sql.concat(" COUNT(o.id) as value");
		sql = sql.concat(" FROM bayer_ocorrences o");
		sql = sql.concat(" join bayer_user u on o.user_id = u.id");
		sql = sql.concat(" join bayer_institution i on u.INSTITUTION_ID = i.id");
		sql = sql.concat(" join BAYER_INSTITUTIONADDRESS ia on i.id = ia.INSTITUTION_ID");
		sql = sql.concat(" join BAYER_LOCATIONTYPE t on ia.LOCATIONTYPE_ID = t.id");
		sql = sql.concat(" join BAYER_ALERTPOINT ap on o.ALERTPOINT_ID = ap.id");
		sql = sql.concat(" join BAYER_CATEGORY c on o.CATEGORY_ID = c.id");		
		sql = sql.concat(" GROUP BY t.description, ap.description, c.description");
		sql = sql.concat(" order by t.description");
		this.clearSQL();		
		this.addSQL(sql);		
		if (!this.executeSelect()) 
			return false;
		
		this.loadData();
		return this.getRecordCount() > 0; 			
	}	
}
