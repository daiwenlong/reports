<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="/common/setting.jsp"%>
<html>
<title>${title }</title>
<link rel="stylesheet" type="text/css" href="${ctx}/reports/tiles/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/reports/skins/css/reports.css" />
<script type="text/javascript" src="${ctx}/reports/tiles/js/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="${ctx}/reports/tiles/bootstrap/js/bootstrap.min.js"></script>
<style>
.table th, .table td {  
text-align: center;  
vertical-align: middle!important;  
} 
</style>
<body>
<jsp:include page="/common/header.jsp"/>
<div class="container">
<div class="row">
<div class="page-header">
	<h3>
		模板
	</h3>
</div><!-- /.page-header -->
<div class="col-md-12 mar-t-10">
	 ${html }
</div>
</div>
</div>
<jsp:include page="/common/foot.jsp"/>
</body>
</html>
