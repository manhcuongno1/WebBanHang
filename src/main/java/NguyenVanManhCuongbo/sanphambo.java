package NguyenVanManhCuongbo;

import java.util.ArrayList;

import NguyenVanManhCuongbean.sanphambean;
import NguyenVanManhCuongdao.sanphamdao;



public class sanphambo {
	sanphamdao spdao = new sanphamdao();
	ArrayList<sanphambean> ds;
	public ArrayList<sanphambean> getsp() throws Exception{
		ds  = spdao.getsp();
		return ds;
	}
	//viet ham de tim sp theo ma loai
	public ArrayList<sanphambean> TimMa(String maloai) throws Exception{
		ArrayList<sanphambean> tam = new ArrayList<sanphambean>();
		for(sanphambean s : ds) {
			if(s.getMaloai().equals(maloai)){
				tam.add(s);
			}
		}
		return tam;
	}
	//viet ham de tim sp theo ma sp
		
	
	public ArrayList<sanphambean> Tim(String key) throws Exception{
		ArrayList<sanphambean> tam = new ArrayList<sanphambean>();
		for(sanphambean s : ds) {
			if(s.getTensanpham().toLowerCase().contains(key.toLowerCase())){
				tam.add(s);
			}
		}
		return tam;
	}
	
	public ArrayList<sanphambean> getbanchay() throws Exception{
		ds = spdao.getbanchay();
		return ds;
	}
	
	public sanphambean TimSp(String masanpham) throws Exception{	
	for(sanphambean s : spdao.getsp()) {
		if(s.getMasanpham().equals(masanpham)){
			return s;
		}
	}
	 	return null;	
	}
	public ArrayList<sanphambean> getNewsp() throws Exception{
		ds = spdao.getNewsp();
		return ds;
	}
	
	public int Them(String masanpham, String tensanpham, String soLuong, String gia,String anh, String maLoai,String mota, String mau,
			 String ngayNhap) throws Exception {
		return spdao.Them(masanpham, tensanpham, soLuong, gia, anh, maLoai, mota, mau, ngayNhap);
	}
	public int Xoa(String masanpham) throws Exception {
		return spdao.Xoa(masanpham);
	}
	public int Sua(String masanpham, String tensanpham, String soLuong, String gia,String anh, String maLoai,String mota, String mau,
			 String ngayNhap) throws Exception {
		return spdao.Sua(masanpham, tensanpham, soLuong, gia, anh, maLoai, mota, mau, ngayNhap);
	}
}
