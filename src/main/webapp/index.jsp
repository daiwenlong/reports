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
	
		<div class="col-xs-12 mar-t-10">
		<div class="panel panel-primary">
		  <div class="panel-heading">
		    <h3 class="panel-title">Panel title</h3>
		  </div>
		  <div class="panel-body">
		    <a href="${ctx }/db/getInfoList" class="btn btn-success btn-lg">
									数据源
			</a>
			 <a href="#" class="btn btn-info btn-lg">
									表头
			</a>
			
		  </div>
		  
		</div>
		<div class="panel panel-success">
		  <div class="panel-heading">
		    <h3 class="panel-title">Panel title</h3>
		  </div>
		  <div class="panel-body">
		   <a href="${ctx }/data/getInfoList" class="btn btn-primary btn-lg">			
				数据项
			</a>
			<a href="${ctx }/rep/getInfoList" class="btn btn-warning btn-lg">			
				报表
			</a>
		  </div>		  
		</div>
		<div class="panel panel-info">
		  <div class="panel-heading">
		    <h3 class="panel-title">Panel title</h3>
		  </div>
		  <div class="panel-body">
		   
		  </div>
		  
		</div>
		</div>
	</div>

</div>
<jsp:include page="/common/foot.jsp"/>
</body>
</html>
