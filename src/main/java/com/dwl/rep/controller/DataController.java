package com.dwl.rep.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;
import com.dwl.rep.common.ConUtils;
import com.dwl.rep.common.Strings;
import com.dwl.rep.pojo.DataInfo;
import com.dwl.rep.pojo.DbInfo;
import com.dwl.rep.service.DataService;
import com.dwl.rep.service.DbService;
import com.dwl.rep.service.NumService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;

/**
 * 数据项控制器
 * @author dwl
 *
 */
@Controller
@RequestMapping("/data")
public class DataController {
	
	@Resource
	private DataService dataService;
	
	@Resource
	private NumService numService;
	
	@Resource
	private DbService dbService;
	
	/**
	 * 数据项列表
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping("/getInfoList")
	public String getDataList(Model model,HttpServletRequest request){
		Page<DataInfo> page = ConUtils.setPage(request);
		dataService.getInfoList();
		PageInfo<DataInfo> pageInfo = page.toPageInfo();
		model.addAttribute("pageInfo", pageInfo);
		return "data/info_list";
	}
	
	/**
	 * 编辑新增跳转
	 * @param dataId
	 * @param model
	 * @return
	 */
	@RequestMapping("/toDataEdit")
	public String toDataEdit(String dataId,Model model){
		DataInfo dataInfo = null;
		if(!Strings.isEmpty(dataId)){
			dataInfo = dataService.getInfoById(dataId);
		}
		model.addAttribute("dataInfo", dataInfo);
		return "data/info_edit";
	}
	
	/**
	 * 保存新增或编辑
	 * @param dataInfo
	 * @return
	 */
	@RequestMapping("/toDataSave")
	public String addOrEdit(DataInfo dataInfo){
		if(Strings.isEmpty(dataInfo.getId())){
			dataInfo.setId(numService.getNum("DT"));
			dataService.saveData(dataInfo);
		}else{
			dataService.updateData(dataInfo);
		}
		return "redirect:/data/getInfoList";	
	}
	
	/**
	 * 获取所有数据源
	 * @return json
	 */
	@RequestMapping(value="/getDbJson",produces = "application/json; charset=utf-8")
	@ResponseBody
	public String getDbJson(){
		List<DbInfo> dbInfos = dbService.getInfoList();
		Map<String, String> map = new HashMap<>();
		dbInfos.forEach(dbInfo->{
			map.put(dbInfo.getId(), dbInfo.getDbName());
		});
		return JSON.toJSONString(map);
	}

}
