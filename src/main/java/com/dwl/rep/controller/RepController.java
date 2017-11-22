package com.dwl.rep.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dwl.rep.common.ConUtils;
import com.dwl.rep.pojo.ReportInfo;
import com.dwl.rep.service.RepService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/rep")
public class RepController {
	
	@Resource
	private RepService repService;
	
	@RequestMapping("/getInfoList")
	public String getInfoList(HttpServletRequest request,Model model){
		
		Page<ReportInfo> page =ConUtils.setPage(request);
		this.repService.getRepList();
		PageInfo<ReportInfo> pageInfo = page.toPageInfo();
		model.addAttribute("pageInfo", pageInfo);
		return "rep_list";
		
	}

}
