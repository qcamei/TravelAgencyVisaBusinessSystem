package servlet;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DB.DBMangerBean;

/**
 * Servlet implementation class TrivelerEnterServlet
 */
@WebServlet("/TrivelerEnterServlet")
public class TravelerEnterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TravelerEnterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		
		Object[] params = new Object[7];
		params[0] = request.getParameter("IDCardNumber");
		params[1] = request.getParameter("Name");
		params[2] = request.getParameter("Sex");
		params[3] = request.getParameter("Bornday");
		params[4] = request.getParameter("Address");
		params[5] = request.getParameter("Email");
		params[6] = request.getParameter("Phone");
		
		String sql = "Insert into `Traveler` value (?,?,?,?,?,?,?)";
		
		DBMangerBean dbMangerBean = new DBMangerBean();
		boolean isSuccess = dbMangerBean.UpdateData(sql, params);
		
		if(isSuccess)
		{
			response.sendRedirect("Traveler.jsp");
		}
		else
		{
			response.sendRedirect("TravelerEnter.jsp");
		}
	}

}
