package cn.itcast.pro.action;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("page")
@Controller
public class PageController {

    // 通用页面跳转逻辑实现
    @RequestMapping("{pageName}")
    public String toPage(@PathVariable("pageName") String pageName) {
        return pageName;
    }

}