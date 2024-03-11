package NguyenVanManhCuongdao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import NguyenVanManhCuongbean.loaibean;



public class loaidao {
	public ArrayList<loaibean> getloai() throws Exception{
		ArrayList<loaibean> ds = new ArrayList<loaibean>();
		KetNoidao kn = new KetNoidao();
		kn.KetNoi();
		String sql = "select * from loai";
		//b3 tao
		PreparedStatement cmd = kn.cn.prepareStatement(sql);
		//b4
		ResultSet rs = cmd.executeQuery();
		while(rs.next()) {
			String maloai = rs.getString("maloai");
			String tenloai = rs.getString("tenloai");
			ds.add(new loaibean(maloai,tenloai));
		}
		//dong ket noi
		rs.close();
		kn.cn.close();
		return ds;
	}
	
	public int Them(String maloai,String tenloai) throws Exception {
		KetNoidao kn = new KetNoidao();
		kn.KetNoi();
		String sql = "insert into loai(maloai,tenloai) values (?,?)";
		PreparedStatement cmd = kn.cn.prepareStatement(sql);	
		cmd.setString(1, maloai);
		cmd.setString(2, tenloai);
		int res = cmd.executeUpdate();
		cmd.close();
		kn.cn.close();
		return res;
	}
	
	public int Xoa(String maloai) throws Exception {
		KetNoidao cs = new KetNoidao();
		cs.KetNoi();
		String sql = "delete from loai where maloai = ?";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);	
		cmd.setString(1, maloai);
		int res = cmd.executeUpdate();
		cmd.close();
		cs.cn.close();
		return res;
	}
	
	public int Sua(String maloai,String tenloai) throws Exception {
		KetNoidao cs = new KetNoidao();
		cs.KetNoi();
		String sql = "update loai set tenloai = ? where maloai= ?";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);	
		cmd.setString(1, tenloai);
		cmd.setString(2, maloai);
		int res = cmd.executeUpdate();
		cmd.close();
		cs.cn.close();
		return res;
	}
}
