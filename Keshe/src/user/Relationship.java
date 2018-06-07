package user;


public class Relationship {
	private int id;
	private String email1;
	private String email2;
	private String start;
	private String end;
	private int state;
	public Relationship(int id,String email1,String email2,String start,String end,int state) {
		this.id=id;
		this.email1=email1;
		this.email2=email2;
		this.start=start;
		this.end=end;
		this.state=state;
	}
	public Relationship() {
	}
	

	public void setId(int id) {
		this.id=id;
	}
	public int getId() {
		return this.id;
	}
	public String getEmail1() {
		return this.email1;
	}
	public void setEmail1(String email1) {
		this.email1=email1;
	}
	
	public String getEmail2() {
		return this.email2;
	}
	public void setEmail2(String email2) {
		this.email2=email2;
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
	public void setState(int state) {
		this.state=state;
	}
	public int getState() {
		return this.state;
	}
}