package data;

import java.sql.ResultSet;
import java.sql.SQLException;

import DB.DBMangerBean;

public class Administrator {
	private static Administrator administrator;
	private String id;
	private String userName;
	private String password;
	private String phoneNumber;
	private String email;
	private String permission;
	
	public static Administrator getAdministrator(String sql,Object[] params) {
		DBMangerBean man = new DBMangerBean();
		try {
			ResultSet rs=man.getData(sql, params);
			while(rs.next()) {
				administrator.setId(rs.getString("Administrator_ID"));
				administrator.setUserName(rs.getString("Administrator_UserName"));
				administrator.setPassword(rs.getString("Administrator_Password"));
				administrator.setPhoneNumber(rs.getString("Administrator_Phone"));
				administrator.setEmail(rs.getString("Administrator_Email"));
				administrator.setPermission(rs.getString("Administrator_Permission"));
			}
			man.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return administrator;
	}
	public static boolean update(String updateType,Object[] params) {
		DBMangerBean man = new DBMangerBean();
		String sql = "";
		if(updateType.equals(UpdateType.UPDATE)) {
			sql = "UPDATE Administrator SET Administrator_UserName=?,Administrator_Password=?,Administrator_Phone=?,Administrator_Email=?,Administrator_Permission=? WHERE Administrator_ID=?;";
		}else if(updateType.equals(UpdateType.DELETE)){
			sql = "DELETE FROM Administrator WHERE Administrator_ID=?;";
		}else if(updateType.equals(UpdateType.INSERT)){
			sql = "INSERT INTO Administrator(Administrator_ID,Administrator_UserName,Administrator_Password,Administrator_Phone,Administrator_Email,Administrator_Permission) VALUES(?,?,?,?,?,?);";
		}
		return man.UpdateData(sql, params);
	}
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPermission() {
		return permission;
	}
	public void setPermission(String permission) {
		this.permission = permission;
	}
	
	

}
