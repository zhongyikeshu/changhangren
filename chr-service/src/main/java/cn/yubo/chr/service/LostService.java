package cn.yubo.chr.service;

import java.util.List;

import cn.yubo.chr.domain.Lost;
import cn.yubo.chr.utils.PageBean;

public interface LostService {

	void lostPageQuery(PageBean pageBean);

	List<Lost> findAll();



}
