package com.usermanage.mapper;

import com.alibaba.fastjson.JSON;
import com.usermanage.pojo.User;
import org.apache.log4j.Logger;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;


public class UserMapperTest {

    private UserMapper userMapper;
    private static Logger logger = Logger.getLogger(UserMapperTest.class);
    @Before
    public void setUp() throws Exception {
        //初始化Spring容器
        ApplicationContext applicationContext = new ClassPathXmlApplicationContext("spring/applicationContext*.xml");
        //通过Spring获取SqlSessionFactory
//        SqlSessionFactory sqlSessionFactory = applicationContext.getBean(SqlSessionFactory.class);
//        SqlSession sqlSession = sqlSessionFactory.openSession(true);
//        this.userMapper = sqlSession.getMapper(UserMapper.class);
        this.userMapper = applicationContext.getBean(UserMapper.class);
    }

    @Test
    public void testQueryUserById() {
        User user = this.userMapper.queryUserById(1L);
        logger.info(JSON.toJSONString(user));
    }

}
