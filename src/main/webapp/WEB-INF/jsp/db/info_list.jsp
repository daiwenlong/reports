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
<div class=row>
<div class="page-header">
	<h3>
		数据源列表
	</h3>
</div><!-- /.page-header -->


<div class="col-md-12 mar-b-10" align="right">
	<a href="${ctx }/db/toDbEdit" class="btn btn-success ">添加</a>
</div>

<div class="col-md-12">
			 <form id="pageForm" action="${ctx }/db/getInfoList" method="post">
				<table  class="table table-bordered table-striped" >
					<thead>
						<tr>
							<th  width="10%">编号</th>
							<th  width="25%">名称</th>
							<th  width="25%">地址</th>
							<th  width="25%">级别</th>
							<th  width="25%">操作</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${pageInfo.list}" var="db">
						<tr>
						   <td>${db.id }</td>
						   <td>${db.dbName }</td>
						   <td>${db.dbAddress }</td>
						   <td>${db.level }</td>
						   <td>
						   		<a href="javascript:void(0);" onclick="edit('${db.id }');">编辑</a>
						   		<a href="javascript:void(0);" onclick="delect('${db.id }');">删除</a>
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
	window.location.href="${ctx}/db/toDbEdit?dbId="+Id;
}

function delect(id){
	if(confirm("确定删除吗？")){
		$.post("${ctx}/db/delDbInfo",{dbId:id},function(data){
			alert(data);
			window.location.reload();
		})
	}
}
</script>
</body>
</html>
