package bean;

import java.io.Serializable;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import DB.DBMangerBean;
import data.Order;
import data.Route;

public class Bean implements Serializable {
	private DBMangerBean man ;
	

	public Bean() {
		super();
		man = new DBMangerBean();
	}



	public List<Route> getRoutes() {
		List<Route> routes = new ArrayList<>();
		String sql = "SELECT * FROM OverseasTravelRoutes ";
		Object[] params = new  Object[0];
		try {
			ResultSet rs=man.getData(sql, params);
			while(rs.next()) {
				Route ro = new Route();
				ro.setID(rs.getInt("Routes_Number"));
				ro.setRouteName(rs.getString("Routes_Name"));
				ro.setDeparture(rs.getString("Routes_Departure"));
				ro.setDistinction(rs.getString("Routes_Distinction"));
				ro.setSchedule(rs.getString("Routes_Schedule"));
				ro.setDate(rs.getDate("Routes_Date").toString());
				ro.setPrice(rs.getDouble("Routes_Price"));
				routes.add(ro);
			}
			man.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return routes;
		
	}
	
	
	public List<Order> getOrders() {
		List<Order> orders = new ArrayList<>();
		String sql = "SELECT * FROM OverseasTravelerOrder ";
		Object[] params = new  Object[0];
		try {
			ResultSet rs=man.getData(sql, params);
			while(rs.next()) {
				Order order = new Order();
				order.setOrder_ID(rs.getInt("Order_Number"));
				order.setRouteName(rs.getString("Routes_Number"));
				order.setTourName(rs.getString("Order_TourName"));
				order.setPeopleNum(rs.getInt("Order_PeopleNumber"));
				order.setTotalPrice(rs.getDouble("Order_TotalPrice")); 
				order.setBornDate(rs.getDate("Order_OrderDate").toString());
				order.setState(rs.getString("Order_Status"));
				orders.add(order);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return orders;
		
	}

	

}
