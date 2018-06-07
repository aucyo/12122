package user;

/**
 * User类为注册时所使用的类 用户账号为email，名字为name，密码为password，手机号为phone，用户序号为id
 * id和email为数据库中的主码，用来唯一确定一个用户
 * 
 * @author 60569
 */
public class User {
	private int id;
	private String email;
	private String name;
	private String password;
	private String phone;
	private String sex;
	private String birthday;
	private String school;
	private String professionaltitle;
	private String researcharea;

	public User(int id, String email, String name, String password, String phone, String sex, String birthday,
			String school, String professionaltitle, String researcharea) {
		this.id = id;
		this.email = email;
		this.name = name;
		this.password = password;
		this.phone = phone;
		this.sex = sex;
		this.birthday = birthday;
		this.school=school;
		this.professionaltitle = professionaltitle;
		this.researcharea = researcharea;
	}
	public User() {
	}

	/**
	 * 返回用户的id
	 * 
	 * @return id
	 */
	public int getId() {
		return id;
	}

	/**
	 * 重新设置用户的id
	 * 
	 * @param id
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * 返回用户的email
	 * 
	 * @return email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * 重新设置用户的email
	 * 
	 * @param email
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * 返回用户的名字
	 * 
	 * @return name
	 */
	public String getName() {
		return name;
	}

	/**
	 * 重新设置用户的名字
	 * 
	 * @param name
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * 重新设置用户的密码
	 * 
	 * @param password
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	public String getPassword() {
		return password;
	}

	/**
	 * 返回用户的手机号
	 * 
	 * @return phone
	 */
	public String getPhone() {
		return phone;
	}

	/**
	 * 重新设置用户的手机号
	 * 
	 * @param phone
	 */
	public void setPhone(String phone) {
		this.phone = phone;
	}

	/**
	 * 返回用户的性别
	 * 
	 * @return sex
	 */
	public String getSex() {
		return sex;
	}

	/**
	 * 重新设置用户的性别
	 * 
	 * @param sex
	 */
	public void setSex(String sex) {
		this.sex = sex;
	}

	/**
	 * 返回用户的出生年月
	 * 
	 * @return birthday
	 */
	public String getBirthday() {
		return birthday;
	}

	/**
	 * 重新设置用户的生日
	 * 
	 * @param birthday
	 */
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	
	/**
	 * 返回用户的学校
	 * 
	 * @return school
	 */
	public String getSchool() {
		return school;
	}

	/**
	 * 重新设置用户的学校
	 * 
	 * @param school
	 */
	public void setSchool(String school) {
		this.school = school;
	}

	/**
	 * 返回用户的职称
	 * 
	 * @return professionaltitle
	 */
	public String getProfessionaltitle() {
		return professionaltitle;
	}

	/**
	 * 重新设置用户的职称
	 * 
	 * @param professionaltitle
	 */
	public void setProfessionaltitle(String professionaltitle) {
		this.professionaltitle = professionaltitle;
	}

	/**
	 * 返回用户的研究方向
	 * 
	 * @return researcharea
	 */
	public String getResearcharea() {
		return researcharea;
	}

	/**
	 * 重新设置用户的研究领域
	 * 
	 * @param researcharea
	 */
	public void setResearcharea(String researcharea) {
		this.researcharea = researcharea;
	}

}
