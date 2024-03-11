package NguyenVanManhCuongbean;

public class admindangnhapbean {
	private String TenDangNhap;
	private String MatKhau;
	public admindangnhapbean() {
		super();
		// TODO Auto-generated constructor stub
	}
	public admindangnhapbean(String tenDangNhap, String matKhau) {
		super();
		TenDangNhap = tenDangNhap;
		MatKhau = matKhau;
	}
	public String getTenDangNhap() {
		return TenDangNhap;
	}
	public String getMatKhau() {
		return MatKhau;
	}
	public void setTenDangNhap(String tenDangNhap) {
		TenDangNhap = tenDangNhap;
	}
	public void setMatKhau(String matKhau) {
		MatKhau = matKhau;
	}
	
}
