<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/layouts/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>基础数据</title>
	<%@include file="/WEB-INF/layouts/index-header.jsp"%>
</head>
<body>

<div class="tpanel">
	<div class="panel-content">
		<div class="container-fluid">
			<div id="tool">
				<form id="searchForm" class="form-inline" onsubmit="return search('#searchForm','#table')" style="margin-top:20px;margin-bottom:20px;">
					<div class="form-group">
						<a class="btn btn-success radius" href="${ctx}/admin/stu/create">
							<span class="glyphicon glyphicon-cog"></span> 创建
						</a>
					</div>
				</form>
			</div>
			<table id="table"></table>
		</div>
	</div>
</div>

<script type="text/javascript">
    changeTitle('Stu');

    $(function() {
        $('#table').bootstrapTable({
            url: '${ctx}/admin/stu/page-list',
            idField : 'id',
            striped : true,
            pagination : true,
            pageNumber : 1,
            pageSize : 25,
            sidePagination : 'server',
            uniqueId : 'id',
            /*checkbox : true,
            clickToSelect : true,*/
            queryParams : queryParams,
            responseHandler : responseHandler,
            columns: [/*{
                field: 'ck',
                checkbox : true
            },*/
			{
				title: '#',
				width : 50,
				align : 'center',
				formatter: snFormatter
			},
			{
				field: 'name',
				title: '姓名',
				align : 'center'
			},
			{
				field: 'code',
				title: '编号',
				align : 'center'
			},
			{
                field: 'op',
                title: '操作',
                align : 'center',
                formatter : operateFormatter
            }]
        });

    });

    function operateFormatter(value,row,index) {
		var content = '<a title="查看详情" href="javascript:detail(' + row.id + ')"><i class="iconfont icon-caidanguanli"></i></a>';
        content += '&nbsp;&nbsp;&nbsp;&nbsp;';
        content += '<a href="${ctx}/admin/stu/update?id=' + row.id + '" title="编辑"><i class="iconfont icon-iconfontcolor32"></i></a>';
        content += '&nbsp;&nbsp;&nbsp;&nbsp;';
        content += '<a href="javascript:del(' + row.id + ')" title="删除"><i class="iconfont icon-shanchu"></i></a>';
        return content;
    }
    function detail(id) {
        openWindow('查看详情','${ctx}/admin/stu/detail?id=' + id);
    }
    function del(id,name) {
        carefulDelete('${ctx}/admin/stu/careful-delete',id,'请输入您的管理密码以确定删除此系统资源');
    }
</script>

</body>
</html>
