package NguyenVanManhCuongController;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import NguyenVanManhCuongbean.admindangnhapbean;
import NguyenVanManhCuongbean.sanphambean;
import NguyenVanManhCuongbo.sanphambo;

/**
 * Servlet implementation class adminsanphamController
 */
@WebServlet("/adminsanphamController")
public class adminsanphamController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminsanphamController() {
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
			String masanpham = request.getParameter("txtmasp");
			String tensanpham = request.getParameter("txttensp");
			String soluong = request.getParameter("txtsl");
			String gia = request.getParameter("txtgia");
			String maloai = request.getParameter("txtmaloai");
			String mau = request.getParameter("txtmau");
			String anh = request.getParameter("txtanh");
			String ngaynhap = request.getParameter("txtngaynhap");
			String mota = request.getParameter("txtmota");
			
			String butadd = request.getParameter("butadd");
			String butupdate = request.getParameter("butupdate");

			sanphambo spbo = new sanphambo();
			ArrayList<sanphambean> ds = spbo.getsp();
			DiskFileItemFactory factory = new DiskFileItemFactory();
			DiskFileItemFactory fileItemFactory = new DiskFileItemFactory();
			ServletFileUpload upload = new ServletFileUpload(fileItemFactory);
			String dirUrl1 = request.getServletContext().getRealPath("") + File.separator + "files";
			response.getWriter().println(dirUrl1);

			try {
				List<FileItem> fileItems = upload.parseRequest(request);// Lấy về các đối tượng gửi lên
				// duyệt qua các đối tượng gửi lên từ client gồm file và các control
				for (FileItem fileItem : fileItems) {
					if (!fileItem.isFormField()) {// Nếu ko phải các control=>upfile lên
						// xử lý file
						String nameimg = fileItem.getName();
						if (!nameimg.equals("")) {
							// Lấy đường dẫn hiện tại, chủ ý xử lý trên dirUrl để có đường dẫn đúng
							String dirUrl = request.getServletContext().getRealPath("") + File.separator + "files";
							File dir = new File(dirUrl);
							if (!dir.exists()) {// nếu ko có thư mục thì tạo ra
								dir.mkdir();
							}
							String fileImg = dirUrl + File.separator + nameimg;
							File file = new File(fileImg);// tạo file
							try {
								fileItem.write(file);// lưu file
								System.out.println("UPLOAD THÀNH CÔNG...!" +nameimg);
								System.out.println("Đường dẫn lưu file là: " + dirUrl);
								anh = "files/"+nameimg;
										
								
							} catch (Exception e) {
								e.printStackTrace();
							}
						}
					} else// Neu la control
					{
						String sp = fileItem.getFieldName();
						if (sp.equals("txtmasp"))
							masanpham = fileItem.getString("UTF-8");
						if (sp.equals("txttensp"))
							tensanpham = fileItem.getString("UTF-8");
						if (sp.equals("txtsl"))
							soluong = fileItem.getString("UTF-8");
						if (sp.equals("txtgia"))
							gia = fileItem.getString("UTF-8");
						if (sp.equals("txtmaloai"))
							maloai = fileItem.getString("UTF-8");
						if (sp.equals("txtmau"))
							mau = fileItem.getString("UTF-8");
						if (sp.equals("txtanh"))
							anh = fileItem.getString("UTF-8");
						if (sp.equals("txtngaynhap"))
							ngaynhap = fileItem.getString("UTF-8");
						if (sp.equals("txtmota"))
							mota = fileItem.getString("UTF-8");
						if (sp.equals("butadd"))
							butadd = fileItem.getString();
						if (sp.equals("butupdate"))
							butupdate = fileItem.getString();
						
					}
				}

			} catch (FileUploadException e) {
				e.printStackTrace();
			}
			if (butadd != null) {
				spbo.Them(masanpham, tensanpham, soluong, gia, anh, maloai, mota, mau, ngaynhap);
			} else if (butupdate != null) {
				spbo.Sua(masanpham, tensanpham, soluong, gia, anh, maloai, mota, mau, ngaynhap);
			} else {
				// String ml = request.getParameter("ml");
				String tab = request.getParameter("tab");
				if (masanpham != null && tab.equals("select")) {

					request.setAttribute("masanpham", masanpham);
					request.setAttribute("tensanpham", tensanpham);
					request.setAttribute("soluong", soluong);
					request.setAttribute("gia", gia);
					request.setAttribute("maloai", maloai);
					request.setAttribute("mau", mau);
					request.setAttribute("anh", anh);
					request.setAttribute("ngaynhap", ngaynhap);
					request.setAttribute("mota", mota);
				}
				if (masanpham != null && tab.equals("delete")) {
					System.out.println(masanpham);
					spbo.Xoa(masanpham);
				}
			}

			request.setAttribute("dssanpham", spbo.getsp());
			RequestDispatcher rd = request.getRequestDispatcher("adminsanpham.jsp");
			rd.forward(request, response);
			}

		} catch (

		Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
