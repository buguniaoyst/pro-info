package cn.itcast.pro.action;


import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.alibaba.fastjson.JSON;
import com.fasterxml.jackson.annotation.JsonIgnore;

import cn.itcast.pro.bean.ModelItemForm;
import cn.itcast.pro.domain.ModelItem;
import cn.itcast.pro.service.ModelItemService;

@Controller
@RequestMapping("model/item")
public class ModelItemController {
	 private Logger LOGGER = LoggerFactory.getLogger(ModelItemController.class);
	 
	 @Autowired
	 private ModelItemService modelItemService;
	 
	 @RequestMapping(method=RequestMethod.POST)
	 public ResponseEntity<Void> addItem(@RequestBody String items){
		 List<ModelItem> parseArray = JSON.parseArray(items,ModelItem.class);
	        //alt+shift+z 快速添加try-catch块 
	        try {
	            Boolean isSuucess = this.modelItemService.saveModelItem(parseArray);
	            if(!isSuucess){
	                return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
	            }
	            return ResponseEntity.status(HttpStatus.CREATED).body(null);
	        } catch (Exception e) {
	            // TODO Auto-generated catch block
	            e.printStackTrace();
	        }
	        
	        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(null);
	    }
}
