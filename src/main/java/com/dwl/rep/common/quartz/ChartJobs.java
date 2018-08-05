package com.dwl.rep.common.quartz;

import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

import com.dwl.rep.pojo.ChartInfo;
import com.dwl.rep.service.ChartService;

/**
 * 图表job类
 * @author dwl
 *
 */
public class ChartJobs implements Job {

	@Override
	public void execute(JobExecutionContext job) throws JobExecutionException {
		cacheChart(job.getJobDetail().getJobDataMap().get("repId").toString());
	}
	
	public void cacheChart(String chartId){
		ChartService chartService = BeanUtil.getBean("chartService");
		chartService.updateCache(chartId);
	}

}
