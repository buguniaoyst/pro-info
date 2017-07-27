package cn.itcast.mybatis.test;

import cn.itcast.pro.domain.User;

import java.util.List;

/**
 * Created by yst on 2017/7/24.
 */
public interface UserMapper {
    User queryUserById(int i);

    List<User> findAll();

    User findUserByName(String 龚海);
}
