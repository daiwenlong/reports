<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="/common/setting.jsp"%>
<html>
<title>${title }</title>
<link rel="stylesheet" type="text/css" href="${ctx}/reports/tiles/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/reports/tiles/bootstrap/css/bootstrap-select.min.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/reports/skins/css/reports.css" />
<script type="text/javascript" src="${ctx}/reports/tiles/js/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="${ctx}/reports/tiles/bootstrap/js/bootstrap-select.min.js"></script>
<script type="text/javascript" src="${ctx}/reports/tiles/bootstrap/js/bootstrap.min.js"></script>

<script type="text/javascript" src="${ctx}/reports/tiles/js/dic.js"></script>
<body>
<jsp:include page="/common/header.jsp"/>
<div class="container">
<div class="row"> 
<div class="page-header">
	<h3>
		报表配置
	</h3>
</div><!-- /.page-header -->
<form id="dataForm" name="dataForm" action="${ctx }/rep/saveRepInfo" method="post">
<input type="hidden" id="headerId" name="headerId" value="${headerInfo.headerId }">
<div class="col-md-12 form-inline" style="margin-top:10px">
	<div class="form-group col-md-6">
		<label class="control-label" style="float:left"><h4> 报表名称：</h4></label>
           <input type="hidden" id="repId" name="repId" value="${reportInfo.repId }">
		<div class="col-sm-8">
			<input type="text" id="repName" name="repName" value="${reportInfo.repName }" class="form-control" style="width:100%;"/>
		</div>
	</div>
	<div class="form-group col-md-6">
		<label class="control-label" style="float:left"><h4> 数据项：</h4> </label>

		<div class="col-xs-8">
		    <select id="dataId" name="dataId" class="selectpicker" multiple data-live-search="true" style="width:100%;">
		    </select>
		</div>
	</div>
	<div class="form-group col-md-6">
		<label class="control-label" style="float:left"><h4> 是否缓存：</h4> </label>

		<div class="col-xs-8">
			<select id="isCache" name="isCache" class="form-control" style="width:100%;"></select>
		</div>
	</div>
	<div class="form-group col-md-6">
		<label class="control-label" style="float:left"><h4> corn表达式：</h4></label>

		<div class="col-sm-6">
			<input type="text" id="cornTime" name="cornTime" value="${reportInfo.cornTime }" class="form-control" style="width:100%;"/>
		</div>
	</div>
	
</div>
<div class="col-md-12 mar-t-10">
	<div class="panel panel-info">
	  <div class="panel-heading">
	    <h3 class="panel-title">表头配置</h3>
	  </div>
	  <div class="panel-body" id="items">
	  <div class="col-md-12 form-inline" style="margin-top:10px" id="moban">
			<div class="form-group col-md-3">
				<label class="control-label" style="float:left"><h5> 一级表头：</h5></label>
				<div class="col-sm-8">
				    <select data="${reportInfo.details[0].headerId}" name="details[0].headerId"
				     class="form-control head head1" style="width:100%;">
					</select>
				</div>
			</div>
			<div class="form-group col-md-3">
				<label class="control-label" style="float:left"><h5> 二级表头：</h5> </label>
		
				<div class="col-xs-8">
					<select data="${reportInfo.details[0].secHeaderId}" name="details[0].secHeaderId"
				     class="form-control head head2" style="width:100%;">
					</select>
				</div>
			</div>
			<div class="form-group col-md-3">
				<label class="control-label" style="float:left"><h5> 表头类型：</h5> </label>
		
				<div class="col-xs-8">
					<select data="${reportInfo.details[0].type}" name="details[0].type"
				     class="form-control type" style="width:100%;">
					</select>
				</div>
			</div>
			<div class="form-group col-md-2">
				<label class="control-label" style="float:left"><h5> 求和：</h5> </label>
		
				<div class="col-xs-8">
					<select data="${reportInfo.details[0].isSum }" name="details[0].isSum"
				     class="form-control issum" style="width:100%;">
					</select>
				</div>
			</div>
			<div class="form-group col-md-1">
				<a id="link" href="javascript:void(0)" onclick="addItem();">添加</a>
			</div>
		</div>
	   <c:forEach items="${reportInfo.details }" var="item" begin="1" varStatus="row">
	      <div class="col-md-12 form-inline" style="margin-top:10px" id="item${row.index }">
			<div class="form-group col-md-3">
				<label class="control-label" style="float:left"><h5> 一级表头：</h5></label>
				<div class="col-sm-8">
				    <select data="${item.headerId}" name="details[${row.index }].headerId"
				     class="form-control head" style="width:100%;">
					</select>
				</div>
			</div>
			<div class="form-group col-md-3">
				<label class="control-label" style="float:left"><h5> 二级表头：</h5> </label>
		
				<div class="col-xs-8">
					<select data="${item.secHeaderId}" name="details[${row.index }].secHeaderId"
				     class="form-control head" style="width:100%;">
					</select>
				</div>
			</div>
			<div class="form-group col-md-3">
				<label class="control-label" style="float:left"><h5> 表头类型：</h5> </label>
		
				<div class="col-xs-8">
					<select data="${item.type}" name="details[${row.index }].type"
				     class="form-control type" style="width:100%;">
					</select>
				</div>
			</div>
			<div class="form-group col-md-2">
				<label class="control-label" style="float:left"><h5> 求和：</h5> </label>
		
				<div class="col-xs-8">
					<select data="${item.isSum }" name="details[${row.index }].isSum"
				     class="form-control issum" style="width:100%;">
					</select>
				</div>
			</div>
			<div class="form-group col-md-1">
				<a id="link" href="javascript:void(0)" onclick="deleteItem(${row.index});">删除</a>
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
		提示：（至少配置一个横表头和一个纵表头。）
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
	row = ${fn:length(reportInfo.details)};
	if(row == 0){
		row++;
	}
	$("#isCache").select({
		dic:{"0":"否","1":"是"},
		value:'${reportInfo.isCache}'
	});
	var dataId = '${reportInfo.dataList}';
	$("#dataId").ajaxselectmore({
		url:"${ctx}/rep/getAllData",
		value:dataId
	});
	multiajaxselect($(".head"),"${ctx}/rep/getAllheader");
	multiselect($(".type"),{"0":"横表头","1":"竖表头"});
	multiselect($(".issum"),{"0":"否","1":"是"});
});

function save(){
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

function deleteItem(id){
	if(confirm("确定删除吗？")){
		$("#item"+id).remove();
	}	
}

function addItem(){
	var item = $("#moban").clone();
	item.attr("id","item"+row);
	item.find("#link").text("删除").attr("onclick","deleteItem("+row+");");
	item.find(".head1").attr("name","details["+row+"].headerId").val("");
	item.find(".head2").attr("name","details["+row+"].secHeaderId").val("");
	item.find(".type").attr("name","details["+row+"].type");
	item.find(".issum").attr("name","details["+row+"].isSum");
	$("#items").append(item);
	row++;
}

</script>
</body>
</html>
