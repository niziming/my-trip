package cn.ziming.my.trip.web.admin.web.controller;

import cn.ziming.my.trip.domain.User;
import cn.ziming.my.trip.web.admin.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * 用户管理
 */
@Controller
//@RequestMapping(value = "user")
public class UserController {
    @Autowired
    private UserService userService;

    /**
     * 跳转到用户列表页
     * @return
     */
    @RequestMapping(value = "userlist", method = RequestMethod.GET)
    public String userlist(Model model){
        List<User> users = userService.selectAll();
        model.addAttribute("users", users);
        return "user_list";
    }

    /**
     * 跳转用户表单页
     * @return
     */
    @RequestMapping(value = "userform", method = RequestMethod.GET)
    public String userForm(){
        //HttpSession session = request.getSession();
        //session.invalidate();
        return "user_form";
    }

    @RequestMapping(value = "saveform", method = RequestMethod.POST)
    public String saveForm(User user, RedirectAttributes redirectAttributes){
        if (userService.chececkUser(user)){
            userService.save(user);
        }
        else {
            return "user_form";
        }
        return "redirect:/user_list";
    }

}
