package com.dwl.rep.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.quartz.CronExpression;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dwl.rep.common.ConUtils;
import com.dwl.rep.common.Strings;
import com.dwl.rep.common.quartz.ChartJobs;
import com.dwl.rep.common.quartz.QuartzManager;
import com.dwl.rep.pojo.ChartInfo;
import com.dwl.rep.service.ChartService;
import com.dwl.rep.service.NumService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;

/**
 * 图表控制器
 * @author dwl
 *
 */
@Controller
@RequestMapping("/chart")
public class ChartController {
	
	@Resource
	private ChartService chartService; 
	
	
	@Resource
	private NumService numService;
	
	/**
	 * 图表首页列表
	 * @param model
	 * @param request
	 * @return
	 */
	@RequestMapping("/getInfoList")
	public String getChartList(Model model,HttpServletRequest request){
		Page<ChartInfo> page = ConUtils.setPage(request);
		chartService.getChartList();
		PageInfo<ChartInfo> pageInfo = page.toPageInfo();
		model.addAttribute("pageInfo", pageInfo);
		return "chart/info_list";
	}
	
	
	
	/**
	 * 新增或编辑
	 * @param info
	 * @param model
	 * @return
	 */
	@RequestMapping("/edit")
	public String editOrAdd(String chartId,Model model){
		ChartInfo info = null;
		if(!Strings.isEmpty(chartId)){
			info = chartService.getChartById(chartId);
		}
		model.addAttribute("info", info);
		return "chart/info_edit";
	}
	
	/**
	 * 保存
	 * @return
	 */
	@RequestMapping("/save")
	public String editOrAdd(ChartInfo info,Model model){
		if(Strings.isEmpty(info.getChartId())){
			info.setChartId(numService.getNum("CT"));
			chartService.addChartInfo(info);
		}else{
			chartService.updateChartInfo(info);
		}
		if("1".equals(info.getIsCache())){//加入定时任务
			QuartzManager.removeJob(info.getChartName());
			QuartzManager.addJob(info.getChartId(), ChartJobs.class,info.getCornTime());
		}
		return "redirect:/chart/getInfoList";
	}
	
	/**
	 * 删除
	 * @param chartId
	 * @return
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public String delete(String chartId){
		if(chartService.deleteChartInfo(chartId)>0)
			return "delete success!";
		return "delete failed!";
	}
	
	/**
	 * 查看图表
	 * @param chartId
	 * @return
	 */
	@RequestMapping("/view")
	public String view(String chartId,Model model){
		ChartInfo info = chartService.getChartById(chartId);
		if("1".equals(info.getIsCache())&&Strings.isEmpty(info.getResult())){
			info.setResult(chartService.getChartResultById(chartId));
			chartService.updateChartInfo(info);
		}
		model.addAttribute("info", info);
		return "chart/info_view";
	}
	
	/**
	 * 获取图表数据
	 * @param chartId
	 * @return
	 */
	@RequestMapping(value="/result",produces = "application/json; charset=utf-8")
	@ResponseBody
	public String result(String chartId){
		return chartService.getChartResultById(chartId);
	}
	
	/**
	 * corn校验
	 * @param corn
	 * @return
	 */
	@RequestMapping(value="/check",produces = "application/json; charset=utf-8")
	@ResponseBody
	public boolean checkCorn(String corn){
		return CronExpression.isValidExpression(corn);
	}
	

}
