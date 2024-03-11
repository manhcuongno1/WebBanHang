package NguyenVanManhCuongController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import NguyenVanManhCuongbo.giohangbo;



/**
 * Servlet implementation class GioController
 */
@WebServlet("/GioController")
public class GioController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GioController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
try {
			
			String msp = request.getParameter("msp");
			String tsp = request.getParameter("tsp");
			String sl = request.getParameter("txtSoluong");
			String gia = request.getParameter("gia");
			String anh = request.getParameter("anh");
			String mau = request.getParameter("mau");
			if (msp != null&&tsp != null && gia != null && anh != null && mau!= null) {
//				CgioHang g = new CgioHang();gio hang 1
				giohangbo g = new giohangbo();
				HttpSession session = request.getSession();       
				//Neu mua hang lan dau
				if (session.getAttribute("gh") == null) {
					session.setAttribute("gh", g);//Tao gio
				}
				//Gian session: gh vao bien: g
//				g = (CgioHang) session.getAttribute("gh"); giohang1
//				//Them hang vao bien: g
//				sachbean s = g.TimSach(ms);
//				g.Them(s); 
				//Luu bien vao session
				g = (giohangbo) session.getAttribute("gh");
				if(sl!=null) {
					g.Them(msp, tsp, Long.parseLong(sl), Long.parseLong(gia), anh, mau);
				}else {
					g.Them(msp, tsp, 1, Long.parseLong(gia), anh, mau);
				}
				
				session.setAttribute("gh", g);
				response.sendRedirect("htgioController");
			}else {
				
				RequestDispatcher rd = request.getRequestDispatcher("GioHang.jsp");
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
