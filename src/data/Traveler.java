package data;

import java.sql.ResultSet;
import java.sql.SQLException;

import DB.DBMangerBean;

public class Traveler {
	private static Traveler traveler;
	private String name;
	private String sex;
	private String bornday;
	private String address;
	private String email;
	private String phoneNumber;
	private String IDCardNumber;
	
	public static Traveler getTraveler(String sql,Object[] params) {
		DBMangerBean man = new DBMangerBean();
		try {
			ResultSet rs=man.getData(sql, params);
			while(rs.next()) {
				traveler.setName(rs.getString("Traveler_Name"));
				traveler.setSex(rs.getString("Traveler_Sex"));
				traveler.setBornday(rs.getDate("Traveler_Bornday").toString());
				traveler.setAddress(rs.getString("Traveler_Address"));
				traveler.setEmail(rs.getString("Traveler_Email"));
				traveler.setPhoneNumber(rs.getString("Traveler_Phone"));
				traveler.setIDCardNumber(rs.getString("Traveler_IDCardNumber"));
			}
			man.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return traveler;
	}
	public static boolean update(String updateType,Object[] params) {
		DBMangerBean man = new DBMangerBean();
		String sql = "";
		if(updateType.equals(UpdateType.UPDATE)) {
			sql = "UPDATE Traveler SET Traveler_Name=?,Traveler_Sex=?,Traveler_Bornday=?,Traveler_Address=?,Traveler_Email=?,Traveler_Phone=? WHERE Traveler_IDCardNumber=?;";
		}else if(updateType.equals(UpdateType.DELETE)){
			sql = "DELETE FROM Traveler WHERE Traveler_IDCardNumber=?;";
		}else if(updateType.equals(UpdateType.INSERT)){
			sql = "INSERT INTO Traveler(Traveler_Name,Traveler_Sex,Traveler_Bornday,Traveler_Address,Traveler_Email,Traveler_Phone,Traveler_IDCardNumber) VALUES(?,?,?,?,?,?,?);";
		}
		return man.UpdateData(sql, params);
	}
	
	
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getBornday() {
		return bornday;
	}
	public void setBornday(String bornday) {
		this.bornday = bornday;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
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
	public String getIDCardNumber() {
		return IDCardNumber;
	}
	public void setIDCardNumber(String iDCardNumber) {
		IDCardNumber = iDCardNumber;
	}
	
	
}
