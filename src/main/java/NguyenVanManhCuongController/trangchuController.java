package NguyenVanManhCuongController;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import NguyenVanManhCuongbean.loaibean;
import NguyenVanManhCuongbean.sanphambean;
import NguyenVanManhCuongbo.loaibo;
import NguyenVanManhCuongbo.sanphambo;

/**
 * Servlet implementation class trangchuController
 */
@WebServlet("/trangchuController")
public class trangchuController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public trangchuController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			//sai loaibo lay ve dsloai
			loaibo lbo = new loaibo();
			ArrayList<loaibean> dsloai = lbo.getloai();
			sanphambo spbo = new sanphambo();
			ArrayList<sanphambean> dsm= spbo.getNewsp();
			ArrayList<sanphambean> dsbanchay = spbo.getbanchay();
			//lay ve ml va txttim tu menu.jsp 
			
			
			//chuyen dsloai va dssach ve ht.sach
			request.setAttribute("dsloai", dsloai);
			request.setAttribute("dsm", dsm);
			request.setAttribute("dsbanchay", dsbanchay);
			String dk = request.getParameter("dk");
			request.setAttribute("dk", dk);
			String haydn = request.getParameter("haydn");
			request.setAttribute("haydn", haydn);
			String muaxong = request.getParameter("muaxong");
			request.setAttribute("muaxong", muaxong);
			
				RequestDispatcher rd = request.getRequestDispatcher("Trangchu.jsp");
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
