package NguyenVanManhCuongbean;

public class adminxacnhanbean {
	private long MaChiTietHD;
	private String hoten;
	private String tensanpham;
	private long gia;
	private long SoLuongMua;
	private long thanhtien;
	private boolean damua;
	private long MaHoaDon;
	public adminxacnhanbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public adminxacnhanbean(long maChiTietHD, String hoten, String tensanpham, long gia, long soLuongMua, long thanhtien,
			boolean damua, long maHoaDon) {
		super();
		MaChiTietHD = maChiTietHD;
		this.hoten = hoten;
		this.tensanpham = tensanpham;
		this.gia = gia;
		SoLuongMua = soLuongMua;
		this.thanhtien = thanhtien;
		this.damua = damua;
		MaHoaDon = maHoaDon;
	}
	public long getMaChiTietHD() {
		return MaChiTietHD;
	}
	public String getHoten() {
		return hoten;
	}
	public String gettensanpham() {
		return tensanpham;
	}
	public long getGia() {
		return gia;
	}
	public long getSoLuongMua() {
		return SoLuongMua;
	}
	public long getThanhtien() {
		return thanhtien;
	}
	public boolean isDamua() {
		return damua;
	}
	public long getMaHoaDon() {
		return MaHoaDon;
	}
	public void setMaChiTietHD(long maChiTietHD) {
		MaChiTietHD = maChiTietHD;
	}
	public void setHoten(String hoten) {
		this.hoten = hoten;
	}
	public void settensanpham(String tensanpham) {
		this.tensanpham = tensanpham;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public void setSoLuongMua(long soLuongMua) {
		SoLuongMua = soLuongMua;
	}
	public void setThanhtien(long thanhtien) {
		this.thanhtien = thanhtien;
	}
	public void setDamua(boolean damua) {
		this.damua = damua;
	}
	public void setMaHoaDon(long maHoaDon) {
		MaHoaDon = maHoaDon;
	}
}
	
