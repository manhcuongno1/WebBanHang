package NguyenVanManhCuongController;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import NguyenVanManhCuongbean.khachhangbean;
import NguyenVanManhCuongbean.lichsubean;
import NguyenVanManhCuongbo.lichsubo;



/**
 * Servlet implementation class lichsuController
 */
@WebServlet("/lichsuController")
public class lichsuController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public lichsuController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session = request.getSession();
			khachhangbean kh = (khachhangbean) session.getAttribute("dn");
			if(kh == null) {	
				RequestDispatcher rd =
							request.getRequestDispatcher("trangchuController?haydn=ok");
					rd.forward(request, response);
			}
			else {
				lichsubo lsbo = new lichsubo();
				ArrayList<lichsubean> lsb = lsbo.dslsmh(kh.getMakh());
				request.setAttribute("dsls", lsb);
				RequestDispatcher rd =
						request.getRequestDispatcher("lichsumuahang.jsp");
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
