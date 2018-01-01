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
		表头配置
	</h3>
</div><!-- /.page-header -->
<form id="dataForm" name="dataForm" action="${ctx }/head/toSaveHead" method="post">
<input type="hidden" id="headerId" name="headerId" value="${headerInfo.headerId }">
<div class="col-md-12 form-inline" style="margin-top:10px">
	<div class="form-group col-md-6">
		<label class="control-label" style="float:left"><h4> 表头名称：</h4></label>

		<div class="col-sm-8">
			<input type="text" id="header_name" name="headerName" value="${headerInfo.headerName }" class="form-control" style="width:100%;"/>
		</div>
	</div>
	<div class="form-group col-md-6">
		<label class="control-label" style="float:left"><h4> 表头代码：</h4> </label>

		<div class="col-xs-8">
			<input type="text" id="headerDm" name="headerDm" value="${headerInfo.headerDm }" class="form-control" style="width:100%;"/>
		</div>
	</div>
	
</div>
<div class="col-md-12 mar-t-10">
	<div class="panel panel-info">
	  <div class="panel-heading">
	    <h3 class="panel-title">子项配置</h3>
	  </div>
	  <div class="panel-body" id="items">
	  <div class="col-md-12 form-inline" style="margin-top:10px" id="moban">
			<div class="form-group col-md-5">
				<label class="control-label" style="float:left"><h5> 子项名称：</h5></label>
				<div class="col-sm-8">
					<input type="text" id="headerName" name="details[0].value" value="${headerInfo.details[0].value }" class="first form-control" style="width:100%;"/>
				</div>
			</div>
			<div class="form-group col-md-5">
				<label class="control-label" style="float:left"><h5> 子项代码：</h5> </label>
		
				<div class="col-xs-8">
					<input type="text" id="headerDm" name="details[0].key" value="${headerInfo.details[0].key }" class="form-control" style="width:100%;"/>
				</div>
			</div>
			<div class="form-group col-md-2">
				<a id="link" href="javascript:void(0)" onclick="addItem();">添加</a>
			</div>
		</div>
	  <c:forEach items="${headerInfo.details }" var="item" begin="1" varStatus="row">
	    <div class="col-md-12 form-inline" style="margin-top:10px" id="item${row.index }">
			<div class="form-group col-md-5">
				<label class="control-label" style="float:left"><h5> 子项名称：</h5></label>
				<div class="col-sm-8">
					<input type="text" id="headerName" name="details[${row.index }].value" value="${item.value }" class="value form-control" style="width:100%;"/>
				</div>
			</div>
			<div class="form-group col-md-5">
				<label class="control-label" style="float:left"><h5> 子项代码：</h5> </label>
		
				<div class="col-xs-8">
					<input type="text" id="headerDm" name="details[${row.index }].key" value="${item.key }" class="key form-control" style="width:100%;"/>
				</div>
			</div>
			<div class="form-group col-md-2">
				<a href="javascript:void(0)" onclick="deleteItem(${row.index });">删除</a>
			</div>
		</div>
		</c:forEach>
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
var row;
$(document).ready(function(){
	row = ${fn:length(headerInfo.details) };
	if(row == 0){
		row++;
	}
});
function save(){
	if($("#header_name").val()==''){
		alert("名称不能为空");
		return;
	}
	if($(".first").val()==''){
		alert("请添加子项信息！");
		return;
	}
	$("#dataForm").submit();
}

function deleteItem(id){
	if(confirm("确定删除吗？")){
		$("#item"+id).remove();
	}	
}

function addItem(){
	var item = $("#moban").clone();
	item.attr("id","item"+row);
	item.find("#link").text("删除").attr("onclick","deleteItem("+row+");");
	item.find("#headerName").attr("name","details["+row+"].value").val(null);
	item.find("#headerDm").attr("name","details["+row+"].key").val(null);
	$("#items").append(item);
	row++;
}

</script>
</body>
</html>
