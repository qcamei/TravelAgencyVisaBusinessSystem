package data;

import java.sql.ResultSet;
import java.sql.SQLException;

import DB.DBMangerBean;

public class PriceCalendar {
	private static PriceCalendar priceCalendar;
	private String id;
	private String date;
	private double price;
	private String routeid;
	
	public static PriceCalendar getPriceCalendar(String sql,Object[] params) {
		DBMangerBean man = new DBMangerBean();
		try {
			ResultSet rs=man.getData(sql, params);
			while(rs.next()) {
				priceCalendar.setId(rs.getString("PriceCalendar_ID"));
				priceCalendar.setDate(rs.getString("PriceCalendar_Date"));
				priceCalendar.setPrice(rs.getDouble("PriceCalendar_Price"));
				priceCalendar.setRouteid(rs.getString("Routes_Number"));
			}
			man.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return priceCalendar;
	}
	public static boolean update(String updateType,Object[] params) {
		DBMangerBean man = new DBMangerBean();
		String sql = "";
		if(updateType.equals(UpdateType.UPDATE)) {
			sql = "UPDATE PriceCalendar SET PriceCalendar_Date=?,PriceCalendar_Price=?,Routes_Number=? WHERE PriceCalendar_ID=?;";
		}else if(updateType.equals(UpdateType.DELETE)){
			sql = "DELETE FROM PriceCalendar WHERE PriceCalendar_ID=?;";
		}else if(updateType.equals(UpdateType.INSERT)){
			sql = "INSERT INTO PriceCalendar(PriceCalendar_ID,PriceCalendar_Date,PriceCalendar_Price,Routes_Number) VALUES(?,?,?,?);";
		}
		return man.UpdateData(sql, params);
	}
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getRouteid() {
		return routeid;
	}
	public void setRouteid(String routeid) {
		this.routeid = routeid;
	}
	
	

}
