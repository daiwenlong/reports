package com.dwl.rep.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dwl.rep.common.ConUtils;
import com.dwl.rep.common.Strings;
import com.dwl.rep.common.db.DataBaseFactory;
import com.dwl.rep.pojo.DbInfo;
import com.dwl.rep.service.DbService;
import com.dwl.rep.service.NumService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;

/**
 * 数据库控制器
 * @author dwl
 *
 */
@Controller
@RequestMapping("/db")
public class DbController {
	
	@Resource
	private DbService dbService;
	
	@Resource
	private NumService numService;
	
	/**
	 * 获取数据源列表
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping("/getInfoList")
	public String getInfoList(Model model,HttpServletRequest request){
		Page<DbInfo> page = ConUtils.setPage(request);
		dbService.getInfoList();
		PageInfo<DbInfo> pageInfo = page.toPageInfo();
		model.addAttribute("pageInfo",pageInfo);
		return "db/info_list";
		
	}
	
	/**
	 * 编辑数据源
	 * @param dbId
	 * @param model
	 * @return
	 */
	@RequestMapping("/toDbEdit")
	public String toDbEdit(String dbId,Model model){
		DbInfo dbInfo = null;
		if(!Strings.isEmpty(dbId)){
			dbInfo = dbService.getInfoById(dbId);
		}
		model.addAttribute("dbInfo", dbInfo);
		return "db/info_edit";
	}
	
	/**
	 * 保存数据源
	 * @param dbInfo
	 * @return
	 */
	@RequestMapping("/toDbSave")
	public String addOrEdit(DbInfo dbInfo){
		if(Strings.isEmpty(dbInfo.getId())){
			dbInfo.setId(numService.getNum("DB"));
			dbService.saveDbInfo(dbInfo);
		}else{
			dbService.updateDbInfo(dbInfo);
			DataBaseFactory.getInstance().removeDataSource(dbInfo);
		}
		return "redirect:/db/getInfoList";	
	}
	
	/**
	 * 删除数据源
	 * @param dbId
	 * @return
	 */
	@RequestMapping("/delDbInfo")
	@ResponseBody
	public String delectDbInfo(String dbId){
		if(dbService.isDbUsed(dbId))
			return "dataBase is used!";
		DataBaseFactory.getInstance().removeDataSource(dbService.getInfoById(dbId));
		if(dbService.delectInfoById(dbId)>0)
			return "delete success!";
		return "delete failed!";
	}
	
	
	/**
	 * 测试数据库连接
	 * @param dbId
	 * @return
	 */
	@RequestMapping("/connDataBase")
	@ResponseBody
	public String connDataBase(String dbId){
		DbInfo dbInfo = dbService.getInfoById(dbId);
		if(DataBaseFactory.getInstance().testConnection(dbInfo))
			return "connection success!";
		else
			return "connection failed";
	}

}
