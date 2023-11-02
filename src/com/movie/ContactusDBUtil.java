package com.movie;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class ContactusDBUtil {


		private static boolean isSuccess;
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;
		

		public static List<Contactus> getAllContactus() {
		    List<Contactus> contactus = new ArrayList<>();
		
		    try {
		        con = DBConnect.getConnection();
		        stmt = con.createStatement();
		        String sql = "SELECT * FROM contactus";
		        ResultSet rs = stmt.executeQuery(sql);
		
		        while (rs.next()) {
		        	int cid = rs.getInt("cid");
		            String name = rs.getString("name");
		            String email = rs.getString("email");
		            String message = rs.getString("message");
		          		
		            Contactus  contactus1 = new Contactus(cid,name,email, message);
		            contactus.add(contactus1);
		        }
		
		    } catch (Exception e) {
		        e.printStackTrace();
		    }
		
		    return contactus;
		}

	    
	    public static boolean insertContactus(String name, String email, String message) {
	    	
	    	boolean isSuccess = false;
	    	
	    	try {
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    	    String sql = "insert into contactus values (0,'"+name+"','"+email+"','"+message+"')";
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			isSuccess = true;
	    		} else {
	    			isSuccess = false;
	    		}
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	 	
	    	return isSuccess;
	    }
	    
	    public static boolean updateContactus(String id,String name, String email, String message){
	    	
	    	int convId = Integer.parseInt(id);
	    	
	    	try {
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    		String sql = "update contactus set name='"+name+"', email='"+email+"' ,message='"+message+"'"
	    				+ "where cid='"+convId+"'";
	    				
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs > 0) {
	    			isSuccess = true;
	    		}
	    		else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch(Exception e) {
	    		e.printStackTrace();
	    	}
	    	
	    	return isSuccess;
	    }
	    
	    public static Contactus getContactusByName(String id) {
	       int convertedID = Integer.parseInt(id);
	    	Contactus contactus = null;

	        try {
	            con = DBConnect.getConnection();
	            stmt = con.createStatement();
	            String sql = "SELECT * FROM contactus WHERE cid = '"+convertedID+"'";
	            rs = stmt.executeQuery(sql);

	            if (rs.next()) {
	                   int cid = rs.getInt(1);
	            	  String name1 = rs.getString(2);
			          String email = rs.getString(3);
			          String message = rs.getString(4);

	                 contactus= new Contactus(cid,name1, email,  message);
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return contactus;
	    }
	    
	    
	    public static boolean deleteContactus(String id) {
	    	
	    	int convId = Integer.parseInt(id);
	    	
	    	try {
	    		
	    		con = DBConnect.getConnection();
	    		stmt = con.createStatement();
	    	String sql = "delete from contactus where cid='"+convId+"'";
	    		int r = stmt.executeUpdate(sql);
	    		
	    		if (r > 0) {
	    			isSuccess = true;
	    		}
	    		else {
	    			isSuccess = false;
	    		}
	    		
	    	}
	    	catch (Exception e) {
	    		e.printStackTrace();
	    	}
	    	
	    	return isSuccess;

	}
}
	

