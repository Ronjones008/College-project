package com.infinite.college;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Feedback")
public class Feedback {
	
	@Id
	@Column(name="fId")
	private String fId;
	
	@Column(name="studentName")
	private String studentName;
	
	@Column(name="instructor")
	private String instructor;
	
	@Column(name="subject")
	private String subject;
	
	@Column(name="fbValue")
	private String fbValue;

	public String getfId() {
		return fId;
	}

	public void setfId(String fId) {
		this.fId = fId;
	}

	public String getStudentName() {
		return studentName;
	}

	public void setStudentName(String studentName) {
		this.studentName = studentName;
	}

	public String getInstructor() {
		return instructor;
	}

	public void setInstructor(String instructor) {
		this.instructor = instructor;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getFbValue() {
		return fbValue;
	}

	public void setFbValue(String fbValue) {
		this.fbValue = fbValue;
	}
}
