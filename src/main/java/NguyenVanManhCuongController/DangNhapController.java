package NguyenVanManhCuongController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import NguyenVanManhCuongbean.khachhangbean;
import NguyenVanManhCuongbo.khachhangbo;



/**
 * Servlet implementation class DangNhapController
 */
@WebServlet("/DangNhapController")
public class DangNhapController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DangNhapController() {
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
  						request.getRequestDispatcher("DangNhap.jsp");
  				rd.forward(request, response);
            }else {
            	khachhangbo kh = new khachhangbo();
            	khachhangbean t = kh.getkh(un, pass) ;
            		if (t!=null) {
                		HttpSession session = request.getSession();
                        session.setAttribute("dn", t);
                        response.sendRedirect("trangchuController");
                    }else {
                    	RequestDispatcher rd =
          						request.getRequestDispatcher("DangNhap.jsp?tbb=dangnhapsai");
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
