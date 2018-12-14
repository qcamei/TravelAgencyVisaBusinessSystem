package data;

import java.sql.ResultSet;
import java.sql.SQLException;

import DB.DBMangerBean;

public class Passport {
	private static Passport passport;
	private String id;
	private String idCarNumber;
	private String validity;
	private String issuingAuthority;
	private String IssueLocation;
	
	public static Passport getPassport(String sql,Object[] params) {
		DBMangerBean man = new DBMangerBean();
		try {
			ResultSet rs=man.getData(sql, params);
			while(rs.next()) {
				passport.setId(rs.getString("Passport_Number"));
				passport.setIdCarNumber(rs.getString("Traveler_IDCardNumber"));
				passport.setValidity(rs.getString("Passport_ValidityPeriod"));
				passport.setIssuingAuthority(rs.getString("Passport_IssuingAuthority"));
				passport.setIssueLocation(rs.getString("Passport_IssueLocation"));
			}
			man.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return passport;
	}
	public static boolean update(String updateType,Object[] params) {
		DBMangerBean man = new DBMangerBean();
		String sql = "";
		if(updateType.equals(UpdateType.UPDATE)) {
			sql = "UPDATE Passport SET Traveler_IDCardNumber=?,Passport_ValidityPeriod=?,Passport_IssuingAuthority=?,Passport_IssueLocation=? WHERE Passport_Number=?;";
		}else if(updateType.equals(UpdateType.DELETE)){
			sql = "DELETE FROM Passport WHERE Passport_Number=?;";
		}else if(updateType.equals(UpdateType.INSERT)){
			sql = "INSERT INTO Passport(Passport_Number,Traveler_IDCardNumber,Passport_ValidityPeriod,Passport_IssuingAuthority,Passport_IssueLocation) VALUES(?,?,?,?,?);";
		}
		return man.UpdateData(sql, params);
	}
	
	
	
	public static Passport getPassport() {
		return passport;
	}
	public static void setPassport(Passport passport) {
		Passport.passport = passport;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getIdCarNumber() {
		return idCarNumber;
	}
	public void setIdCarNumber(String idCarNumber) {
		this.idCarNumber = idCarNumber;
	}
	public String getValidity() {
		return validity;
	}
	public void setValidity(String validity) {
		this.validity = validity;
	}
	public String getIssuingAuthority() {
		return issuingAuthority;
	}
	public void setIssuingAuthority(String issuingAuthority) {
		this.issuingAuthority = issuingAuthority;
	}
	public String getIssueLocation() {
		return IssueLocation;
	}
	public void setIssueLocation(String issueLocation) {
		IssueLocation = issueLocation;
	}
	
	
	
}
