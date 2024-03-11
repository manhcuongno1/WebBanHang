package NguyenVanManhCuongdao;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;



public class HoaDondao {

	public long getmaxhd() throws Exception {
		KetNoidao cs = new KetNoidao();
		cs.KetNoi();;

		String sql = "select TOP 1 MaHoaDon from HoaDon order by MaHoaDon desc";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		ResultSet rs = cmd.executeQuery();

		long maHoaDon = 0;
		while (rs.next()) {
			maHoaDon = rs.getLong("MaHoaDon");
		}

		rs.close();

		return maHoaDon;
	}

	public int addHoaDon(long makh) throws Exception {
		KetNoidao cs = new KetNoidao();
		cs.KetNoi();

		String sql = "insert into HoaDon(makh,NgayMua,damua) values(?,?,?)";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		cmd.setLong(1, makh);
		//lay ngay gio hien tai
		Date n =new Date();
		SimpleDateFormat dd= new SimpleDateFormat("yyyy-MM-dd");
		String nn = dd.format(n);
		Date n2 = dd.parse(nn);
		cmd.setDate(2, new java.sql.Date(n2.getTime()));
//		cmd.setDate(2, new java.sql.Date(NgayMua.getTime()));
		cmd.setBoolean(3, false);
		int res = cmd.executeUpdate();
		return res;
	}
	public long MaxHd() throws Exception {
		//B1: ket noi vao csdl
		KetNoidao kn= new KetNoidao();
		kn.KetNoi();
		String sql="select max(MaHoaDon) as HDLN from hoadon" ;

		//B3: tao cau lenh prepareStatemnt
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		//b4 truyen tham so
		ResultSet rs= cmd.executeQuery();
		long max = 0;
		if(rs.next()) {
			max=  rs.getLong(1);
		}
		cmd.close(); 
		kn.cn.close();
		return max;
	}
	
	public int Sua(long mahd) throws Exception {
		KetNoidao cs = new KetNoidao();
		cs.KetNoi();

		String sql = "update hoadon set damua = 1 where MaHoaDon = ?";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);	
		cmd.setLong(1, mahd);
		int res = cmd.executeUpdate();
		cmd.close();
		cs.cn.close();
		return res;
	}
	
	public int Xoa(long mahd) throws Exception {
		KetNoidao cs = new KetNoidao();
		cs.KetNoi();

		String sql = "delete hoadon where MaHoaDon = ?";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);	
		cmd.setLong(1, mahd);
		int res = cmd.executeUpdate();
		cmd.close();
		cs.cn.close();
		return res;
	}
}
