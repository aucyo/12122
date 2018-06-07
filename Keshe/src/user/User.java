package user;

/**
 * User��Ϊע��ʱ��ʹ�õ��� �û��˺�Ϊemail������Ϊname������Ϊpassword���ֻ���Ϊphone���û����Ϊid
 * id��emailΪ���ݿ��е����룬����Ψһȷ��һ���û�
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
	 * �����û���id
	 * 
	 * @return id
	 */
	public int getId() {
		return id;
	}

	/**
	 * ���������û���id
	 * 
	 * @param id
	 */
	public void setId(int id) {
		this.id = id;
	}

	/**
	 * �����û���email
	 * 
	 * @return email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * ���������û���email
	 * 
	 * @param email
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * �����û�������
	 * 
	 * @return name
	 */
	public String getName() {
		return name;
	}

	/**
	 * ���������û�������
	 * 
	 * @param name
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * ���������û�������
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
	 * �����û����ֻ���
	 * 
	 * @return phone
	 */
	public String getPhone() {
		return phone;
	}

	/**
	 * ���������û����ֻ���
	 * 
	 * @param phone
	 */
	public void setPhone(String phone) {
		this.phone = phone;
	}

	/**
	 * �����û����Ա�
	 * 
	 * @return sex
	 */
	public String getSex() {
		return sex;
	}

	/**
	 * ���������û����Ա�
	 * 
	 * @param sex
	 */
	public void setSex(String sex) {
		this.sex = sex;
	}

	/**
	 * �����û��ĳ�������
	 * 
	 * @return birthday
	 */
	public String getBirthday() {
		return birthday;
	}

	/**
	 * ���������û�������
	 * 
	 * @param birthday
	 */
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	
	/**
	 * �����û���ѧУ
	 * 
	 * @return school
	 */
	public String getSchool() {
		return school;
	}

	/**
	 * ���������û���ѧУ
	 * 
	 * @param school
	 */
	public void setSchool(String school) {
		this.school = school;
	}

	/**
	 * �����û���ְ��
	 * 
	 * @return professionaltitle
	 */
	public String getProfessionaltitle() {
		return professionaltitle;
	}

	/**
	 * ���������û���ְ��
	 * 
	 * @param professionaltitle
	 */
	public void setProfessionaltitle(String professionaltitle) {
		this.professionaltitle = professionaltitle;
	}

	/**
	 * �����û����о�����
	 * 
	 * @return researcharea
	 */
	public String getResearcharea() {
		return researcharea;
	}

	/**
	 * ���������û����о�����
	 * 
	 * @param researcharea
	 */
	public void setResearcharea(String researcharea) {
		this.researcharea = researcharea;
	}

}
