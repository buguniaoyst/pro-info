package cn.itcast.mybatis.test;

import cn.itcast.pro.dao.ModelMapper;
import cn.itcast.pro.domain.Model;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Before;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/**
 * Created by yst on 2017/7/24.
 */
public class MyBatisTest2 {
    private ModelMapper modelMapper;

    @Before
    public void setUp() throws IOException {
        //指定mybatis的核心配置文件
        String resource = "mybatis-config-test.xml";
        //读取配置文件
        InputStream inputStream = Resources.getResourceAsStream(resource);
        //通过SqlSessionFactoryBuilder得到SqlSessionFactory
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        //从sqlSessionFactory中获取session
        SqlSession session = sqlSessionFactory.openSession(true);
        this.modelMapper = session.getMapper(ModelMapper.class);
    }


    @Test
    public void testOneToMany() {
        List<Model> models = this.modelMapper.queryAllModel();
        System.out.println(models);
    }

}
