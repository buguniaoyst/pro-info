<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>问卷模板设置</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/lib/layui/css/layui.css">
    <script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/layui.js" ></script>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/wenjuan.css" >
</head>
<body >
<div class="layui-form-pane" style="margin-top: 15px;">
    <!-- 列表操作按钮组 -->
    <div class="layui-form-item">
        <button class="layui-btn" style="margin-left: 5px" id="addBtn">
            <i class="layui-icon">&#xe608;</i> 新增问卷
        </button>
        <button class="layui-btn layui-btn-warm"  id="delBtn">
            <i class="layui-icon">&#xe640;</i> 批量删除
        </button>
    </div>
    <div class="layui-form" >
        <table class="layui-table" style="height: 58px;" lay-even="" lay-skin="row" id="personTable">
            <colgroup>
                <col width="60">
                <col width="100">
                <col width="300">
                <col width="150">
                <col width="150">
                <col >
            </colgroup>
            <thead>
            <tr>
                <th align="center"><input type="checkbox" id="layui-table-checkbox" name="id" lay-skin="primary" lay-filter="allChoose"></th>
                <th align="center"style="padding: 0;text-align: center">问卷编号</th>
                <th align="center" style="padding: 0;text-align: center">问卷名称</th>
                <th align="center" style="padding: 0;text-align: center">状态</th>
                <th align="center" style="padding: 0;text-align: center">内容操作</th>
                <th align="center" style="padding: 0;text-align: center">操作</th>
            </tr>
            </thead>
            <tbody id="tbody">
            </tbody>
        </table>
    </div>
</div>

<!--新增问卷模板-->
<div id="addModelContent" style="display: none">
    <div style="margin-top: 10px">
        <form class="layui-form" action="">
            <div class="layui-form-item">
                <label class="layui-form-label">问卷名称</label>
                <div class="layui-input-block">
                    <input type="text" name="title" required  lay-verify="required" placeholder="请输入问卷名称" style="width: 400px" autocomplete="off" class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
    </div>
</div>

<!--新增一级类目窗体-->
<div id="addModelItem" style="display: none">
    <div style="margin-top: 10px">
        <form class="layui-form" action="">
            <div class="layui-form-item">
                <label class="layui-form-label">问卷名称</label>
                <div class="layui-input-block">
                    <input type="hidden" name="id" id="hiddenModelId">
                    <input type="text" name="name" id="modelNameId" readonly style="width: 200px" autocomplete="off" class="layui-input">
                </div>
            </div>

            <div class="layui-form-item">
                <div class="layui-input-block">
                    <input type="button" class="layui-btn"  value="新增一级类目" id="addItemBtn"/>
                </div>
            </div>
            <div class="layui-form-item">
                <div class="layui-input-block">
                    <input type="button" class="layui-btn"  value="提交" id="addItemSubmit"/>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>

        </form>
    </div>
    <div style="margin-left: 350px;position: absolute;margin-top: -171px;">
        <table class="layui-table" style="height: 58px;" lay-even="" lay-skin="row" id="personTable">
            <colgroup>
                <col width="60">
                <col width="150">
                <col width="230">
            </colgroup>
            <thead>
            <tr>
                <th align="center"><input type="checkbox" id="layui-table-checkbox" name="id" lay-skin="primary" lay-filter="allChoose"></th>
                <th align="center"style="padding: 0;text-align: center">标题</th>
                <th align="center" style="padding: 0;text-align: center">操作</th>
            </tr>
            </thead>
            <tbody id="itemTable">
            </tbody>
        </table>

    </div>
</div>

<!--新增类目明细-->
<div id="additemContent" style="display: none">
    <div style="margin-top: 10px">
        <form class="layui-form" action="" id="addItemContentForm">
            <div class="layui-form-item">
                <label class="layui-form-label">问卷项标题</label>
                <div class="layui-input-block">
                    <input type="text" name="itemTitle" required  lay-verify="required" placeholder="请输入标题，如：项目第一天" style="width: 300px" autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">问卷项内容</label>
                <div class="layui-input-block">
                    <textarea name="itemContent" placeholder="请输入内容，如：项目第一天的任务：1.统一开发环境；2.搭建项目" style="width: 300px;" class="layui-textarea"></textarea>
                </div>
            </div>

            <%-- <div class="layui-form-item">
                 <div class="layui-input-block">
                     <input type="button" class="layui-btn" value="添加" id="addItemContentBtn" />
                     <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                 </div>
             </div>--%>
        </form>
    </div>
</div>

</body>
<script type="text/javascript" src="${pageContext.request.contextPath}/lib/layui/lay/modules/form.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.9.1.js"></script>
<script>
    //Demo
    layui.use(['form','jquery','layer'], function(){
        var form = layui.form(),
                $ = layui.jquery,
                layer = layui.layer;


        //初始化datagrid
        $.ajax({
            type: "GET",
            url: "${pageContext.request.contextPath}/json/models.json",
            //记得加双引号  T_T
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                //组装数据
                var tbody = $("#tbody");
                var rows = data.rows;
                for(var i = 0;i<rows.length;i++) {
                    var tr=$("<tr></tr>");
                    var td1 = $("<td align='center'><input type='checkbox' name='id' value='"+rows[i].id+"' lay-skin='primary'></td>")
                    var td2 = $("<td align='center'>"+rows[i].id+"</td>")
                    var td3 = $("<td align='center'>"+rows[i].name+"</td>");
                    var btn;
                    if(rows[i].status == 1) {
                        btn='<button class="layui-btn layui-btn-normal">已启用</button>';
                    }else{
                        btn =  '<button class="layui-btn layui-btn-disabled">已禁用</button>';
                    }
                    var td4 = $('<td align="center">'+btn+'</td>');
                    var name = "'"+rows[i].name+"'";
                    var td5 = $('<td align="center"><button class="layui-btn" onclick="addModelItemFn('+rows[i].id+','+name+')">新增一级类目</button></td>');
                    var td6 =$('<td><button class="layui-btn layui-btn-primary layui-btn-small"><i class="layui-icon" style="font-size: 30px;" onclick="showItem('+rows[i].id+')">&#xe615;</i> </button>\
		                <button class="layui-btn layui-btn-primary layui-btn-small"><i class="layui-icon" onclick="updateItem('+rows[i].id+')"></i></button>\
		                <button class="layui-btn layui-btn-primary layui-btn-small"><i class="layui-icon" onclick="deleteItem('+rows[i].id+')"></i></button>\
		                </td>');

                    td1.appendTo(tr);
                    td2.appendTo(tr);
                    td3.appendTo(tr);
                    td4.appendTo(tr);
                    td5.appendTo(tr);
                    td6.appendTo(tr);

                    tr.appendTo(tbody);
                    form.render('checkbox');

                }

            },
            error: function (err) {
                alert(err + "err");
            }
        });


        //添加问卷模板
        $("#addBtn").click(function () {
            layer.open({
                type: 1,
                title:'新增问卷',
                skin: 'demo-class',
                area: ['800px', '600px'],
                offset: ['50px', '500px'], //定义距离top和left的边距
                closeBtn: 1, //关闭按钮：0-不显示   1-默认  2
                id:'01-layer',
                content: $('#addModelContent'), //这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
                cancel: function(index, layero){//窗口关闭的回调
                    if(confirm('确定要关闭么')){ //只有当点击confirm框的确定时，该层才会关闭
                        layer.close(index)
                    }
                }
            });
        });




        //监听提交
        form.on('submit(formDemo)', function(data){
            layer.msg(JSON.stringify(data.field));
            return false;
        });

        function lightUser(value){
            layer.confirm('要收藏我吗？', {
                btn: ['收藏','滚一边去'] //按钮
            }, function(){
                layer.msg('看好你哟', {icon: 1});
                console.log(value);
            }, function(){
                layer.msg('再见，不留', {
                    time: 1000, //20s后自动关闭
                    btn: ['明白了', '知道了']
                });
            });
        }


        //弹出新增类目明细窗口
        $("#addItemBtn").click(function () {
            layer.open({
                type: 1,
                title:'新增类目明细',
                skin: 'demo-class',
                area: ['500px', '300px'],
                btn: ['确认','关闭'],
                btnclass: ['btn btn-primary', 'btn btn-danger'],
                offset: ['200px', '550px'], //定义距离top和left的边距
                closeBtn: 1, //关闭按钮：0-不显示   1-默认  2
                id:'02-layer',
                content: $('#additemContent'),
                yes:function (index,layero) {
                    var title = layero[0].getElementsByTagName('input')[0].value;
                    var content = layero[0].getElementsByTagName('textarea')[0].value;
                    putValueToParent(title,content);
                    layer.close(index);
                },
                end:function (index,layero) {
                   //弹层关闭   清空表单
                    $('#addItemContentForm')[0].reset();
                }
            });
        });


        function putValueToParent(title,content) {
            var table = $("#itemTable");
            var tr = $("<tr>");
            var td0 = $("<td align='center'><input type='checkbox' name='id' value='' lay-skin='primary'></td>")
            var td1 = $("<td align='center'><input type = 'hidden' name='itemTitle' value="+title+"><input type = 'hidden' name='itemContent' value="+content+">"+title+"</td>");
            var td2 =  $("<td align='center'><button class='layui-btn layui-btn-small'> <i class='layui-icon'>&#xe615;</i></button><button class='layui-btn layui-btn-small'> <i class='layui-icon'>&#xe642;</i> </button> <button class='layui-btn layui-btn-small'> <i class='layui-icon'>&#xe640;</i> </button></td>");
            td0.appendTo(tr);
            td1.appendTo(tr);
            td2.appendTo(tr);
            tr.appendTo(table);
            form.render('checkbox');
           // $("#items").val(title+";"+content+"</br>");
        }




    });

    function addModelItemFn(id,name) {
        layer.open({
            type: 1,
            title:'新增一级类目',
            skin: 'demo-class',
            area: ['800px', '600px'],
            offset: ['50px', '500px'], //定义距离top和left的边距
            closeBtn: 1, //关闭按钮：0-不显示   1-默认  2
            id:'01-layer',
            content: $("#addModelItem"), //这里content是一个DOM，注意：最好该元素要存放在body最外层，否则可能被其它的相对元素所影响
            success: function(layero, index){
                console.log(layero, index);
                $("#hiddenModelId").val(id);
                $("#modelNameId").val(name);
            },
            cancel: function(index, layero){//窗口关闭的回调
                /*if(confirm('确定要关闭么')){ //只有当点击confirm框的确定时，该层才会关闭
                 layer.close(index)
                 }*/

                console.log(id+name);
            }
        });

    }



</script>
</html>
