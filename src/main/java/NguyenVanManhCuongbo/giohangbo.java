package NguyenVanManhCuongbo;


import java.util.ArrayList;

import NguyenVanManhCuongbean.giohangbean;



public class giohangbo {
//luu all sach vao ds
	public ArrayList<giohangbean> ds = new ArrayList<giohangbean>();
	public void Them(String masanpham, String tensanpham, long soluong, long gia, String anh,String mau) throws Exception{
		//kiem tra hang da co chua, neu co thi tang so luong
		for(giohangbean h:ds)
			if(h.getMasanpham().equals(masanpham)) {
				h.setSoluong(h.getSoluong() + soluong);
			return;	
			}
		giohangbean g=new giohangbean(masanpham, tensanpham, soluong, gia, anh, mau);
		ds.add(g);
	}
	public void Xoa(String masanpham) throws Exception{
		for(giohangbean h:ds)
			if(h.getMasanpham().equals(masanpham)) {
				ds.remove(h);
			return;	
			}
	}
	public void Sua(String masanpham, long slmoi) throws Exception{
	int n =ds.size();
	for(int i=0;i<n;i++)
	{
		giohangbean h = ds.get(i);
		if(h.getMasanpham().equals(masanpham)) {
			h.setSoluong(slmoi);
			ds.set(i, h);
			return;
		}
	}
	}
	public long Tong() throws Exception{
		long s = 0;
		for(giohangbean h:ds) {
			s+=h.getThanhtien();
		}
		return s;
	}
	public long Tongsp() {
		int n = ds.size();
		long s = 0;
		for (int i = 0; i < n; i++) {
			s = s + ds.get(i).getSoluong();
		}
		return s;
	}
}
