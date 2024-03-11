package NguyenVanManhCuongController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import NguyenVanManhCuongbo.khachhangbo;



/**
 * Servlet implementation class DangKyController
 */
@WebServlet("/DangKyController")
public class DangKyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DangKyController() {
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
			String action = request.getParameter("action");
			String HotenKH = request.getParameter("HotenKH");
			String Diachi = request.getParameter("Diachi");
			String Dienthoai = request.getParameter("Dienthoai");
			String Email = request.getParameter("Email");
			String TenDN = request.getParameter("TenDN");
			String Matkhau = request.getParameter("Matkhau");
		
			if(action != null) {
				khachhangbo kbo = new khachhangbo();
				kbo.getKH();				
				int kt = kbo.ThemKH( HotenKH, Diachi,Dienthoai,Email, TenDN, Matkhau);	
				if (kt == 0) {
					
					RequestDispatcher rd = request.getRequestDispatcher("DangKy.jsp?tb=loi");
					rd.forward(request, response);
				} else {
					response.sendRedirect("trangchuController?dk=ok");
				}

			}else {
				RequestDispatcher rd = request.getRequestDispatcher("DangKy.jsp");
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
