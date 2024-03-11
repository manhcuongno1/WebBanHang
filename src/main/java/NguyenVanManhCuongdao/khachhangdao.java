package NguyenVanManhCuongdao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import NguyenVanManhCuongbean.khachhangbean;



public class khachhangdao {
	public khachhangbean ktdn(String tendn,String pass) throws Exception{	
		KetNoidao kn = new KetNoidao();
		kn.KetNoi();
		String sql = "select * from khachhang where tendn=? and pass=?";
		//b3 tao
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, tendn);
		cmd.setString(2, pass);
		//b4
		ResultSet rs = cmd.executeQuery();
		khachhangbean kh = null;
		if(rs.next()) {
			long makh = rs.getLong("makh");
			String hoten = rs.getString("hoten");
			String diachi = rs.getString("diachi");
			String sodt = rs.getString("sodt");
			String email= rs.getString("email");
			kh = new khachhangbean(makh, hoten, diachi, sodt, email, tendn, pass);
		}	
		return kh;
	}
	
	
	public int ThemKH(String hoten,String diachi,String sodt,String email,String tendn,String pass) throws Exception{ 
		
		KetNoidao cs = new KetNoidao();
		cs.KetNoi();

			String sql = "insert into KhachHang(hoten, diachi, sodt,email,tendn,pass) values(?,?,?,?,?,?)";
			PreparedStatement cmd = cs.cn.prepareStatement(sql);
			
			cmd.setString(1, hoten);
			cmd.setString(2, diachi);
			cmd.setString(3, sodt);
			cmd.setString(4, email);
			cmd.setString(5, tendn);
			cmd.setString(6, pass);

			int res = cmd.executeUpdate();
			return res;
		
	}
	
	
	
	
	public ArrayList<khachhangbean> getKH() throws Exception {
		ArrayList<khachhangbean> ds = new ArrayList<khachhangbean>();

		KetNoidao cs = new KetNoidao();
		cs.KetNoi();

		String sql = "select * from KhachHang";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();

		while (rs.next()) {
			long makh = rs.getLong("makh");
			String hoten = rs.getString("hoten");
			String diachi = rs.getString("diachi");
			String sodt = rs.getString("sodt");
			String email= rs.getString("email");
			String tendn= rs.getString("tendn");
			String pass= rs.getString("pass");
			ds.add(new khachhangbean(makh, hoten, diachi, sodt, email, tendn, pass));
		}
		rs.close();
		return ds;
		
	}
	
	
	public static void main(String[] args) {
		khachhangdao t = new khachhangdao();
		ArrayList<khachhangbean> p = new ArrayList<khachhangbean>();

		int q = 0;
		try {
			/* q = t.ThemKH("t", "t", "t", "t", "t", "t"); */
//			q = t.addChucVu("bunb", "kkk", (long) 50000, 1);
//			q = t.editChucVu(7, "bunb", "ggg", (long) 50000, 1);
//			q = t.deleteChucVu(7);
		} catch (Exception e) {

			e.printStackTrace();
		}
		/* System.out.println(q); */
//		System.out.println(q);

	}
}
