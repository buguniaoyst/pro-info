package cn.itcast.pro.service;

import cn.itcast.pro.dao.UserDao;
import cn.itcast.pro.domain.User;
import com.github.abel533.entity.Example;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by yst on 2017/7/19.
 */
@Service
public class UserService extends BaseService<User> {
    @Autowired
    private UserDao userDao;

    public List<User> queryListByExample(User user) {
        Example ex = new Example(User.class);
        ex.createCriteria().andEqualTo("name", user.getName())
                .andEqualTo("password", user.getPassword());
        return userDao.selectByExample(ex);
    }
}
