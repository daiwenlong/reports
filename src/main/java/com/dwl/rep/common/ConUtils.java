package com.dwl.rep.common;

import javax.servlet.http.HttpServletRequest;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;

/**
 * 常用工具类
 * @author dwl
 *
 */
public class ConUtils {
	
	/**
	 * 分页方法
	 * @param request
	 */
	public static <E> Page<E> setPage(HttpServletRequest request){
		int pageNum = Integer.valueOf(request.getParameter("page")==null?"1":request.getParameter("page"));
		Page<E> page =PageHelper.startPage(pageNum, 10);
		return page;
	}

}
