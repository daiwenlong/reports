<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ include file="/common/setting.jsp"%>
<html>
<title>${title }</title>
<link rel="stylesheet" type="text/css" href="${ctx}/reports/tiles/bootstrap/css/bootstrap.min.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/reports/skins/css/reports.css" />
<body>
<jsp:include page="/common/header.jsp"/>
<div class="container">
<div class="row">
<div class="page-header">
	<h3>
		${info.chartName }
	</h3>
</div><!-- /.page-header -->

<div class="col-md-12 mar-t-10 text-center chart" style="width: 100%;height:400px;" id="${info.chartId}"> </div>

<div class="col-md-12 mar-t-10 text-center chart" style="width: 100%;height:400px;" id="CT0002"> </div>

<div class="col-md-12 mar-t-10 text-center chart" style="width: 100%;height:400px;" id="CT0003"> </div>

</div>
</div>
<jsp:include page="/common/foot.jsp"/>
<script type="text/javascript" src="${ctx}/reports/tiles/js/jquery-2.2.3.min.js"></script>
<script type="text/javascript" src="${ctx}/reports/tiles/js/echarts.min.js"></script>
<script type="text/javascript" src="${ctx}/reports/tiles/js/chart.js"></script>
</body>
</html>
