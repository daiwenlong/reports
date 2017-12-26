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
		数据源配置
	</h3>
</div><!-- /.page-header -->
<div class="col-md-12" style="margin-top:10px">
	<form class="form-horizontal" role="form" id="dataForm" action="${ctx }/db/toDbSave" method="post">
	   <input type="hidden" id="id" name="id" class="col-xs-10 col-sm-6" value="${dbInfo.id }"/>
		<div class="form-group">
			<label class="col-sm-3 control-label no-padding-right" for="form-field-1">数据源名称</label>

			<div class="col-sm-5">
				<input type="text" id="dbName" name="dbName" class="form-control col-xs-10 col-sm-6" value="${dbInfo.dbName }"/>
			</div>
		</div>
		<div class="space-4"></div>
		<div class="form-group">
			<label class="col-sm-3 control-label no-padding-right" for="form-field-1">数据源地址</label>

			<div class="col-sm-5">
				<input type="text" id="dbAddress" name="dbAddress" class="form-control col-xs-10 col-sm-6" value="${dbInfo.dbAddress }"/>
			</div>
		</div>
		<div class="space-4"></div>
		<div class="form-group">
			<label class="col-sm-3 control-label no-padding-right" for="form-field-1">数据源驱动</label>

			<div class="col-sm-5">
				<input type="text" id="dbType" name="dbType" class="form-control col-xs-10 col-sm-6" value="${dbInfo.dbType }"/>
			</div>
		</div>
		<div class="space-4"></div>
		<div class="form-group">
			<label class="col-sm-3 control-label no-padding-right" for="form-field-1">用户名</label>

			<div class="col-sm-5">
				<input type="text" id="userId" name="userId" class="form-control col-xs-10 col-sm-6" value="${dbInfo.userId }"/>
			</div>
		</div>
		<div class="space-4"></div>
		<div class="form-group">
			<label class="col-sm-3 control-label no-padding-right" for="form-field-1">数据库密码</label>

			<div class="col-sm-5">
				<input type="password" id="password" name="password" class="form-control col-xs-10 col-sm-6" value="${dbInfo.password }"/>
			</div>
		</div>

		<div class="space-4"></div>

		<div class="form-group">
			<label class="col-sm-3 control-label no-padding-right" for="form-field-2"> 使用级别 </label>

			<div class="col-sm-5">
				<select class="form-control" id="level" name="level">
				</select>
			</div>
		</div>
	</form>
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
<jsp:include page="/common/foot.jsp"/>
<script type="text/javascript">
$(document).ready(function(){
	$("#level").select({
		dic:{"1":"一级","2":"二级","3":"三级"},
		value:'${dbInfo.level}'
	});
	
});
function save(){
	if($("#dbName").val()==''){
		alert("名称不能为空！");
		return;
	}
	$("#dataForm").submit();
}
</script>
</body>
</html>
