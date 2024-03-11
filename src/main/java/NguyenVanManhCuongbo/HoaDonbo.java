package NguyenVanManhCuongbo;

import NguyenVanManhCuongdao.HoaDondao;

public class HoaDonbo {
	HoaDondao hddao = new HoaDondao();
	public int addHoaDon(long makh) throws Exception {
		return hddao.addHoaDon(makh);
	}
	
	public long MaxHd() throws Exception {
		return hddao.MaxHd();
	}
	public int Sua(long mahd) throws Exception {
		return hddao.Sua(mahd);
	}
	public int Xoa(long mahd) throws Exception {
		return hddao.Xoa(mahd);
	}
}
