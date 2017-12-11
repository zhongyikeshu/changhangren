package cn.yubo.chr.web.action;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import org.apache.commons.lang.StringUtils;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.mysql.fabric.Response;


import cn.yubo.chr.domain.Book;
import cn.yubo.chr.domain.Message;
import cn.yubo.chr.domain.User;
import cn.yubo.chr.service.MessageService;
import cn.yubo.chr.utils.ChrUtils;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.JsonConfig;
@Controller
@Scope("prototype")
public class MessageAction extends BaseAction<Message>{
	
	@Autowired
	private MessageService messageService;
	//用来接收前台传来的bookID
	private String bookId;
	//用来接收前台传来的父评论Id 
	private String fatherMessage;
	//用来接收前台传来的时间
	private String time;
	public String getBookId() {
		return bookId;
	}

	public void setBookId(String bookId) {
		this.bookId = bookId;
	}
	
	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}
	
	public String getFatherMessage() {
		return fatherMessage;
	}

	public void setFatherMessage(String fatherMessage) {
		this.fatherMessage = fatherMessage;
	}

	public String add(){
		//封装Message参数：messageNum（Message主键   自动生成）    book（书ID）   message(父评论)
		//user(评论者)   	messageContent(评论内容     前台传入)   messageTime(评论时间戳)
		
		Book b = new Book();
		b.setId(Integer.parseInt(bookId));
		model.setBook(b);           //  book（书ID）
		
		if(StringUtils.isBlank(fatherMessage)){
			model.setMessage(null);     //message(父评论)
		}else{
			Message m = new Message();
			m.setMessageNum(Integer.parseInt(fatherMessage));
			model.setMessage(m);
		}
		
		User user = ChrUtils.getUser();
		if(user!=null){
			model.setUser(user);//user(评论者) 
			//现将String的时间转换为Date类型，再讲date.getTime()转化为Timestamp
			SimpleDateFormat format =  new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");  
			Date date = null;
			try {
				date = format.parse(time);
			} catch (ParseException e) {
				e.printStackTrace();
			}  
			Timestamp t = new Timestamp(date.getTime());
			model.setMessageTime(t);
			Integer messageNum = messageService.save(model);
			
			JsonConfig jsonConfig = new JsonConfig();
			Map<String, String> map = new HashMap<String, String>();
			map.put("head",user.getHead());
			map.put("nick",user.getNick());
			map.put("phone", user.getPhone());
			map.put("messageNum", messageNum.toString());
			String json = JSONObject.fromObject(map,jsonConfig).toString();
			ServletActionContext.getResponse().setContentType("text/json;charset=utf-8");
			try {
				ServletActionContext.getResponse().getWriter().print(json);
			} catch (IOException e) {
				e.printStackTrace();
			}
			return NONE;
		}
		return NONE;	
	}

	
	
}
