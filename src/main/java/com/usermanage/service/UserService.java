package com.usermanage.service;

import java.util.List;

import com.usermanage.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import com.usermanage.bean.EasyUIResult;
import com.usermanage.pojo.User;

@Service
public class UserService {

    /**
     * Spring和Mybatis的整合
     */
    @Autowired
    private UserMapper userMapper;

    public EasyUIResult queryUserList(Integer page, Integer rows) {
        // 设置分页参数
        PageHelper.startPage(page, rows);
        List<User> users = this.userMapper.querUserList();

        // 获取分页的参数
        PageInfo<User> pageInfo = new PageInfo<User>(users);
        return new EasyUIResult(pageInfo.getTotal(), pageInfo.getList());
    }

    public Boolean saveUser(User user) {
        try {
            this.userMapper.saveUser(user);
            return true;
        } catch (Exception e) {
            // 不推荐这么写，会导致事务无法回滚
            e.printStackTrace();
        }
        return false;
    }

    public void addTime(User user) {
        this.userMapper.addTime(user);
    }
}
