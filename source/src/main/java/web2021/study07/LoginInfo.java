package web2021.study07;

public class LoginInfo {
	String id;
	String passwd;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	
	public boolean isvalid() {
		return id.equals("guest") && passwd.equals("1234");
	}
}
