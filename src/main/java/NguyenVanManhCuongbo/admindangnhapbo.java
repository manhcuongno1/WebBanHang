package NguyenVanManhCuongbo;

import NguyenVanManhCuongbean.admindangnhapbean;
import NguyenVanManhCuongdao.admindangnhapdao;

public class admindangnhapbo {
	admindangnhapdao ad = new admindangnhapdao();
	public admindangnhapbean ktdn(String TenDangNhap,String MatKhau) throws Exception{	
		return ad.ktdn(TenDangNhap, MatKhau);
	}
}
