<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/layouts/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>编辑</title>
    <%@include file="/WEB-INF/layouts/edit-header.jsp"%>
</head>
<body>
    <div class="tpanel">
        <div class="panel-content">
            <div class="container-fluid">

                <form id="createForm" class="form-horizontal">
                    <input type="hidden" name="id" value="${entity.id}" />

                        <div class="form-group form-group-first">
                            <label for="name" class="col-sm-2 control-label">姓名</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control"  
                                    id="name" name="name" 
                                    value="${entity.name}" 
                                            placeholder="请输入姓名" 
                                    minlength="0" maxlength="255" 
                                    />
                                </div>
                        </div>

                        <div class="form-group">
                            <label for="code" class="col-sm-2 control-label">编号</label>
                            <div class="col-sm-8">
                                <input type="text" class="form-control"  
                                    id="code" name="code" 
                                    value="${entity.code}" 
                                            placeholder="请输入编号" 
                                    minlength="0" maxlength="255" 
                                    />
                                </div>
                        </div>

                    <div class="form-group">
                        <div class="col-sm-12" style="text-align: center;">
                                <a class="btn btn-default" href="javascript:back();">返回</a>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input type="submit" class="btn btn-primary" value="保存" />
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>
                                                                
    <script type="text/javascript">
    changeTitle('编辑Stu');
    $(function() {

        initForm('#createForm','${ctx}/admin/stu/update',function(r) {
            var resp = $.parseJSON(r);
            if(resp.code == 'OK') {
                changeUrl('${ctx}/admin/stu');
                topLayer.msg('保存成功', {icon: 1});
            }else {
                topLayer.msg(resp.message, {icon: 2});
            }
        });

    });
    </script>
</body>
</html>
