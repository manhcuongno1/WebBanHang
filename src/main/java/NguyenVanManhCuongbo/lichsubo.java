package NguyenVanManhCuongbo;

import java.util.ArrayList;

import NguyenVanManhCuongbean.lichsubean;
import NguyenVanManhCuongdao.lichsumuahangdao;



public class lichsubo {
	lichsumuahangdao lsmh = new lichsumuahangdao();
	public ArrayList<lichsubean> dslsmh(long makh) throws Exception {
		return lsmh.dslsmh(makh);
	}
}
