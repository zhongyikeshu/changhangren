package cn.yubo.chr.dao;


import java.sql.SQLException;
import java.util.List;


import cn.yubo.chr.domain.Xuanke;

public interface StuDao extends BaseDao<Xuanke>{

	List query(String stuId, String classId) throws SQLException;
	
	List queryByClassId(String classId);

	List queryByStuId(String stuId) throws SQLException;

	void delete(String stuId, String classId);

	void deleteByStuId(String stuId);

	void deleteByClassId(String classId);

	void add(String stuId, String classId, Integer score);

}
