package cn.itcast.pro.service;

import cn.itcast.pro.domain.Proinfo;
import cn.itcast.pro.domain.User;
import com.github.abel533.entity.Example;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by yst on 2017/7/20.
 */
@Service
public class ProService extends  BaseService<Proinfo> {
    public  Proinfo queryProByExample(User loginUser){
        Example ex = new Example(Proinfo.class);
        ex.createCriteria().andEqualTo("name", loginUser.getName());
        List<Proinfo> proList = this.getMapper().selectByExample(ex);
        if(null != proList && proList.size()>0){
            return proList.get(0);
        }
        return null;
    }



    public void update(Proinfo proinfo) {
        super.getMapper().updateByPrimaryKeySelective(proinfo);
    }
}
