package com.dwl.rep.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dwl.rep.common.ConUtils;
import com.dwl.rep.pojo.DbInfo;
import com.dwl.rep.service.DbService;
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
	
	@RequestMapping("/getInfoList")
	public String getInfoList(Model model,HttpServletRequest request){
		Page<DbInfo> page = ConUtils.setPage(request);
		dbService.getInfoList();
		PageInfo<DbInfo> pageInfo = page.toPageInfo();
		model.addAttribute("pageInfo",pageInfo);
		return "db/dbinfo_list";
		
	}

}
