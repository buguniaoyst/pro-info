package cn.itcast.pro.dao;

import cn.itcast.pro.domain.Model;
import com.github.abel533.mapper.Mapper;

import java.util.List;

/**
 * Created by yst on 2017/7/24.
 */
public interface ModelMapper extends Mapper<Model> {
    List<Model> queryAllModel();

	void saveModel(Model model);
}
