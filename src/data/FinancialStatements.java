package data;
import java.sql.ResultSet;
import java.sql.SQLException;
import DB.DBMangerBean;

public class FinancialStatements {
	private static FinancialStatements financialStatements;
	private String id;
	private String date;
	private String manager;
	private String content;
	private double money;
	private double balance;
	
	public static FinancialStatements getFinancialStatements(String sql,Object[] params) {
		DBMangerBean man = new DBMangerBean();
		try {
			ResultSet rs=man.getData(sql, params);
			while(rs.next()) {
				financialStatements.setId(rs.getString("Financial_Number"));
				financialStatements.setDate(rs.getString("Financial_Date"));
				financialStatements.setManager(rs.getString("Financial_Manage"));
				financialStatements.setContent(rs.getString("Financial_Content"));
				financialStatements.setMoney(rs.getDouble("Financial_Money"));
				financialStatements.setBalance(rs.getDouble("Financial_Balance"));
			}
			man.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return financialStatements;
	}
	public static boolean update(String updateType,Object[] params) {
		DBMangerBean man = new DBMangerBean();
		String sql = "";
		if(updateType.equals(UpdateType.UPDATE)) {
			sql = "UPDATE FinancialStatements SET Financial_Date=?,Financial_Manage=?,Financial_Content=?,Financial_Money=?,Financial_Balance=? WHERE Financial_Number=?;";
		}else if(updateType.equals(UpdateType.DELETE)){
			sql = "DELETE FROM FinancialStatements WHERE Financial_Number=?;";
		}else if(updateType.equals(UpdateType.INSERT)){
			sql = "INSERT INTO FinancialStatements(Financial_Number,Financial_Date,Financial_Manage,Financial_Content,Financial_Money,Financial_Balance) VALUES(?,?,?,?,?,?);";
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
	public String getManager() {
		return manager;
	}
	public void setManager(String manager) {
		this.manager = manager;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public double getMoney() {
		return money;
	}
	public void setMoney(double money) {
		this.money = money;
	}
	public double getBalance() {
		return balance;
	}
	public void setBalance(double balance) {
		this.balance = balance;
	}
	
	
	
}
