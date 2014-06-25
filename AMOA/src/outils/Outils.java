package outils;

import java.text.ParseException;
import java.text.SimpleDateFormat;

public class Outils {
	
	public Outils(){
		
	}
	
	public static java.sql.Timestamp StringToTimeStamp(String dateString){
		SimpleDateFormat sdf;
		if(dateString.equals(""))
			return null;
		sdf = new SimpleDateFormat("dd/MM/yyyy");
		try {
			
			java.util.Date date = sdf.parse(dateString);
			java.sql.Timestamp date_stmp = new java.sql.Timestamp(date.getTime());
		    return date_stmp;	
		    
		    
		} catch (ParseException exp) {
		    exp.printStackTrace();
		}
		return null;
	}

}
