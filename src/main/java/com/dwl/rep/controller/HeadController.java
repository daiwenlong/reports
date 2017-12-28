package com.dwl.rep.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dwl.rep.common.ConUtils;
import com.dwl.rep.pojo.HeaderInfo;
import com.dwl.rep.service.HeaderService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;

@Controller("/head")
public class HeadController {
	
	@Resource
	private HeaderService headerService;
	
	@RequestMapping("/getHeadList")
	public String getHeaderList(HttpServletRequest request,Model model){
		Page<HeaderInfo> page = ConUtils.setPage(request);
		headerService.getHeadList();
		PageInfo<HeaderInfo> pageInfo = page.toPageInfo();
		model.addAttribute("pageInfo", pageInfo);
		return "head/info_list";
	}

}
