package com.dwl.rep.controller;

import java.io.IOException;
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
import com.dwl.rep.common.FreeMarker;
import com.dwl.rep.common.Strings;
import com.dwl.rep.common.quartz.QuartzManager;
import com.dwl.rep.common.quartz.RepJobs;
import com.dwl.rep.pojo.DataInfo;
import com.dwl.rep.pojo.HeaderInfo;
import com.dwl.rep.pojo.ReportInfo;
import com.dwl.rep.service.DataService;
import com.dwl.rep.service.HeaderService;
import com.dwl.rep.service.NumService;
import com.dwl.rep.service.RepService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;
import freemarker.template.TemplateException;

@Controller
@RequestMapping("/rep")
public class RepController {
	
	@Resource
	private RepService repService;
	
	@Resource
	private DataService dataService;
	
	@Resource
	private HeaderService headerService;
	
	@Resource
	private NumService numService;
	
	
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
	public String generateTemplate(String repId,Model model){
		ReportInfo reportInfo = repService.getInfoWithDeal(repId);
		if(Strings.isEmpty(reportInfo.getTemplet())){
			reportInfo.setTemplet(FreeMarker.MakeHtml(reportInfo));
			repService.updateRepInfoOnly(reportInfo);
		}
		model.addAttribute("reportInfo", reportInfo);
		return "rep/rep_template";
	}
	
	/**
	 * 编辑新增
	 * @param repId
	 * @return
	 */
	@RequestMapping("/toEditRep")
	public String toEditRep(String repId,Model model){
		ReportInfo reportInfo = null;
		if(!Strings.isEmpty(repId))
			reportInfo = repService.getInfoWithDetail(repId);
		model.addAttribute("reportInfo", reportInfo);
		return "rep/rep_edit";
	}
	
	/**
	 * 查看
	 * @param repId
	 * @return
	 * @throws TemplateException 
	 * @throws IOException 
	 */
	@RequestMapping("/toViewRep")
	public String toViewRep(String repId,Model model){
		ReportInfo reportInfo = repService.getInfoWithDataById(repId);
		model.addAttribute("reportInfo", reportInfo);
		return "rep/rep_result";
	}
	
	/**
	 * 获取所有数据项
	 * @return json
	 */
	@RequestMapping(value="/getAllData",produces = "application/json; charset=utf-8")
	@ResponseBody
	public String getAllData(){
		List<DataInfo> list = dataService.getInfoList();
		Map<String, String> data = new HashMap<>();
		list.forEach(info->{
			data.put(info.getId(), info.getDataName());
		});
		return JSON.toJSONString(data);
	}
	
	
	/**
	 * 获取所有表头
	 * @return
	 */
	@RequestMapping(value="/getAllheader",produces = "application/json; charset=utf-8")
	@ResponseBody
	public String getAllheader(){
		List<HeaderInfo> list = headerService.getHeadList();
		Map<String, String> data = new HashMap<>();
		list.forEach(info->{
			data.put(info.getHeaderId(), info.getHeaderName());
		});
		return JSON.toJSONString(data);
	}
	
	
	/**
	 * 保存
	 * @return
	 */
	@RequestMapping("/saveRepInfo")
	public String saveRepInfo(ReportInfo reportInfo){
		if(!Strings.isEmpty(reportInfo.getRepId())){
			repService.updateRepInfo(reportInfo);
		}else{
			reportInfo.setRepId(numService.getNum("RT"));
			repService.insertRepInfo(reportInfo);
		}
		if("1".equals(reportInfo.getIsCache())){
			QuartzManager.removeJob(reportInfo.getRepId());
			QuartzManager.addJob(reportInfo.getRepId(), RepJobs.class, reportInfo.getCornTime());
		}else{
			QuartzManager.removeJob(reportInfo.getRepId());
		}
		return "redirect:/rep/getInfoList";
	}
	
	
	/**
	 * 删除报表
	 * @param repId
	 * @return
	 */
	@RequestMapping("/deleteRepInfo")
	@ResponseBody
	public String deleteRepInfo(String repId){
		if(repService.deleteRepInfo(repId)>0)
			return "delete success";
		return "delete failed!";
	}

}
