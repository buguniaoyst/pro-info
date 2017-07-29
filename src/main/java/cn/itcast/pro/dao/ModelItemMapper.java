package cn.itcast.pro.dao;

import cn.itcast.pro.domain.ModelItem;

import com.github.abel533.mapper.Mapper;

/**
 * Created by yst on 2017/7/24.
 */
public interface ModelItemMapper extends Mapper<ModelItem> {

	void saveModelItem(ModelItem modelItem);
	
}
