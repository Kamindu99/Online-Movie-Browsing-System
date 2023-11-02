package com.movie;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.movie.DBConnect;
import com.movie.TvSeries;

import java.sql.Connection;

public class TvSeriesDBUtil {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static List<TvSeries> getAllTvSeries() {
	    List<TvSeries> tvSeries = new ArrayList<>();
	
	    try {
	        con = DBConnect.getConnection();
	        stmt = con.createStatement();
	        String sql = "SELECT * FROM tvseries";
	        ResultSet rs = stmt.executeQuery(sql);
	
	        while (rs.next()) {
	            int id = rs.getInt("tid");
	            String tvSeriesName = rs.getString("tname");
	            String language = rs.getString("tlang");
                String epi = rs.getString("epi");
	            String imageUrl = rs.getString("turl");
	            String price = rs.getString("tprice");
	
	            TvSeries tvSerie = new TvSeries(id, tvSeriesName, language,epi, imageUrl, price);
	            tvSeries.add(tvSerie);
	        }
	
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	
	    return tvSeries;
	}

    
    public static boolean insertTvSeries(String tvSeriesname, String language,String epi, String imageUrl,  String price) {
    	
    	boolean isSuccess = false;
    	
    	try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    	    String sql = "insert into tvseries values (0,'"+tvSeriesname+"','"+language+"','"+epi+"','"+imageUrl+"','"+price+"')";
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
    
    public static boolean updateTvSeries(String id,String tvSeriesname, String language, String epi,String imageUrl,String price) {
    	
    	int convId = Integer.parseInt(id);
    	
    	try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update tvseries set tname='"+tvSeriesname+"', tlang='"+language+"' ,epi='"+epi+"',turl='"+imageUrl+"',tprice='"+price+"'"
    				+ "where tid='"+convId+"'";
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
    
    public static TvSeries getTvSeriesById(String id) {
        int convertedID = Integer.parseInt(id);
        TvSeries tvSeries = null;

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "SELECT * FROM tvseries WHERE tid = '"+convertedID+"'";
            rs = stmt.executeQuery(sql);

            if (rs.next()) {
                int tvseriesId = rs.getInt(1);
                String tvSeriesName = rs.getString(2);
                String language = rs.getString(3);
                String epi = rs.getString(4);
                String imageUrl = rs.getString(5);
                String price = rs.getString(6);

                tvSeries = new TvSeries(tvseriesId, tvSeriesName, language,epi, imageUrl, price);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return tvSeries;
    }
    
    
    public static boolean deleteTvSeries(String id) {
    	
    	int convId = Integer.parseInt(id);
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "delete from tvSeries where tid='"+convId+"'";
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
