<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="/common/setting.jsp"%>
<html>
<title>${title }</title>
<link rel="stylesheet" type="text/css" href="${ctx}/reports/tiles/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/reports/skins/css/reports.css" />
<script type="text/javascript" src="${ctx}/reports/tiles/js/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="${ctx}/reports/tiles/bootstrap/js/bootstrap.min.js"></script>
<body>
<jsp:include page="/common/header.jsp"/>
<div class="container">
<div class="row">
<div class="page-header">
	<h3>
		数据源列表
	</h3>
</div><!-- /.page-header -->

<div class="col-md-12 mar-b-10" align="right">
	<a href="${ctx }/data/toDataEdit" class="btn btn-success ">添加</a>
</div>
<div class="col-md-12">
	 <form id="pageForm" action="${ctx }/data/getInfoList" method="post">
		<table  class="table table-bordered table-striped" id="dynamic-table">
			<thead>
				<tr>
					<th  width="5%">编号</th>
					<th  width="25%">名称</th>
					<th  width="20%">数据源</th>
					<th  width="20%">更新时间</th>
					<th  width="25%">操作</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${pageInfo.list}" var="data">
				<tr>
				   <td>${data.id }</td>
				   <td>${data.dataName }</td>
				   <td>${data.dbInfo.dbName }</td>
				   <td><fmt:formatDate value="${data.updateTime }" pattern="yyyy-MM-dd HH:mm:ss"/> </td>
				   <td>
					   <a href="javascript:void(0);" onclick="edit('${data.id }');">编辑</a>
					   <a href="javascript:void(0);" onclick="delect('${data.id }');">删除</a>
					   <a href="javascript:void(0);" onclick="view('${data.id }');">查看数据</a>
					   <a href="javascript:void(0);" onclick="update('${data.id }');">更新数据</a> 
				   </td> 
				</tr>
			</c:forEach>	
			</tbody>
		</table>
		<jsp:include page="/common/pager.jsp"/>
		</form>
</div>
</div>
</div>
<jsp:include page="/common/foot.jsp"/>
<script type="text/javascript">
function edit(Id){
	window.location.href="${ctx}/data/toDataEdit?dataId="+Id;
}
function view(Id){
	window.open("${ctx}/data/getData?dataId="+Id)
}
function delect(Id){
	if(confirm("确定删除吗？")){
		$.post("${ctx}/data/delDataInfo",{dataId:Id},function(data){
			alert(data);
			window.location.reload();
		});
	}
}
function update(Id){
	$.post("${ctx}/data/updateResult",{dataId:Id},function(data){
		alert(data);
	});
}
</script>
</body>
</html>
