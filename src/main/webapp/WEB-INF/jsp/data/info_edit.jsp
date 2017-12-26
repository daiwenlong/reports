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
		数据项配置
	</h3>
</div><!-- /.page-header -->
<form id="dataForm" name="dataForm" action="${ctx }/data/toDataSave" method="post">
<input type="hidden" id="id" name="id" value="${dataInfo.id }">
<div class="col-md-12 form-inline" style="margin-top:10px">
	<div class="form-group col-md-6">
		<label class="control-label" style="float:left"><h4> 数据项名称：</h4></label>

		<div class="col-sm-8">
			<input type="text" id="dataName" name="dataName" value="${dataInfo.dataName }" class="form-control" style="width:100%;"/>
		</div>
	</div>
	<div class="form-group col-md-6">
		<label class="control-label" style="float:left"><h4> 数据源：</h4> </label>

		<div class="col-xs-8">
			<select class="form-control" id="dbId" name="dbId" class="form-control">
			</select>
		</div>
	</div>
	
	<div class="col-md-12 mar-t-10">
	<div>
		<label for="form-field-8"><h4>sql:</h4></label>
	
		<textarea class="form-control" id="sql" name="sql" style="width:100%;">${dataInfo.sql }</textarea>
	</div>
</div>
</div>

</form>
<div class="col-md-12">
<div class="col-md-12 mar-t-10">
	<div class="alert alert-block alert-success">
		提示：
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
function save(){
	if($("#dataName").val()==''){
		alert("名称不能为空");
		return;
	}
	$("#dataForm").submit();
}

$(document).ready(function(){
	$("#dbId").ajaxselect({
		url:"${ctx}/data/getDbJson",
		value:'${dataInfo.dbId}'
	});
});

</script>
</body>
</html>
