package NguyenVanManhCuongdao;

import java.sql.Connection;
import java.sql.DriverManager;



public class KetNoidao {
	public static Connection cn;

	public void KetNoi() {
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver"); // Xác định HQTCSDL
			System.out.println("Da nap Driver");
			String st = "jdbc:sqlserver://DESKTOP-R1U1KTF\\VINAHOUSE:1433;databaseName=NguyenVanManhCuong;user=sa;password=123";
			cn = DriverManager.getConnection(st);
			System.out.println("Da ket noi den csdl NguyenVanManhCuong");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
	}
	public static void main(String[] args) {
		KetNoidao kn = new KetNoidao();
		kn.KetNoi();
	}
}
