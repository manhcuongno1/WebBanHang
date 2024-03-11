package NguyenVanManhCuongController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import NguyenVanManhCuongbean.admindangnhapbean;
import NguyenVanManhCuongbo.admindangnhapbo;


/**
 * Servlet implementation class dangnhapAdminController
 */
@WebServlet("/dangnhapAdminController")
public class dangnhapAdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public dangnhapAdminController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String un = request.getParameter("txtun");
            String pass = request.getParameter("txtpass");
            if(un == null && pass == null) {
  	          RequestDispatcher rd =
  						request.getRequestDispatcher("dangnhapAdmin.jsp");
  				rd.forward(request, response);
            }else {
            	admindangnhapbo ad = new admindangnhapbo();
            	admindangnhapbean t = ad.ktdn(un, pass);
            		if (t!=null) {
                		HttpSession session = request.getSession();
                        session.setAttribute("dnad", t);
                        response.sendRedirect("admintrangchuController");
                    }else {
                    	RequestDispatcher rd =
          						request.getRequestDispatcher("dangnhapAdmin.jsp?tbb=dangnhapsai");
          				rd.forward(request, response);
                    }            	
         
            }
   
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
