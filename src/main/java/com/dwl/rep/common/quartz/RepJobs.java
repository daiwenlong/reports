package com.dwl.rep.common.quartz;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import com.dwl.rep.common.FreeMarker;
import com.dwl.rep.common.Strings;
import com.dwl.rep.pojo.ReportInfo;
import com.dwl.rep.service.RepService;

/**
 * 报表job类
 * @author dwl
 *
 */
public class RepJobs implements Job {
	
	@Override
	public void execute(JobExecutionContext job) throws JobExecutionException {
		
		cacheRep(job.getJobDetail().getJobDataMap().get("repId").toString());

	}
	
	
	/**
	 * 缓存
	 * @param repId
	 */
	public void cacheRep(String repId){
		RepService repService = BeanUtil.getBean("repService");
		repService.updateCache(repId);
	}

}
