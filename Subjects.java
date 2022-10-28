package com.infinite.college;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Subjects")
public class Subjects {
	
	
	@Id
	@Column(name="subjectId")
	private int subjectId;
	
	@Column(name="year")
	private int year;
	
	@Column(name="instructor")
	private String instructor;
	
	@Column(name="subject")
	private String subject;
	
	@Column(name="theory")
	private int theory;
	
	@Column(name="practical")
	private int practical;

	
	
	public int getSubjectsId() {
		return subjectId;
	}

	public void setSubjectsId(int subjectsId) {
		this.subjectId = subjectId;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
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

	public int getTheory() {
		return theory;
	}

	public void setTheory(int theory) {
		this.theory = theory;
	}

	public int getPractical() {
		return practical;
	}

	public void setPractical(int practical) {
		this.practical = practical;
	}
	
	
	

}
