package NguyenVanManhCuongController;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import NguyenVanManhCuongbo.giohangbo;



/**
 * Servlet implementation class xoagioController
 */
@WebServlet("/xoagioController")
public class xoagioController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xoagioController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session = request.getSession();
			giohangbo g = (giohangbo) session.getAttribute("gh");
				String ms = request.getParameter("ms");
				g.Xoa(ms);
				session.setAttribute("gh", g);
				if(g.ds.size() == 0) {
					response.sendRedirect("trangchuController");
				}else {
					response.sendRedirect("htgioController");	
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
