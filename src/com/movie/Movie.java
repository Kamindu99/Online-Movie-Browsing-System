package com.movie;

public class Movie {
	
	private int mid;
	private String mname;
    private String mlang;
    private String murl;
    private String mprice;
    
	public Movie(int mid, String mname, String mlang,String murl, String mprice) {
		this.mid = mid;
		this.mname = mname;
		this.mlang = mlang;
        this.murl = murl;
		this.mprice = mprice;
	}

	public int getMid() {
		return mid;
	}

	public String getMname() {
		return mname;
	}

	public String getMlang() {
		return mlang;
	}

	public String getMurl() {
		return murl;
	}

	public String getMprice() {
		return mprice;
	}

}
