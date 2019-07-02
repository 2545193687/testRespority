<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/layouts/taglib.jsp" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>详情</title>
		<%@include file="/WEB-INF/layouts/detail-header.jsp"%>
	</head>
	<body>

		<div class="tpanel">
			<div class="panel-content">
				<div class="container-fluid">
			
					<form id="createForm" class="form-horizontal">
						<div class="form-group form-group-first">
							<label class="col-sm-2 control-label">姓名</label>
							<div class="col-sm-8">
								<label class="control-label detail-label">
								${entity.name}
								</label>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">编号</label>
							<div class="col-sm-8">
								<label class="control-label detail-label">
								${entity.code}
								</label>
							</div>
						</div>
					  	
					</form>
				
				</div>
			</div>
		</div>
	</body>
</html>
