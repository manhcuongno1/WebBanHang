package NguyenVanManhCuongbo;

import java.util.ArrayList;

import NguyenVanManhCuongbean.khachhangbean;
import NguyenVanManhCuongdao.khachhangdao;



public class khachhangbo {
	khachhangdao kdao = new khachhangdao();
	ArrayList<khachhangbean> ds;
	
	public ArrayList<khachhangbean> getKH() throws Exception {
		ds = kdao.getKH();
		return ds;
	}
	
	public khachhangbean getkh(String tendn,String pass) throws Exception{
		return kdao.ktdn(tendn, pass);
	}
	
	
	public int ThemKH(String hoten,String diachi,String sodt,String email,String tendn,String pass) throws Exception{
		for(khachhangbean t :ds) {
			if(tendn.equals("")||t.getTendn().equals(tendn)) {
				return 0;
			}
		}
		return kdao.ThemKH(hoten, diachi, sodt, email, tendn, pass);
	}	
}
