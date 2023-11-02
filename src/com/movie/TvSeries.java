package com.movie;

public class TvSeries {
	private int tid;
	private String tname;
    private String tlang;
    private String epi;
    private String turl;
    private String tprice;
    
	public TvSeries(int tid, String tname, String tlang,String epi, String turl, String tprice) {
		this.tid = tid;
		this.tname = tname;
		this.tlang = tlang;
		this.epi = epi;
        this.turl = turl;
		this.tprice = tprice;
	}

	public int getTid() {
		return tid;
	}

	public String getTname() {
		return tname;
	}

	public String getTlang() {
		return tlang;
	}

	public String getEpi() {
		return epi;
	}

	public String getTurl() {
		return turl;
	}

	public String getTprice() {
		return tprice;
	}

}
