package cn.ziming.my.trip.web.admin.web.controller;

import cn.ziming.my.trip.commons.dto.BaseResult.BaseResult;
import cn.ziming.my.trip.domain.User;
import cn.ziming.my.trip.web.admin.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.util.List;

/**
 * 用户管理
 */
@Controller
//@RequestMapping(value = "user")
public class UserController {
    @Autowired
    private UserService userService;

    @ModelAttribute
    public User getUser(Long uid){
        User user = null;
        //id不为空 则从数据库获取
        if(uid != null) {
            user = userService.getUserByUid(uid);

        }
        else {
            user = new User();
        }
        return user;
    }
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
        return "user_form";
    }

    /**
     * 保存用户信息
     * @param user
     * @param model
     * @param redirectAttributes
     * @return
     */
    @RequestMapping(value = "saveform", method = RequestMethod.POST)
    public String saveForm(User user, Model model, RedirectAttributes redirectAttributes){
        BaseResult baseResult  = userService.save(user);
        //保存成功
        if (baseResult.getStatus() == 200){
            redirectAttributes.addFlashAttribute("baseResult", baseResult);
            return "redirect:/userlist";
        }
        //保存失败
        else {
            model.addAttribute("baseResult", baseResult);
            return "user_form";
        }
    }

    /**
     * 用户列表搜索
     * @param model
     * @param keywords
     * @return
     */
    @RequestMapping(value = "search", method = RequestMethod.POST)
    public String search(Model model, String keywords){
        List<User> users = userService.search(keywords);
        model.addAttribute("users", users);

        return "user_list";
    }

}
