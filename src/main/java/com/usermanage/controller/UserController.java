package com.usermanage.controller;

import com.usermanage.bean.EasyUIResult;
import com.usermanage.pojo.User;
import com.usermanage.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@RequestMapping("user")
@Controller
public class UserController {

    /**
     * Spring和SpringMVC整合到一起
     */
    @Autowired
    private UserService userServie;

    /**
     * 通用的页面跳转逻辑
     * 
     * @param pageName
     * @return
     */
    @RequestMapping("{pageName}")
    public String toUsers(@PathVariable("pageName") String pageName) {
        return pageName;
    }

    /**
     * 查询用户列表
     * 
     * @param page
     * @param rows
     * @return
     */
    @RequestMapping(value = "list", method = RequestMethod.GET)
    @ResponseBody
    public EasyUIResult queryUserList(@RequestParam(value = "page", defaultValue = "1") Integer page,
            @RequestParam(value = "rows", defaultValue = "5") Integer rows) {





        return this.userServie.queryUserList(page, rows);
    }

    /**
     * 新增用户数据
     * 
     * @param user
     * @return
     */
    @RequestMapping(value = "save", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> saveUser(User user) {
        Map<String, Object> result = new HashMap<String, Object>();
        Boolean isSuccess = this.userServie.saveUser(user);
        if (isSuccess) {






            result.put("status", "200");
        } else {
            result.put("status", "500");
        }
        return result;
    }

}
