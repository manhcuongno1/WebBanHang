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
 * Servlet implementation class sanphamController
 */
@WebServlet("/sanphamController")
public class sanphamController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sanphamController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			String ml = request.getParameter("ml");
			String key = request.getParameter("txttim");
			//sai loaibo lay ve dsloai
			loaibo lbo = new loaibo();
			ArrayList<loaibean> dsloai = lbo.getloai();
			sanphambo spbo = new sanphambo();
			ArrayList<sanphambean> dssp = spbo.getsp();
			
			//lay ve ml va txttim tu menu.jsp 
			
			if(ml!=null)
			{
				dssp = spbo.TimMa(ml);
			}else{
					if(key!= null ){
						dssp = spbo.Tim(key);
						}
			}
			//chuyen dsloai va dssach ve ht.sach
			request.setAttribute("dsloai", dsloai);
			request.setAttribute("dssp", dssp);
			
				RequestDispatcher rd = request.getRequestDispatcher("sanpham.jsp");
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
