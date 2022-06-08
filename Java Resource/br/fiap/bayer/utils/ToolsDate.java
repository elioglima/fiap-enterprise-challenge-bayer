package br.fiap.bayer.utils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

public abstract class ToolsDate {
	public static String now() {
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy");  
		LocalDateTime now = LocalDateTime.now();
		return dtf.format(now);
	}
	
	public static java.sql.Date DateToSQLDate(Date date) {		
		return new java.sql.Date(date.getTime());
	}
	
	public static Date StringToDate(String value) {		
		try {
			return new SimpleDateFormat("dd/MM/yyyy").parse(value);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
  
}
