package cn.ziming.my.trip.web.admin.web.controller;

import cn.ziming.my.trip.web.admin.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

/**
 * 用户管理
 */
@Controller
public class UserController {
    @Autowired
    private UserService userService;


}
