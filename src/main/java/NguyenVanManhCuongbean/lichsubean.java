package NguyenVanManhCuongbean;

import java.sql.Date;

public class lichsubean {
	private long makh;
	private String masanpham;
	private String tensanpham;
	private long soluong;
	private long gia;
	private long thanhtien;
	private Boolean damua;
	private Date ngaymua;
	public lichsubean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public lichsubean(long makh, String masanpham, String tensanpham, long soluong, long gia, long thanhtien, Boolean damua,
			Date ngaymua) {
		super();
		this.makh = makh;
		this.masanpham = masanpham;
		this.tensanpham = tensanpham;
		this.soluong = soluong;
		this.gia = gia;
		this.thanhtien = thanhtien;
		this.damua = damua;
		this.ngaymua = ngaymua;
	}
	public Long getMakh() {
		return makh;
	}
	public String getmasanpham() {
		return masanpham;
	}
	public String gettensanpham() {
		return tensanpham;
	}
	public long getSoluong() {
		return soluong;
	}
	public long getGia() {
		return gia;
	}
	public long getThanhtien() {
		return thanhtien;
	}
	public Boolean getDamua() {
		return damua;
	}
	public Date getNgaymua() {
		return ngaymua;
	}
	public void setMakh(Long makh) {
		this.makh = makh;
	}
	public void setmasanpham(String masanpham) {
		this.masanpham = masanpham;
	}
	public void settensanpham(String tensanpham) {
		this.tensanpham = tensanpham;
	}
	public void setSoluong(long soluong) {
		this.soluong = soluong;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public void setThanhtien(long thanhtien) {
		this.thanhtien = thanhtien;
	}
	public void setDamua(Boolean damua) {
		this.damua = damua;
	}
	public void setNgaymua(Date ngaymua) {
		this.ngaymua = ngaymua;
	}
}