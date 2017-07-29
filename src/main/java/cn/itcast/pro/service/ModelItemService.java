package cn.itcast.pro.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.itcast.pro.dao.ModelItemMapper;
import cn.itcast.pro.domain.Model;
import cn.itcast.pro.domain.ModelItem;


@Service
public class ModelItemService extends BaseService<Model>{
	@Autowired
	private ModelItemMapper modelItemMapper;
	
	
	public Boolean saveModelItem(List<ModelItem> items) {
		int count=0;
		for (ModelItem modelItem : items) {
			modelItemMapper.saveModelItem(modelItem);
			count++;
		}
		return count>0?Boolean.TRUE:Boolean.FALSE;
	}

}
