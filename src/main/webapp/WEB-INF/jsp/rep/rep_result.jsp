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
		${reportInfo.repName }
	</h3>
</div><!-- /.page-header -->
<div class="col-md-12 mar-b-10" align="right">
	<a class="btn btn-success " id="print-click">导出</a>
</div>
<div class="col-md-12 mar-t-10">
	 ${reportInfo.result }
</div>
</div>
</div>
<jsp:include page="/common/foot.jsp"/>
<script type="text/javascript">
//使用outerHTML属性获取整个table元素的HTML代码（包括<table>标签），然后包装成一个完整的HTML文档，设置charset为urf-8以防止中文乱码
var html = "<html><head><meta charset='utf-8' /></head><body>" + document.getElementById("report").outerHTML + "</body></html>";
// 实例化一个Blob对象，其构造函数的第一个参数是包含文件内容的数组，第二个参数是包含文件类型属性的对象
var blob = new Blob([html], {
	type: "application/vnd.ms-excel"
});
var a = document.getElementById("print-click");
// 利用URL.createObjectURL()方法为a元素生成blob URL
a.href = URL.createObjectURL(blob);
// 设置文件名，目前只有Chrome和FireFox支持此属性
a.download = "报表.xls";
</script>
</body>
</html>
