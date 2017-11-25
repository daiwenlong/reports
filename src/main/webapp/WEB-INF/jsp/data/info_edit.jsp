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
<form name="dataForm" action="${ctx }/db/toDbSave" method="post">
<div class="col-md-12" style="margin-top:10px">
	<div class="form-group">
		<label class="control-label" style="float:left"><h4> 数据源名称：</h4></label>

		<div class="col-sm-9">
			<input type="text" id="dbName" placeholder="Username" class="col-xs-10 col-sm-5" />
		</div>
	</div>
</div>
<div class="col-md-12" style="margin-top:10px">
	<div>
		<label for="form-field-8"><h4>sql:</h4></label>
	
		<textarea class="form-control" id="form-field-8" placeholder="sql"></textarea>
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
</script>
</body>
</html>
