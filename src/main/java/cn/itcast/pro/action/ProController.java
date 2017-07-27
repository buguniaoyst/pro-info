package cn.itcast.pro.action;

import cn.itcast.pro.domain.Proinfo;
import cn.itcast.pro.domain.User;
import cn.itcast.pro.service.ProService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by yst on 2017/7/20.
 */
@Controller
@RequestMapping(value = "pro")
public class ProController {

    @Autowired
    private ProService proService;
    //SVN测试
    @RequestMapping(value = "save",method = RequestMethod.POST)
    public ModelAndView saveProInfo(Proinfo proinfo, HttpSession session) {
        User loginUser = (User) session.getAttribute("loginUser");

        if (null == loginUser) {
            return new ModelAndView("login","message","哥哥，请先登录！");
        }
        //查看该用户是否已经提交跟踪记录
        Proinfo pro = proService.queryProByExample(loginUser);
        if(null != pro){
            proinfo.setId(pro.getId());
            proService.update(proinfo);
        }else{
            proinfo.setClassname("黑马");
            proinfo.setName(loginUser.getName());
            proService.save(proinfo);
        }
        return  new ModelAndView("redirect:/rest/page/index");
    }


    @RequestMapping(value = "proinfo_list",method = RequestMethod.GET)
    @ResponseBody
    public Map<String, Object> getProInfoList() {
        Map<String, Object> resultMap = new HashMap<>();
        List<Proinfo> proinfoList = proService.queryAll();

        resultMap.put("pagesize", 100);
        resultMap.put("results", proinfoList);
        return resultMap;
    }

    @RequestMapping(value = "export_prolist",method = RequestMethod.POST)
    public ModelAndView exportProList() {
        ModelAndView mv = new ModelAndView("excelView");
        mv.addObject("proList",proService.queryAll());
        return mv;
    }


}
