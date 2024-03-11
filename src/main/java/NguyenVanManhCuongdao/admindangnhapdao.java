package NguyenVanManhCuongdao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import NguyenVanManhCuongbean.admindangnhapbean;



public class admindangnhapdao {
	public admindangnhapbean ktdn(String TenDangNhap,String MatKhau) throws Exception{	
		KetNoidao kn = new KetNoidao();
		kn.KetNoi();
		String sql = "select * from DangNhap where TenDangNhap=? and MatKhau=?";
		//b3 tao
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, TenDangNhap);
		cmd.setString(2, MatKhau);
		//b4
		ResultSet rs = cmd.executeQuery();
		admindangnhapbean ad = null;
		if(rs.next()) {
			ad = new admindangnhapbean(TenDangNhap, MatKhau);	
		}	
		return ad;
	}
}
