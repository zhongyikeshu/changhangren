package cn.yubo.chr.service.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.yubo.chr.dao.StuDao;
import cn.yubo.chr.domain.Student;
import cn.yubo.chr.domain.Xuanke;
import cn.yubo.chr.service.StuService;

@Service
@Transactional
public class StuServiceImpl implements StuService{

	@Autowired
	private StuDao stuDao;
	public List query(String stuId, String classId) throws SQLException {
		if(StringUtils.isNotBlank(stuId)&StringUtils.isNotBlank(classId)){
			return stuDao.query(stuId,classId);
		}else if(StringUtils.isNotBlank(stuId)&StringUtils.isBlank(classId)){
			return stuDao.queryByStuId(stuId);
		}else if(StringUtils.isBlank(stuId) & StringUtils.isNotBlank(classId)){
			return stuDao.queryByClassId(classId);
		}
		return null;
	}
	
	public void delete(String stuId, String classId) {
		if(StringUtils.isNotBlank(stuId)&StringUtils.isNotBlank(classId)){
			stuDao.delete(stuId,classId);
		}else if(StringUtils.isNotBlank(stuId)&StringUtils.isBlank(classId)){
			stuDao.deleteByStuId(stuId);
		}else if(StringUtils.isBlank(stuId) & StringUtils.isNotBlank(classId)){
			stuDao.deleteByClassId(classId);
		}
		
		
	}


	public void add(String stuId, String classId, Integer score) {
		stuDao.add(stuId,classId,score);
		
	}

}
