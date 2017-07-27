package cn.itcast.mybatis.test;


import cn.itcast.pro.domain.User;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;

/**
 * Created by yst on 2017/7/24.
 */
public class MybatisTest {
    public static void main(String[] args) throws IOException {
        //指定mybatis的核心配置文件
        String resource = "mybatis-config-test.xml";
        //读取配置文件
        InputStream inputStream = Resources.getResourceAsStream(resource);
        //通过SqlSessionFactoryBuilder得到SqlSessionFactory
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        //从sqlSessionFactory中获取session
        SqlSession session = sqlSessionFactory.openSession();

        System.out.println(session);
        User user = session.selectOne("abc.selectById",1);
        System.out.println(user);

    }
}
