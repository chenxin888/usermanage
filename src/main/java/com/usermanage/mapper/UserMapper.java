package com.usermanage.mapper;

import java.util.List;

import com.usermanage.pojo.User;


public interface UserMapper {

    public User queryUserById(Long id);

    public List<User> querUserList();

    public void saveUser(User user);

    public void addTime(User user);

}
