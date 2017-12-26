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
		报表列表
	</h3>
</div><!-- /.page-header -->
<div class="col-md-12 mar-b-10" align="right">
	<a href="${ctx }/rep/toRepEdit" class="btn btn-success ">添加</a>
</div>
<div class="col-md-12">
	 <form id="pageForm" action="${ctx }/rep/getInfoList" method="post">
		<table  class="table table-bordered table-striped">
			<thead>
				<tr>
					<th  width="10%">编号</th>
					<th  width="25%">名称</th>
					<th  width="25%">是否缓存</th>
					<th  width="25%">更新时间</th>
					<th  width="25%">操作</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach items="${pageInfo.list}" var="rep">
				<tr>
				   <td>${rep.repId }</td>
				   <td>${rep.repName }</td>
				   <td>${rep.isCache }</td>
				   <td>${rep.updateTime }</td>
				   <td>${rep.repId }</td>
				   
				   
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
</body>
</html>
