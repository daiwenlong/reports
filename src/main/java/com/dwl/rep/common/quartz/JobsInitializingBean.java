package com.dwl.rep.common.quartz;

import java.util.List;

import org.apache.log4j.Logger;
import org.quartz.CronExpression;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.dwl.rep.pojo.ChartInfo;
import com.dwl.rep.pojo.ReportInfo;
import com.dwl.rep.service.ChartService;
import com.dwl.rep.service.RepService;

/**
 * 项目加载后启动定时任务
 * @author dwl
 *
 */
@Component
public class JobsInitializingBean implements InitializingBean {
	
	private static Logger logger = Logger.getLogger(JobsInitializingBean.class);
	
	@Autowired
	private RepService repService;
	
	@Autowired
	private ChartService chartService;

	@Override
	public void afterPropertiesSet() throws Exception {
		//获取需要定时更新的报表
		List<ReportInfo> reportInfos = repService.getCacheRepInfo();
		if(null != reportInfos){
			reportInfos.forEach(info->{
				//corn表达式校验
				if(CronExpression.isValidExpression(info.getCornTime())){
					QuartzManager.removeJob(info.getRepId());
					QuartzManager.addJob(info.getRepId(), RepJobs.class, info.getCornTime());
					logger.info(info.getRepName()+"：开始定时任务");
				}else{
					logger.warn(info.getRepName()+"：corn表达式不合法");
				}
			});
		}
		//获取需要定时更新的图表
		List<ChartInfo> chartInfos = chartService.getChartCacheList();
		if(null != chartInfos){
			chartInfos.forEach(chart->{
				if(CronExpression.isValidExpression(chart.getCornTime())){
					QuartzManager.removeJob(chart.getChartId());
					QuartzManager.addJob(chart.getChartId(), ChartJobs.class,chart.getCornTime());
					logger.info(chart.getChartName()+"：开始定时任务");
				}else{
					logger.warn(chart.getChartName()+"：corn表达式不合法");
				}
			});
		}

	}

}
