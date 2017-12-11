package cn.yubo.chr.service;

import java.sql.SQLException;
import java.util.List;

import cn.yubo.chr.domain.Student;
import cn.yubo.chr.domain.Xuanke;

public interface StuService {

	List query(String stuId, String classId) throws SQLException;

	void delete(String stuId, String classId);

	void add(String stuId, String classId, Integer score);

}
