package org.gidal.user.domain;

import java.util.Date;

public class UserPageWaitingVO {
	private String enterprise_businessName; // 매장명
	private int enterprise_code;
	private int waiting_personnel;
	private Date waiting_now;
	private String user_name;
	private int waiting_code;
	private String reserveAndWaiting_code;
	private String waiting_yn;


	public int getEnterprise_code() {
		return enterprise_code;
	}
	public void setEnterprise_code(int enterprise_code) {
		this.enterprise_code = enterprise_code;
	}
	public String getEnterprise_businessName() {
		return enterprise_businessName;
	}
	public void setEnterprise_businessName(String enterprise_businessName) {
		this.enterprise_businessName = enterprise_businessName;
	}
	public int getWaiting_personnel() {
		return waiting_personnel;
	}
	public void setWaiting_personnel(int waiting_personnel) {
		this.waiting_personnel = waiting_personnel;
	}
	public Date getWaiting_now() {
		return waiting_now;
	}
	public void setWaiting_now(Date waiting_now) {
		this.waiting_now = waiting_now;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public int getWaiting_code() {
		return waiting_code;
	}
	public void setWaiting_code(int waiting_code) {
		this.waiting_code = waiting_code;
	}
	public String getReserveAndWaiting_code() {
		return reserveAndWaiting_code;
	}
	public void setReserveAndWaiting_code(String reserveAndWaiting_code) {
		this.reserveAndWaiting_code = reserveAndWaiting_code;
	}
	public String getWaiting_yn() {
		return waiting_yn;
	}
	public void setWaiting_yn(String waiting_yn) {
		this.waiting_yn = waiting_yn;
	}
}