package NguyenVanManhCuongdao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import NguyenVanManhCuongbean.adminxacnhanbean;



public class chitiethoadondao {
	public int addchitietHoaDon(String masanpham,long soluongmua,long mahoadon) throws Exception {
		KetNoidao cs = new KetNoidao();
		cs.KetNoi();
		String sql = "insert into ChiTietHoaDon(SoLuongMua,damua,masanpham,MaHoaDon) values(?,?,?,?)";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		cmd.setLong(1, soluongmua);
		cmd.setBoolean(2, false);
		cmd.setString(3, masanpham);
		cmd.setLong(4, mahoadon);		
		int res = cmd.executeUpdate();
		cmd.close();
		cs.cn.close();
		return res;
	}
	
	public int Sua(long mact) throws Exception {
		KetNoidao cs = new KetNoidao();
		cs.KetNoi();
		String sql = "update ChiTietHoaDon set damua = 1 where MaChiTietHD = ?";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);	
		cmd.setLong(1, mact);
		int res = cmd.executeUpdate();
		cmd.close();
		cs.cn.close();
		return res;
	}
	public int Xoa(long mact) throws Exception {
		KetNoidao cs = new KetNoidao();
		cs.KetNoi();

		String sql = "delete ChiTietHoaDon where MaChiTietHD  = ?";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);	
		cmd.setLong(1, mact);
		int res = cmd.executeUpdate();
		cmd.close();
		cs.cn.close();
		return res;
	}
	
	public ArrayList<adminxacnhanbean> getxacnhan() throws Exception {
		ArrayList<adminxacnhanbean> ds = new ArrayList<adminxacnhanbean>();

		KetNoidao kn = new KetNoidao();
		kn.KetNoi();

		String sql = "select * from ViewAdminXacNhan";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		
		ResultSet rs = cmd.executeQuery();
		while (rs.next()) {
			 long MaChiTietHD = rs.getLong("MaChiTietHD");
			 String hoten = rs.getString("hoten");
			 String tensanpham = rs.getString("tensanpham");
			 long gia = rs.getLong("gia");
			 long SoLuongMua = rs.getLong("SoLuongMua");
			 long thanhtien = rs.getLong("thanhtien");
			 boolean damua = rs.getBoolean("damua");	
			 long MaHoaDon = rs.getLong("MaHoaDon");
			ds.add(new adminxacnhanbean(MaChiTietHD, hoten, tensanpham, gia, SoLuongMua, thanhtien, damua, MaHoaDon));
		}
		rs.close();
		kn.cn.close();
		return ds;
	}
}
