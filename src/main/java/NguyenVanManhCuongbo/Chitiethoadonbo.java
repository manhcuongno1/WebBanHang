package NguyenVanManhCuongbo;
import java.util.ArrayList;

import NguyenVanManhCuongbean.adminxacnhanbean;
import NguyenVanManhCuongdao.chitiethoadondao;


public class Chitiethoadonbo {
	chitiethoadondao chitiet = new chitiethoadondao();
	ArrayList<adminxacnhanbean> ds;
	public int addchitietHoaDon(String masanpham,long soluongmua,long mahoadon) throws Exception {	
		return chitiet.addchitietHoaDon(masanpham, soluongmua, mahoadon);
	}
	public int Sua(long mact) throws Exception {
		return chitiet.Sua(mact);
	}
	
	public ArrayList<adminxacnhanbean> getxacnhan() throws Exception {
		ds = chitiet.getxacnhan();
		return ds;
	}
	public int Xoa(long mact) throws Exception {
		return chitiet.Xoa(mact);
	}
}
