package cn.itcast.pro.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.itcast.pro.bean.LigerUIResult;
import cn.itcast.pro.dao.ModelMapper;
import cn.itcast.pro.domain.Model;
import cn.itcast.pro.domain.User;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Service
public class ModelService extends BaseService<Model>{
	@Autowired
	private ModelMapper modelMapper;
	public LigerUIResult<Model> queryAll(Integer page, Integer rows){
		 // 设置分页参数
        PageHelper.startPage(page, rows);
        List<Model> modles = this.modelMapper.queryAllModel();

        // 获取分页的参数
        PageInfo<Model> pageInfo = new PageInfo<Model>(modles);
        return new LigerUIResult(pageInfo.getTotal(), pageInfo.getList());
		//List<Model> queryAllModel = modelMapper.queryAllModel();
	}
	
	public void saveModel(Model model) {
		modelMapper.saveModel(model);
	}
	
	

}
