package cn.itcast.pro.action;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cn.itcast.pro.bean.LigerUIResult;
import cn.itcast.pro.domain.Model;
import cn.itcast.pro.service.ModelService;

import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("wenjuan")
public class ModelController {
	 private Logger LOGGER = LoggerFactory.getLogger(ModelController.class);
	 
	 @Autowired
	 private ModelService modelService;
	 
	@RequestMapping(method=RequestMethod.GET)
    public ResponseEntity<LigerUIResult<Model>> queryAll(@RequestParam(value="page",defaultValue="1")Integer page,@RequestParam(value="rows",defaultValue="30")Integer rows){
        //入参去打印日志
        if(LOGGER.isDebugEnabled()){//检查日志的级别是否开启debug级别
            //{}代表占位符
        	LOGGER.debug("查询问卷模板 page={},rows={}",page,rows);
        }
        try {
        	LigerUIResult<Model> ligerUIResult = this.modelService.queryAll(page,rows);
            return ResponseEntity.ok(ligerUIResult);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
            LOGGER.error("查询问卷模板  page={},rows={}",page,rows);
        }
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
    }
	
	@RequestMapping(method=RequestMethod.POST)
    public ResponseEntity<Boolean> addItem(Model model){
        //alt+shift+z 快速添加try-catch块 
        try {
           this.modelService.saveModel(model);
            return ResponseEntity.status(HttpStatus.CREATED).body(true);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(false);
    }
}
