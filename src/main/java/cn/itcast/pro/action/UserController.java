package cn.itcast.pro.action;

import cn.itcast.pro.domain.User;
import cn.itcast.pro.service.UserService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by yst on 2017/7/19.
 */
@Controller
@RequestMapping("user")
public class UserController {

    private Logger LOGGER = LoggerFactory.getLogger(UserController.class);

    @Autowired
    private UserService userService;


    @RequestMapping(value = "regist",method = RequestMethod.POST)
    public ModelAndView regist(User user) {
        userService.save(user);
        return new ModelAndView("login2","regMessage","注册成功，可以登录了");
    }


    /**
     * 用户登录
     *
     * @return
     */
    @RequestMapping(value = "login",method = RequestMethod.POST)
    public ModelAndView login(User user, HttpSession session) {

        //查询
        List<User> userList = userService.queryListByExample(user);
        if (null != userList && userList.size() > 0) {
            session.setAttribute("loginUser",userList.get(0));
            return new ModelAndView("redirect:/rest/page/bos_wenjuan");
        }

        return new ModelAndView("login","message","请输入正确的用户名和密码");
    }




    @RequestMapping(value = "loginOut")
    public String loginOut(HttpSession session){
        //销毁session
        session.invalidate();
        return "redirect:/rest/page/login";
    }


}