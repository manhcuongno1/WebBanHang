package NguyenVanManhCuongdao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import NguyenVanManhCuongbean.sanphambean;



public class sanphamdao {
	public ArrayList<sanphambean> getsp() throws Exception{
		ArrayList<sanphambean> ds = new ArrayList<sanphambean>();
		KetNoidao kn = new KetNoidao();
		kn.KetNoi();
		String sql = "select * from sanpham";
		//b3 tao
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		//b4
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			String masanpham = rs.getString("masanpham");
			String tensanpham = rs.getString("tensanpham"); 
			long soluong = rs.getLong("soluong");
			long gia = rs.getLong("gia");
			String anh = rs.getString("anh"); 
			String maloai = rs.getString("maloai"); 
			String mota = rs.getString("mota"); 
			String mau = rs.getString("mau"); 
			Date ngaynhap = rs.getDate("ngaynhap");
			ds.add(new sanphambean(masanpham, tensanpham, soluong, gia, anh, maloai, mota, mau, ngaynhap));
		}	
		rs.close();
		kn.cn.close();
		return ds;
	} 
	
	public ArrayList<sanphambean> getbanchay() throws Exception{
		ArrayList<sanphambean> ds = new ArrayList<sanphambean>();
		KetNoidao kn = new KetNoidao();
		kn.KetNoi();
		String sql = "SELECT TOP 10 sp.*, s.soluongdaban FROM sanpham as sp\r\n"
				+ "JOIN \r\n"
				+ "    (\r\n"
				+ "		SELECT  masanpham, SUM(SoLuongMua) AS soluongdaban FROM ChiTietHoaDon GROUP BY masanpham\r\n"
				+ "    ) as s\r\n"
				+ "ON \r\n"
				+ "    sp.masanpham = s.masanpham\r\n"
				+ "ORDER BY s.soluongdaban DESC;";
		//b3 tao
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		//b4
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			String masanpham = rs.getString("masanpham");
			String tensanpham = rs.getString("tensanpham"); 
			long soluong = rs.getLong("soluong");
			long gia = rs.getLong("gia");
			String anh = rs.getString("anh"); 
			String maloai = rs.getString("maloai"); 
			String mota = rs.getString("mota"); 
			String mau = rs.getString("mau"); 
			Date ngaynhap = rs.getDate("ngaynhap");
			ds.add(new sanphambean(masanpham, tensanpham, soluong, gia, anh, maloai, mota, mau, ngaynhap));
		}	
		rs.close();
		kn.cn.close();
		return ds;
	} 
	
	
	public ArrayList<sanphambean> getNewsp() throws Exception{
		ArrayList<sanphambean> ds = new ArrayList<sanphambean>();
		KetNoidao kn = new KetNoidao();
		kn.KetNoi();
		String sql = "SELECT TOP 10 * FROM sanpham as s ORDER BY s.ngaynhap DESC";
		//b3 tao
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		//b4
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			String masanpham = rs.getString("masanpham");
			String tensanpham = rs.getString("tensanpham"); 
			long soluong = rs.getLong("soluong");
			long gia = rs.getLong("gia");
			String anh = rs.getString("anh"); 
			String maloai = rs.getString("maloai"); 
			String mota = rs.getString("mota"); 
			String mau = rs.getString("mau"); 
			Date ngaynhap = rs.getDate("ngaynhap");
			ds.add(new sanphambean(masanpham, tensanpham, soluong, gia, anh, maloai, mota, mau, ngaynhap));
		}	
		rs.close();
		kn.cn.close();
		return ds;
	} 
	
	public int Them(String masanpham, String tensanpham, String soLuong, String gia,String anh, String maLoai,String mota, String mau,
			 String ngayNhap) throws Exception {

		KetNoidao kn = new KetNoidao();
		kn.KetNoi();
		String sql = "insert into sanpham  values(?,?,?,?,?,?,?,?,?)";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, masanpham);
		cmd.setString(2, tensanpham);
		cmd.setLong(3, Long.parseLong(soLuong));
		cmd.setLong(4, Long.parseLong(gia));
		cmd.setString(5, anh);
		cmd.setString(6, maLoai);
		cmd.setString(7, mota);
		cmd.setString(8, mau);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date parsed = format.parse(ngayNhap);
		java.sql.Date datesql = new java.sql.Date(parsed.getTime());
		cmd.setDate(9, datesql);

		int kq = cmd.executeUpdate();
		cmd.close();
		kn.cn.close();
		return kq;
	}
	
	public int Xoa(String masanpham) throws Exception {
		KetNoidao kn = new KetNoidao();
		kn.KetNoi();
		String sql = "delete from sanpham where masanpham = ?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(1, masanpham);
		int kq = cmd.executeUpdate();
		cmd.close();
		kn.cn.close();
		return kq;
	}

	public int Sua(String masanpham, String tensanpham, String soLuong, String gia,String anh, String maLoai,String mota, String mau,
			 String ngayNhap) throws Exception {
		KetNoidao kn = new KetNoidao();
		kn.KetNoi();
		String sql = "update sanpham set tensanpham = ?,soLuong= ?,gia=?,anh=?,maLoai=?, mota=?,mau=?,ngaynhap=? where masanpham = ?";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		cmd.setString(9, masanpham);
		cmd.setString(1, tensanpham);
		cmd.setLong(2, Long.parseLong(soLuong));
		cmd.setLong(3, Long.parseLong(gia));
		cmd.setString(4, anh);
		cmd.setString(5, maLoai);
		cmd.setString(6, mota);
		cmd.setString(7, mau);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date parsed = format.parse(ngayNhap);
		java.sql.Date datesql = new java.sql.Date(parsed.getTime());
		cmd.setDate(8, datesql);
		int kq = cmd.executeUpdate();
		cmd.close();
		kn.cn.close();
		return kq;
	}

	

}
