package web2021.study07;

import java.util.ArrayList;

public class ABManager {
	ArrayList<AddrBook> ablist;
	
	public ABManager() {
		ablist = new ArrayList<AddrBook>();
	}
	
	public void add(AddrBook newBook) {
		ablist.add(newBook);
	}
	public Iterable<AddrBook> getList(){
		return ablist;
	}
}
