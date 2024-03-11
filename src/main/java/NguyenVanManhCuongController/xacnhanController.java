package NguyenVanManhCuongController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import NguyenVanManhCuongbean.giohangbean;
import NguyenVanManhCuongbean.khachhangbean;
import NguyenVanManhCuongbo.Chitiethoadonbo;
import NguyenVanManhCuongbo.HoaDonbo;
import NguyenVanManhCuongbo.giohangbo;


/**
 * Servlet implementation class xacnhanController
 */
@WebServlet("/xacnhanController")
public class xacnhanController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public xacnhanController() {
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
				HoaDonbo hdbo = new HoaDonbo();
				Chitiethoadonbo chtbo = new Chitiethoadonbo();
				hdbo.addHoaDon(kh.getMakh());
				long maxhd = hdbo.MaxHd();
				
				giohangbo gh = (giohangbo) session.getAttribute("gh");
				
				for(giohangbean h:gh.ds) {
					chtbo.addchitietHoaDon(h.getMasanpham(), h.getSoluong(), maxhd);
				}
				session.removeAttribute("gh");
				RequestDispatcher rd =
						request.getRequestDispatcher("trangchuController?muaxong=ok");
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
