package com.dwl.rep.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.dwl.rep.common.ConUtils;
import com.dwl.rep.common.Strings;
import com.dwl.rep.pojo.HeaderInfo;
import com.dwl.rep.service.HeaderService;
import com.dwl.rep.service.NumService;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;

@Controller()
@RequestMapping("/head")
public class HeadController {
	
	@Resource
	private HeaderService headerService;
	
	@Resource
	private NumService numService;
	
	/**
	 * 获取表头列表
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping("/getInfoList")
	public String getHeaderList(HttpServletRequest request,Model model){
		Page<HeaderInfo> page = ConUtils.setPage(request);
		headerService.getHeadList();
		PageInfo<HeaderInfo> pageInfo = page.toPageInfo();
		model.addAttribute("pageInfo", pageInfo);
		return "head/info_list";
	}
	
	/**
	 * 编辑表头
	 * @param headId
	 * @param model
	 * @return
	 */
	@RequestMapping("/toHeadEdit")
	public String toHeadEdit(String headId,Model model){
		HeaderInfo headerInfo = null;
		if(!Strings.isEmpty(headId))
			headerInfo = headerService.getHeaderWithDetail(headId);
		model.addAttribute("headerInfo",headerInfo);
		return "head/info_edit";
		
	}
	
	/**
	 * 保存
	 * @param headerInfo
	 * @return
	 */
	@RequestMapping("/toSaveHead")
	public String toSaveHead(HeaderInfo headerInfo){
		if(Strings.isEmpty(headerInfo.getHeaderId())){
			headerInfo.setHeaderId(numService.getNum("HD"));
			headerService.InsertHeader(headerInfo);
		}else{
			headerService.updateHead(headerInfo);
		}
		return "redirect:/head/getInfoList";
	}
	
	/**
	 * 删除表头
	 * @param headerId
	 * @return
	 */
	@RequestMapping("/delHeadInfo")
	@ResponseBody
	public String delHeadInfo(String headerId){
		if(headerService.deleteHeader(headerId)>0)
			return "delete success!";
		return "delete failed!";
	}
	

}
