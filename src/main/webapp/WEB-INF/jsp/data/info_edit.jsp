<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="/common/setting.jsp"%>
<html>
<link rel="stylesheet" type="text/css" href="${ctx}/reports/tiles/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/reports/tiles/ace/css/ace.min.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/reports/tiles/ace/css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/reports/skins/css/reports.css" />
<script type="text/javascript" src="${ctx}/reports/tiles/js/jquery-2.2.3.min.js"></script>
<body>
<jsp:include page="/common/header.jsp"/>
<div class="container">
<div class="page-header">
	<h1>
		数据项配置
	</h1>
</div><!-- /.page-header -->
<form name="dataForm" action="${ctx }/data/toDataSave" method="post">
<div class="col-md-12" style="margin-top:10px">
	<div class="form-group">
		<label class="control-label" style="float:left"><h4> 数据项名称：</h4></label>

		<div class="col-sm-6">
			<input type="text" id="dataName" name="dataNmae" value="${dataInfo.dataName }" class="col-sm-5" />
		</div>
	</div>
	<div class="form-group">
		<label class="control-label" style="float:left"><h4> 数据源：</h4> </label>

		<div class="col-xs-4">
			<select class="form-control" id="dbId" name="dbId">
			</select>
		</div>
	</div>
</div>
<div class="col-md-12" style="margin-top:10px">
	<div>
		<label for="form-field-8"><h4>sql:</h4></label>
	
		<textarea class="form-control" id="sql" name="sql" >${dataInfo.sql }</textarea>
	</div>
</div>
</form>
<div class="col-md-12">
<div class="col-md-12" style="margin-top:10px">
	<div class="alert alert-block alert-success">
		提示：
	</div>
</div>

<div class="col-md-12" style="margin-top:20px" align="center">
	<button data-toggle="dropdown" class="btn btn-warning dropdown-toggle" onclick="save();">
		保存
	</button>
	<button data-toggle="dropdown" class="btn btn-warning dropdown-toggle" onclick="">
		返回
	</button>
</div>

</div>
</div>
<script type="text/javascript">
function save(){
	$("#dataForm").submit();
}

$(document).ready(function(){
	$.post("${ctx}/data/getDbJson",function(data){
	});
});

</script>
</body>
</html>
