package cn.ziming.my.trip.web.admin.web.controller;

import cn.ziming.my.trip.web.admin.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * 用户管理
 */
@Controller
@RequestMapping(value = "user")
public class UserController {
    @Autowired
    private UserService userService;

    /**
     * 跳转到用户列表页面
     * @return
     */
    @RequestMapping(value = "list", method = RequestMethod.GET)
    public String userlist(){
        return "user/user_list";
    }
}
