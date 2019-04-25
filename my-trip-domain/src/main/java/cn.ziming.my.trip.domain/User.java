package cn.ziming.my.trip.domain;

import org.springframework.util.DigestUtils;

import java.io.Serializable;
import java.util.Date;

public class User implements Serializable {
	private String uid;
	private String uname;
	private String email;
	private String pwd;
	private Date regDate;

	public User() {
	}

	public User(String email, String pwd) {
		this.email = email;
		this.pwd = DigestUtils.md5DigestAsHex(pwd.getBytes());
		this.regDate = new Date();
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {

		this.pwd = DigestUtils.md5DigestAsHex(pwd.getBytes());
	}

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate() {
		this.regDate = new Date();
	}

	@Override
	public String toString() {
		return "User{" +
				"uid='" + uid + '\'' +
				", uname='" + uname + '\'' +
				", email='" + email + '\'' +
				", pwd='" + pwd + '\'' +
				", regDate=" + regDate +
				'}';
	}
}
