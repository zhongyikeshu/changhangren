package cn.yubo.chr.service.impl;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;



import cn.yubo.chr.dao.MessageDao;
import cn.yubo.chr.domain.Message;
import cn.yubo.chr.service.MessageService;

@Service
@Transactional
public class MessageServiceImpl implements MessageService{
	
	@Autowired
	private MessageDao messageDao;
	
	public Integer save(Message message) {
		messageDao.save(message);
		Integer messageNum = message.getMessageNum();
		if(message.getMessage()==null){
			message.setRootNumber(messageNum);
			messageDao.saveOrUpdate(message);
		}else{
			Message fathermessage =messageDao.findById(message.getMessage().getMessageNum());
			
			Integer rootNumber = fathermessage.getRootNumber();
			message.setRootNumber(rootNumber);
			messageDao.saveOrUpdate(message);
		}
		return messageNum;
	}
	
	
}
