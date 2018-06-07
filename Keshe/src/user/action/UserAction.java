package user.action;

import java.util.Date;
import java.util.List;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import user.dao.*;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import user.MyRs;
import user.Relationship;
import user.User;

public class UserAction extends ActionSupport implements ModelDriven<User> {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	UserDAO ud = new UserDAO();
	
	User user;
	User searchuser;
	List<User> users;
	List<User> searchedusers;
	
	String searcht;
	String searchs;//选择学校
	
	String tdate;
	String temail="";
	String delemail;
	Date deldate;
	
	Relationship stu;
	Relationship tcr;
	List<MyRs> mystu;
	List<MyRs> mytcr;
	List<MyRs> myestu;


	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public List<User> getUsers() {
		return users;
	}
	public void setUsers(List<User> users) {
		this.users = users;
	}
	//----------------------------------------
	public String getTdate() {
		return tdate;
	}
	public void setTdate(String tdate) {
		this.tdate = tdate;
	}
	public User getSearchuser() {
		return searchuser;
	}
	public void setSearchuser(User searchuser) {
		this.searchuser = searchuser;
	}
	public List<User> getSearchedusers() {
		return searchedusers;
	}
	public void setSearchedusers(List<User> searchedusers) {
		this.searchedusers = searchedusers;
	}
	public List<MyRs> getMytcr() {
		return mytcr;
	}
	public void setMytcr(List<MyRs> mytcr) {
		this.mytcr=mytcr;
	}
	public List<MyRs> getMystu() {
		return mystu;
	}
	public void setMystu(List<MyRs> myestu) {
		this.myestu=myestu;
	}
	public List<MyRs> getMyestu() {
		return myestu;
	}
	public void setMyestu(List<MyRs> myestu) {
		this.myestu=myestu;
	}
//-------------------------------------------------
	public Relationship getTcr() {
		return tcr;
	}public void setTcr(Relationship tcr) {
		this.tcr=tcr;
	}
	public Relationship getStu() {
		return stu;
	}public void setStu(Relationship stu) {
		this.stu=stu;
	}
	public String add() {
		try (Connection c = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/work?characterEncoding=UTF-8",
				"root", "cy2432121"); Statement s = c.createStatement();) {		
			String email = this.user.getEmail();
			String sql = "select * from user where email = '" + email +"'";
			// 执行查询语句，并把结果集返回给ResultSet
			ResultSet rs = s.executeQuery(sql);
			if (rs.next()) {//已注册过
				return "fail";
			}
			else {
				ud.add(this.user);
				return "success";
			}
				
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "fail";
		}		
	}
	
	public String edit() {
		user =ud.showUser(user.getEmail());//根据给的email返回对应的User
		return "edit";
	}

	public String delete() {
		ud.delete(user.getId());
		return "list";
	}

	public String update() {
		ud.update(user);
		return "success";
	}

	public String list() {
		users = ud.listUser();
		return "listJsp";
	}
	public String myInform() {
    	String myInforma=user.getEmail();//登录用户的信息
    	user =ud.showUser(myInforma);
    	mytcr=ud.showUserTcr(myInforma);
    	mystu=ud.showUserStu(myInforma);
		return "myInformJsp";
	}

	public String denglu() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		try (Connection c = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/work?characterEncoding=UTF-8",
				"root", "cy2432121"); Statement s = c.createStatement();) {
			//*********************************
			/*user.setEmail("111@qq.com");
			user.setPassword("11111111");*/
			
			String email = this.user.getEmail();
			String password = this.user.getPassword();
			String sql = "select * from user where email = '" + email + "' and password = '" + password + "'";
			// 执行查询语句，并把结果集返回给ResultSet
			ResultSet rs = s.executeQuery(sql);
			if (rs.next()) {
				String a=user.getEmail();
		    	user =ud.showUser(a);//根据给的email返回对应的User
		    	mytcr=ud.showUserTcr(a);
		    	mystu=ud.showUserStu(a);
		    	
		    	//System.out.println(myTcr.size());
		    	
				return "success";
			}
			else
				return "fail";
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return "fail";
		}
	}
	public String zhuce() {
		return "tiaozhuan";
	}
	public String connect() {
		return "connect";
	}
	@Override
	public User getModel() {
		// TODO Auto-generated method stub
		return user;
	}
    //-------------------------------------------
    /*public void myInformShow() {
    	user=ud.showUser(user.getEmail());//根据给的email返回对应的User
    	myTcr=(MyRs) ud.showUserTcr("dd");
    	myStu=(MyRs) ud.showUserStu("dd");
	}*/
    public String search() {
    	String a=searchuser.getName();
    	String b=searchuser.getSchool();
    	searchedusers=ud.searchUser(a,b);//根据给的email返回对应的User列表
		return "searchJsp";
	}
    public String message() {
    	String messagea=user.getEmail();
    	searchedusers=ud.myMessages(messagea);
		return "messageJsp";
	}
    public String messageac() {
    	String messageaca=user.getEmail();
    	String messageacb=stu.getEmail1();
    	stu=ud.showRs(messageacb, messageaca);
    	stu.setState(1);
    	ud.updateRs(stu);//根据给的email返回对应的User列表
    	user =ud.showUser(messageaca);
    	searchedusers=ud.myMessages(messageaca);
		return "messageJsp";
	}
    public String messagedn() {
    	String messagedna=user.getEmail();
    	String messagednb=stu.getEmail1();
    	ud.delRs(messagednb,messagedna);//根据给的email返回对应的User列表
    	user =ud.showUser(messagedna);
    	searchedusers=ud.myMessages(messagedna);
		return "messageJsp";
	}
    public String delStu() {
    	//String a=delemail;
    	String a=stu.getEmail1();
    	String b=user.getEmail();//登录用户的信息
    	ud.delRs(a,b);//根据给的email返回对应的User列表
    	user =ud.showUser(b);
    	mytcr=ud.showUserTcr(b);
    	mystu=ud.showUserStu(b);
		return "myInformJsp";
	}
    
    
    public String addStuEnd() {
    	ud.addStuEnd(stu.getEmail1(),user.getEmail(),stu.getEnd());//根据给的email返回对应的User列表
    	String b=user.getEmail();//登录用户的信息
    	user =ud.showUser(b);
    	mytcr=ud.showUserTcr(b);
    	mystu=ud.showUserStu(b);
    	return "myInformJsp";
	}
    public String addTcr() {
    	String addTcra=user.getEmail();//登录用户的信息
    	user =ud.showUser(addTcra);
    	mytcr=ud.showUserTcr(addTcra);
    	mystu=ud.showUserStu(addTcra);
    	this.tcr.setEmail1(addTcra);
    	this.tcr.setState(0);
    	ud.addRs(this.tcr);//根据给的email返回对应的User列表
		return "myInformJsp";
	}
    public String addTcrStart() {
    	ud.addTcrStart(user.getEmail(),tcr.getEmail2(),tcr.getStart());//根据给的email返回对应的User列表
		return "myInformJsp";
	}
    public String hisInform() {
    	
    	String x=searchuser.getEmail();
    	searchuser=ud.showUser(x);
    	user=ud.showUser(user.getEmail());
    	mytcr=ud.showUserTcr(x);
    	mystu=ud.showUserStu(x);
    	return "hisInformJsp";
    }
	
	
}
