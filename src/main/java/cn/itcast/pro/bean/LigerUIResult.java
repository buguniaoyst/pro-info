package cn.itcast.pro.bean;

import java.util.List;


public class LigerUIResult<T> {
	private long total;
	private List<T> rows;

	public LigerUIResult(long total2, List<T> list) {
		this.total=total2;
		this.rows=list;
	}

	public long getTotal() {
		return total;
	}

	public void setTotal(long total) {
		this.total = total;
	}

	public List<T> getRows() {
		return rows;
	}

	public void setRows(List<T> rows) {
		this.rows = rows;
	}
	
	public LigerUIResult(){
		
	}
}
