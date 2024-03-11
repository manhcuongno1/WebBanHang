package NguyenVanManhCuongbean;

public class giohangbean {
	private String masanpham;
	private String tensanpham;
	private long soluong;
	private long gia;
	private String anh;
	private String mau;
	private long thanhtien;
	public giohangbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public giohangbean(String masanpham, String tensanpham, long soluong, long gia, String anh, String mau) {
		super();
		this.masanpham = masanpham;
		this.tensanpham = tensanpham;
		this.soluong = soluong;
		this.gia = gia;
		this.anh = anh;
		this.mau = mau;
	}
	public String getMasanpham() {
		return masanpham;
	}
	public String getTensanpham() {
		return tensanpham;
	}
	public long getSoluong() {
		return soluong;
	}
	public long getGia() {
		return gia;
	}
	public String getAnh() {
		return anh;
	}
	public String getMau() {
		return mau;
	}
	public void setMasanpham(String masanpham) {
		this.masanpham = masanpham;
	}
	public void setTensanpham(String tensanpham) {
		this.tensanpham = tensanpham;
	}
	public void setSoluong(long soluong) {
		this.soluong = soluong;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public void setMau(String mau) {
		this.mau = mau;
	}
	public void setThanhtien(long thanhtien) {
		this.thanhtien = thanhtien;
	}
	
	public long getThanhtien() {
		return soluong*gia;
	}
}
