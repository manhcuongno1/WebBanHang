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
import NguyenVanManhCuongbo.Chitiethoadonbo;
import NguyenVanManhCuongbo.HoaDonbo;


/**
 * Servlet implementation class adminxacnhanController
 */
@WebServlet("/adminxacnhanController")
public class adminxacnhanController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminxacnhanController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session = request.getSession();
			admindangnhapbean kh = (admindangnhapbean) session.getAttribute("dnad");
			if(kh == null) {	
				RequestDispatcher rd =
							request.getRequestDispatcher("admintrangchuController?haydn=ok");
					rd.forward(request, response);
			}else {
	        	String mact = request.getParameter("mact");
		        String mahd = request.getParameter("mahd");
		        Chitiethoadonbo cthdbo = new Chitiethoadonbo();
		        HoaDonbo hdbo = new HoaDonbo();
		        if (mact != null&& mahd!= null) {
		        	String tab = request.getParameter("tab");
		        	if(tab != null) {
						if(tab.equals("xacnhan")) {
							cthdbo.Sua(Long.parseLong(mact)); // Sử dụng Long.parseLong() thay vì Long.getLong()
							hdbo.Sua(Long.parseLong(mahd));
						}else {
							cthdbo.Xoa(Long.parseLong(mact));
							hdbo.Xoa(Long.parseLong(mahd));
						}
					}
		        	
		        }
		            
		        request.setAttribute("ds", cthdbo.getxacnhan());

		        RequestDispatcher rd = request.getRequestDispatcher("adminxacnhan.jsp");
		        rd.forward(request, response);
	        }
	    } catch (Exception e) {
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
