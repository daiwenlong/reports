<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="/common/setting.jsp"%>
<html>
<title>${title }</title>
<link rel="stylesheet" type="text/css" href="${ctx}/reports/tiles/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/reports/skins/css/reports.css" />
<script type="text/javascript" src="${ctx}/reports/tiles/js/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="${ctx}/reports/tiles/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${ctx}/reports/tiles/js/dic.js"></script>
<body>
<jsp:include page="/common/header.jsp"/>
<div class="container">
<div class="row"> 
<div class="page-header">
	<h3>
		图表配置
	</h3>
</div><!-- /.page-header -->
<form id="dataForm" name="dataForm" action="${ctx }/chart/save" method="post">
<input type="hidden" id="chartId" name="chartId" value="${info.chartId }">
<div class="col-md-12 form-inline" style="margin-top:10px">
	<div class="form-group col-md-6">
		<label class="control-label" style="float:left"><h4> 图表名称：</h4></label>

		<div class="col-sm-8">
			<input type="text" id="chartName" name="chartName" value="${info.chartName }" class="form-control" style="width:100%;"/>
		</div>
	</div>
	<div class="form-group col-md-6">
		<label class="control-label" style="float:left"><h4> 数    据    项  ：</h4> </label>

		<div class="col-xs-8">
			<select id="dataId" name="dataId"  class="form-control" style="width:100%;"></select>
		</div>
	</div>
	<div class="space-4 col-md-12"></div>
	<div class="form-group col-md-6">
		<label class="control-label" style="float:left"><h4> 是否缓存：</h4> </label>

		<div class="col-xs-8">
			<select id="isCache" name="isCache" class="form-control" style="width:100%;"></select>
		</div>
	</div>
	<div class="form-group col-md-6">
		<label class="control-label" style="float:left"><h4> corn表达式：</h4></label>

		<div class="col-sm-8">
			<input type="text" id="cornTime" name="cornTime" value="${info.cornTime }" class="form-control" style="width:100%;"/>
		</div>
	</div>
	<div class="space-4 col-md-12"></div>
	
	<div class="form-group col-md-6">
		<label class="control-label" style="float:left"><h4> 图表类型：</h4> </label>

		<div class="col-xs-8">
			<select id="chartType" name="chartType"  class="form-control" style="width:100%;"></select>
		</div>
	</div>
</div>
</form>
<div class="col-md-12">
<div class="col-md-12 mar-t-10">
	<div class="alert alert-block alert-success">
		提示：（选择缓存为‘是’时，请填写corn表达式。）
	</div>
</div>

<div class="col-md-12" style="margin-top:20px" align="center">
	<button class="btn btn-warning" onclick="save();">
		保存
	</button>
	<button class="btn btn-warning" onclick="history.go(-1);">
		返回
	</button>
</div>
</div>
</div>
</div>

<jsp:include page="/common/foot.jsp"/>
<script type="text/javascript">
$(document).ready(function(){
	$("#chartType").select({
		dic:{"bar":"柱状图","pie":"饼状图","line":"折线图"},
		value:'${info.chartType}'
	});
	$("#isCache").select({
		dic:{"0":"否","1":"是"},
		value:'${info.isCache}'
	});
	$("#dataId").ajaxselect({
		url:"${ctx}/rep/getAllData",
		value:'${info.dataId}'
	});
});
function save(){
	if($("#chartName").val()==''){
		alert("名称不能为空");
		return;
	}
	if($("#dataId").val()==''){
		alert("数据项不能为空");
		return;
	}
	if($("#isCache").val()=='1'){
		$.post("${ctx}/chart/check",{corn:$("#cornTime").val()},function(data){
			if(!data){
				alert("corn表达式不合法");
			}else{
				$("#dataForm").submit();
			}
		});
	}else{
		$("#dataForm").submit();
	}
}
</script>
</body>
</html>
