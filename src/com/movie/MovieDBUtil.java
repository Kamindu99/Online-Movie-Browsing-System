package com.movie;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.movie.DBConnect;
import com.movie.Movie;

import java.sql.Connection;

public class MovieDBUtil {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	

	public static List<Movie> getAllMovies() {
	    List<Movie> movies = new ArrayList<>();
	
	    try {
	        con = DBConnect.getConnection();
	        stmt = con.createStatement();
	        String sql = "SELECT * FROM moviecontent";
	        ResultSet rs = stmt.executeQuery(sql);
	
	        while (rs.next()) {
	            int id = rs.getInt("mid");
	            String movieName = rs.getString("mname");
	            String language = rs.getString("mlang");
	            String imageUrl = rs.getString("murl");
	            String price = rs.getString("mprice");
	
	            Movie movie = new Movie(id, movieName, language, imageUrl, price);
	            movies.add(movie);
	        }
	
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
	
	    return movies;
	}

    
    public static boolean insertMovie(String moviename, String language, String imageUrl,  String price) {
    	
    	boolean isSuccess = false;
    	
    	try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    	    String sql = "insert into moviecontent values (0,'"+moviename+"','"+language+"','"+imageUrl+"','"+price+"')";
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
    
    public static boolean updateMovie(String id,String moviename, String language, String imageUrl,String price) {
    	
    	int convId = Integer.parseInt(id);
    	
    	try {
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "update moviecontent set mname='"+moviename+"', mlang='"+language+"' ,murl='"+imageUrl+"',mprice='"+price+"'"
    				+ "where mid='"+convId+"'";
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
    
    public static Movie getMovieById(String id) {
        int convertedID = Integer.parseInt(id);
        Movie movie = null;

        try {
            con = DBConnect.getConnection();
            stmt = con.createStatement();
            String sql = "SELECT * FROM moviecontent WHERE mid = '"+convertedID+"'";
            rs = stmt.executeQuery(sql);

            if (rs.next()) {
                int movieId = rs.getInt(1);
                String movieName = rs.getString(2);
                String language = rs.getString(3);
                String imageUrl = rs.getString(4);
                String price = rs.getString(5);

                movie = new Movie(movieId, movieName, language, imageUrl, price);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return movie;
    }
    
    
    public static boolean deleteMovie(String id) {
    	
    	int convId = Integer.parseInt(id);
    	
    	try {
    		
    		con = DBConnect.getConnection();
    		stmt = con.createStatement();
    		String sql = "delete from moviecontent where mid='"+convId+"'";
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
