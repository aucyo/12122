package user;

public class MyRs {
	public String name;
	public String email;
	public String phone;
	public String start;
	public String end;
	
	public MyRs(String name,String email,String phone,String start,String end) {
		this.name=name;
		this.email=email;
		this.phone=phone;
		this.start=start;
		this.end=end;
	}
	public MyRs() {
		
	}
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	public String getStart() {
		return this.start;
	}
	public void setStart(String start) {
		this.start=start;
	}
	
	public String getEnd() {
		return this.end;
	}
	public void setEnd(String end){
		this.end=end;
	}
}
