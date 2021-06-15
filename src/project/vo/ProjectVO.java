package project.vo;

public class ProjectVO {
	private String id;
	private String pwd;
	private String name;
	private String address;
	private String birth;
	private String gender;
	private String phone;
	
	public ProjectVO() {}
	public ProjectVO(String tId, String tPwd, String tName, String tAddr, String tGender, String tPhone)
	{
		this.id = tId;
		this.pwd = tPwd;
		this.name = tName;
		this.address = tAddr;
		this.gender = tGender;
		this.phone = tPhone;
	}
	public String getId() {
		return id;
	}
	public void setId(String tId) {
		this.id = tId;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String tPwd) {
		this.pwd = tPwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String tName) {
		this.name = tName;
	}
	public String getAddr() {
		// TODO Auto-generated method stub
		return address;
	}
	public void setAddr(String tAddr) {
		this.address = tAddr;
	}
	public String getBirth() {
		// TODO Auto-generated method stub
		return birth;
	}
	public void setBirth(String tBirth) {
		this.birth = tBirth;
	}
	public String getGender() {
		// TODO Auto-generated method stub
		return gender;
	}
	public void setGender(String tGender) {
		this.gender = tGender;
	}
	public String getPhone() {
		// TODO Auto-generated method stub
		return phone;
	}
	public void setphone(String tPhone) {
		this.phone = tPhone;
	}
	
	
}
