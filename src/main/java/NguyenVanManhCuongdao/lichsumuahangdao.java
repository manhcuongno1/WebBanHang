package NguyenVanManhCuongdao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import NguyenVanManhCuongbean.lichsubean;


public class lichsumuahangdao {
	public ArrayList<lichsubean> dslsmh(long makhang) throws Exception {
		ArrayList<lichsubean> ds = new ArrayList<lichsubean>();

		KetNoidao cs = new KetNoidao();
		cs.KetNoi();

		String sql = "select * from dbo.Viewlsmuahang where makh = ? order by damua";
		PreparedStatement cmd = cs.cn.prepareStatement(sql);
		cmd.setLong(1, makhang);
		ResultSet rs = cmd.executeQuery();
		while (rs.next()) {
			String masanpham = rs.getString("masanpham");
			String tensanpham = rs.getString("tensanpham");
			long soluong = rs.getLong("SoLuongMua");
			long gia = rs.getLong("gia");
			long thanhtien = rs.getLong("thanhtien");
			Boolean damua = rs.getBoolean("damua");
			Date ngaymua = rs.getDate("NgayMua");
			ds.add(new lichsubean(makhang, masanpham, tensanpham, soluong, gia, thanhtien, damua, ngaymua));
		}
		rs.close();
		return ds;
		
	}
}
