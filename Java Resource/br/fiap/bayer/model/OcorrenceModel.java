package br.fiap.bayer.model;

import java.sql.ResultSet;
import java.sql.SQLException;

public class OcorrenceModel extends CommonsModel  {	
	private int userId;
	private int alertPointId;
	private int categoryId;
	
	private String note;	
	private String noteText;
	
	
	public boolean setResult(ResultSet result) {
		try {
			if (super.setResult(result)) return false;
			this.userId = result.getInt("user_id");
			this.alertPointId = result.getInt("alertpoint_id");
			this.categoryId = result.getInt("category_id");
			this.note = result.getString("note");
			this.noteText = result.getString("notetext");
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}

	public void clear() {
		super.clear();
		this.userId = 0;
		this.alertPointId = 0;
		this.categoryId = 0;
		this.note = null;
		this.noteText = null;
	}

	public int getUserId() {
		return this.userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}
	
	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public String getNoteText() {
		return noteText;
	}

	public void setNoteText(String noteText) {
		this.noteText = noteText;
	}

	public int getAlertPointId() {
		return alertPointId;
	}

	public void setAlertPointId(int alertPointId) {
		this.alertPointId = alertPointId;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}
	
	
}
