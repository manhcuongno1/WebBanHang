package NguyenVanManhCuongbean;

import java.util.Date;

public class sanphambean {
	private String masanpham;
	private String tensanpham;
	private long soluong;
	private long gia;
	private String anh;
	private String maloai;
	private String mota;
	private String mau;
	private Date ngaynhap;
	public sanphambean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public sanphambean(String masanpham, String tensanpham, long soluong, long gia, String anh, String maloai,
			String mota, String mau, Date ngaynhap) {
		super();
		this.masanpham = masanpham;
		this.tensanpham = tensanpham;
		this.soluong = soluong;
		this.gia = gia;
		this.anh = anh;
		this.maloai = maloai;
		this.mota = mota;
		this.mau = mau;
		this.ngaynhap = ngaynhap;
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
	public String getMaloai() {
		return maloai;
	}
	public String getMota() {
		return mota;
	}
	public String getMau() {
		return mau;
	}
	public Date getNgaynhap() {
		return ngaynhap;
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
	public void setMaloai(String maloai) {
		this.maloai = maloai;
	}
	public void setMota(String mota) {
		this.mota = mota;
	}
	public void setMau(String mau) {
		this.mau = mau;
	}
	public void setNgaynhap(Date ngaynhap) {
		this.ngaynhap = ngaynhap;
	}
	
}
