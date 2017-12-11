package cn.yubo.chr.domain;

import java.util.HashSet;
import java.util.Set;

/**
 * Student entity. @author MyEclipse Persistence Tools
 */

public class Student implements java.io.Serializable {

	// Fields

	private String stuId;
	private String name;
	private String major;
	private Integer totalscore;
	private Set xuankes = new HashSet(0);

	// Constructors

	/** default constructor */
	public Student() {
	}

	/** minimal constructor */
	public Student(String stuId) {
		this.stuId = stuId;
	}

	/** full constructor */
	public Student(String stuId, String name, String major, Integer totalscore,
			Set xuankes) {
		this.stuId = stuId;
		this.name = name;
		this.major = major;
		this.totalscore = totalscore;
		this.xuankes = xuankes;
	}

	// Property accessors

	public String getStuId() {
		return this.stuId;
	}

	public void setStuId(String stuId) {
		this.stuId = stuId;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMajor() {
		return this.major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public Integer getTotalscore() {
		return this.totalscore;
	}

	public void setTotalscore(Integer totalscore) {
		this.totalscore = totalscore;
	}

	public Set getXuankes() {
		return this.xuankes;
	}

	public void setXuankes(Set xuankes) {
		this.xuankes = xuankes;
	}

}