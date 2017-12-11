package cn.yubo.chr.web.action;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;

import cn.yubo.chr.domain.Student;
import cn.yubo.chr.domain.Xuanke;
import cn.yubo.chr.service.StuService;
import cn.yubo.chr.utils.ChrUtils;

@Controller
@Scope("prototype")
public class StuAction extends BaseAction<Xuanke>{
	@Autowired
	private StuService stuService;
	
	private String stuId;
	private String classId;
	
	public void setStuId(String stuId) {
		this.stuId = stuId;
	}
	
	public void setClassId(String classId) {
		this.classId = classId;
	}
	

	

	public String query(){
		
		try {
			List list = stuService.query(stuId,classId);
			ChrUtils.getSession().setAttribute("xuankeList", list);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return "chengji";
	}
	public String delete(){
		stuService.delete(stuId,classId);
		return "chengji";
	}
	public String add(){
		stuService.add(stuId,classId,model.getScore());
		return "chengji";
	}
}
