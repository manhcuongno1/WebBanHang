package NguyenVanManhCuongController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import NguyenVanManhCuongbean.sanphambean;
import NguyenVanManhCuongbo.sanphambo;

/**
 * Servlet implementation class chitietsanphamController
 */
@WebServlet("/chitietsanphamController")
public class chitietsanphamController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public chitietsanphamController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			sanphambo spbo = new sanphambo();
			String masp = request.getParameter("masp");
			if(masp != null) {
				sanphambean sp = spbo.TimSp(masp);
				request.setAttribute("sp", sp);
			}
			RequestDispatcher rd =
					request.getRequestDispatcher("chitietsanpham.jsp");
			rd.forward(request, response);
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
