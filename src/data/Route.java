package data;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import DB.DBMangerBean;

public class Route {
	private static Route route = new Route();
	private int ID;
	private String routeName;
	private String departure;
	private String distinction;
	private String schedule;
	private String date;
	private double price;

	public static Route getRoute(String sql, Object[] params) {
		DBMangerBean man = new DBMangerBean();
		try {
			ResultSet rs = man.getData(sql, params);
			while (rs.next()) {
				route.setID(rs.getInt("Routes_Number"));
				route.setRouteName(rs.getString("Routes_Name"));
				route.setDeparture(rs.getString("Routes_Departure"));
				route.setDistinction(rs.getString("Routes_Distinction"));
				route.setSchedule(rs.getString("Routes_Schedule"));
				route.setDate(rs.getDate("Routes_Date").toString());
				route.setPrice(rs.getShort("Routes_Price"));
			}
			man.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return route;
	}

	public static boolean updateRoute(String updateType, Object[] params) {
		DBMangerBean man = new DBMangerBean();
		if(updateType.equals(UpdateType.UPDATE)) {
			String sql = "UPDATE OverseasTravelRoutes SET Routes_Name=?,Routes_Departure=?,Routes_Distinction=?,Routes_Schedule=?,Routes_Date=?,Routes_Price=? WHERE Routes_Number=?";
			return man.UpdateData(sql, params);
		}else if(updateType.equals(UpdateType.DELETE)) {
			String sql = "DELETE FROM OverseasTravelRoutes WHERE Routes_Number=?";
			return man.UpdateData(sql, params);
		}else if(updateType.equals(UpdateType.INSERT)) {
			String sql = "INSERT INTO OverseasTravelRoutes(Routes_Number,Routes_Name,Routes_Departure,Routes_Distinction,Routes_Schedule,Routes_Date,Routes_Price) values (?,?,?,?,?,?,?)";
			return man.UpdateData(sql, params);
		}else {
			return false;
		}
		
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getRouteName() {
		return routeName;
	}

	public void setRouteName(String routeName) {
		this.routeName = routeName;
	}

	public String getDeparture() {
		return departure;
	}

	public void setDeparture(String departure) {
		this.departure = departure;
	}

	public String getDistinction() {
		return distinction;
	}

	public void setDistinction(String distinction) {
		this.distinction = distinction;
	}

	public String getSchedule() {
		return schedule;
	}

	public void setSchedule(String schedule) {
		this.schedule = schedule;
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
	

}
