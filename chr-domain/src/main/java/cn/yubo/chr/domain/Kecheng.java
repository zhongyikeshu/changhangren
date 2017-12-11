package cn.yubo.chr.domain;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Kecheng entity. @author MyEclipse Persistence Tools
 */

public class Kecheng implements java.io.Serializable {

	// Fields

	private String classId;
	private String className;
	private String teacher;
	private Timestamp beginTime;
	private Integer csc;//学分
	private Set xuankes = new HashSet(0);

	// Constructors

	/** default constructor */
	public Kecheng() {
	}

	/** minimal constructor */
	public Kecheng(String classId, String className) {
		this.classId = classId;
		this.className = className;
	}

	/** full constructor */
	public Kecheng(String classId, String className, String teacher,
			Timestamp beginTime, Integer csc, Set xuankes) {
		this.classId = classId;
		this.className = className;
		this.teacher = teacher;
		this.beginTime = beginTime;
		this.csc = csc;
		this.xuankes = xuankes;
	}

	// Property accessors

	public String getClassId() {
		return this.classId;
	}

	public void setClassId(String classId) {
		this.classId = classId;
	}

	public String getClassName() {
		return this.className;
	}

	public void setClassName(String className) {
		this.className = className;
	}

	public String getTeacher() {
		return this.teacher;
	}

	public void setTeacher(String teacher) {
		this.teacher = teacher;
	}

	public Timestamp getBeginTime() {
		return this.beginTime;
	}

	public void setBeginTime(Timestamp beginTime) {
		this.beginTime = beginTime;
	}

	public Integer getCsc() {
		return this.csc;
	}

	public void setCsc(Integer csc) {
		this.csc = csc;
	}

	public Set getXuankes() {
		return this.xuankes;
	}

	public void setXuankes(Set xuankes) {
		this.xuankes = xuankes;
	}

}