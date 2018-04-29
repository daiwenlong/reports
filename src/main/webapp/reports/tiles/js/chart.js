var pie =  {
	    title : {
	        text: '某站点用户访问来源'
	    },
	    tooltip : {
	        trigger: 'item',
	        formatter: "{a} <br/>{b} : {c} ({d}%)"
	    },
	    series : [
	        {
	            name: '访问来源',
	            type: 'pie',
	            radius : '55%',
	            center: ['50%', '60%'],
	            data:[
	                {value:335, name:'直接访问'},
	                {value:310, name:'邮件营销'},
	                {value:234, name:'联盟广告'},
	                {value:135, name:'视频广告'},
	                {value:1548, name:'搜索引擎'}
	            ],
	            itemStyle: {
	                emphasis: {
	                    shadowBlur: 10,
	                    shadowOffsetX: 0,
	                    shadowColor: 'rgba(0, 0, 0, 0.5)'
	                }
	            }
	        }
	    ]
	};
var line = {
	     title: {
             text: '最近一周体重变化'
         },
         tooltip : {
             trigger: 'axis',
             axisPointer : {         
                 type : 'shadow'  
             }
         },
		 xAxis: {
		     type: 'category',
		     data: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
		 },
		 yAxis: {
		     type: 'value'
		 },
		 series: {
		     data: [820, 932, 901, 934, 1290, 1330, 1320],
		     type: 'line'
		 }
		};

//同一页面可定义多个图表，class为chart
var div = document.getElementsByClassName("chart");
for(var i =0;i<div.length;i++){
	var chartId = div[i].id;
	var myChart = echarts.init(document.getElementById(chartId));
	//用jQuery,图个方便
    $.ajaxSettings.async = false;//同步请求一个页面展示多个图表  
	$.post("/reports/chart/result",{chartId:chartId},function(data){
		if(data.type == 'pie'){
			pie.title.text = data.name;
			pie.series[0].data = data.data;
			myChart.setOption(pie);
		}else{
			var line1 = line;
			var series = {data:data.ylist,type:data.type};
			line.series = series;
			line.xAxis.data = data.xlist;
			line.title.text = data.name;
			myChart.setOption(line);
		}
		
	});
}


