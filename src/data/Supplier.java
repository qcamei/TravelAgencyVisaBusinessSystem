package data;

import java.sql.ResultSet;
import java.sql.SQLException;

import DB.DBMangerBean;

public class Supplier {
	private static Supplier supplier;
	private String id;
	private String name;
	private String email;
	private String phoneNumber;
	
	public static Supplier getSupplier(String sql,Object[] params) {
		DBMangerBean man = new DBMangerBean();
		try {
			ResultSet rs=man.getData(sql, params);
			while(rs.next()) {
				supplier.setId(rs.getString("Supplier_Number"));
				supplier.setName(rs.getString("Supplier_Name"));
				supplier.setEmail(rs.getString("Supplier_Email"));
				supplier.setPhoneNumber(rs.getString("Supplier_Phone"));
			}
			man.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return supplier;
	}
	public static boolean update(String updateType,Object[] params) {
		DBMangerBean man = new DBMangerBean();
		String sql = "";
		if(updateType.equals(UpdateType.UPDATE)) {
			sql = "UPDATE Supplier SET Supplier_Name=?,Supplier_Email=?,Supplier_Phone=? WHERE Supplier_Number=?;";
		}else if(updateType.equals(UpdateType.DELETE)){
			sql = "DELETE FROM Supplier WHERE Supplier_Number=?;";
		}else if(updateType.equals(UpdateType.INSERT)){
			sql = "INSERT INTO Supplier(Supplier_Number,Supplier_Name,Supplier_Email,Supplier_Phone) VALUES(?,?,?,?);";
		}
		return man.UpdateData(sql, params);
	}
	
	
	
	
	public static Supplier getSupplier() {
		return supplier;
	}
	public static void setSupplier(Supplier supplier) {
		Supplier.supplier = supplier;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	
	
	
}
