package cn.yubo.chr.dao;

import cn.yubo.chr.domain.Lost;
import cn.yubo.chr.utils.PageBean;

public interface LostDao extends  BaseDao<Lost>{

	void lostPageQuery(PageBean pageBean);

	

}
