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

import NguyenVanManhCuongbean.admindangnhapbean;
import NguyenVanManhCuongbean.loaibean;
import NguyenVanManhCuongbo.loaibo;



/**
 * Servlet implementation class adminloaicontroller
 */
@WebServlet("/adminloaicontroller")
public class adminloaicontroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminloaicontroller() {
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
			request.setCharacterEncoding("utf-8");
			response.setCharacterEncoding("utf-8");
			String ml = request.getParameter("txtmaloai");
			String tl = request.getParameter("txttenloai");
			
			loaibo lbo = new loaibo();
			ArrayList<loaibean> ds = lbo.getloai();
			
				if(request.getParameter("butadd")!=null)
				{
					lbo.Them(ml, tl);
				}else {
					if(request.getParameter("butsua")!=null) {
						lbo.Sua(ml, tl);
					}
					else {
						String tab = request.getParameter("tab");
						String mll = request.getParameter("mll");
						if(tab != null) {
							if(tab.equals("select")) {
								request.setAttribute("tenloai", lbo.Tim(mll));
								request.setAttribute("maloai", mll);
							}else {
								lbo.Xoa(mll);
							}
						}
					}
				}
				ds = lbo.getloai();
			request.setAttribute("ds", ds);
			RequestDispatcher rd = request.getRequestDispatcher("adminloai.jsp");
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
