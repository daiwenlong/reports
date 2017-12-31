package com.dwl.rep.controller;

import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.dwl.rep.common.ConUtils;
import com.dwl.rep.common.FreeMarker;
import com.dwl.rep.pojo.ReportInfo;
import com.dwl.rep.service.RepService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;
import com.sun.org.apache.xpath.internal.operations.Mod;

import freemarker.template.TemplateException;

@Controller
@RequestMapping("/rep")
public class RepController {
	
	@Resource
	private RepService repService;
	
	/**
	 * 获取列表
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("/getInfoList")
	public String getInfoList(HttpServletRequest request,Model model){
		Page<ReportInfo> page =ConUtils.setPage(request);
		this.repService.getRepList();
		PageInfo<ReportInfo> pageInfo = page.toPageInfo();
		model.addAttribute("pageInfo", pageInfo);
		return "rep/rep_list";
		
	}
	
	/**
	 * 生成模板
	 * @param repId
	 * @return
	 * @throws TemplateException 
	 * @throws IOException 
	 */
	@RequestMapping("/generateTemplate")
	public String generateTemplate(String repId,Model model) throws IOException, TemplateException{
		ReportInfo reportInfo = repService.getInfoWithDeal(repId);
		String html = FreeMarker.MakeHtml(reportInfo);
		reportInfo.setTemplet(html);
		repService.updateRepInfo(reportInfo);
		model.addAttribute("html", html);
		return "rep/rep_template";
	}

}
