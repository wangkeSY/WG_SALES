<%@ page contentType="text/html;charset=UTF-8" language="java"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<meta charset="UTF-8">
<title>空气电台数据系统</title>
<meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
<!-- Bootstrap 3.3.4 -->
<link href="<%=basePath%>public/toB/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
<!-- FontAwesome 4.3.0 -->
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
<!-- Ionicons 2.0.0 -->
<link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
<!-- Theme style -->
<link href="<%=basePath%>public/toB/dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
<!-- AdminLTE Skins. Choose a skin from the css/skins 
         folder instead of downloading all of them to reduce the load. -->
<link href="<%=basePath%>public/toB/dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />
<!-- iCheck -->
<link href="<%=basePath%>public/toB/plugins/iCheck/flat/blue.css" rel="stylesheet" type="text/css" />

<!-- Date Picker -->
<link href="<%=basePath%>public/toB/plugins/datepicker/datepicker3.css" rel="stylesheet" type="text/css" />

<!-- DATA TABLES 曾凡 20150626 污染排名 -->
<link href="<%=basePath%>public/toB/plugins/datatables/dataTables.bootstrap.css" rel="stylesheet" type="text/css">

<!-- DATApickerS  -->
<link href="<%=basePath%>public/toB/plugins/daterangepicker/daterangepicker-bs3.css" rel="stylesheet" type="text/css">
<!-- iCheck -->
<link href="<%=basePath%>public/toB/plugins/iCheck/flat/blue.css" rel="stylesheet" type="text/css">
<!-- jQuery 1.9.1 --> 
<script src="<%=basePath%>public/toB/plugins/jQuery/jquery-1.9.1.min.js"></script> 


<!-- 模态历史记录 -->


<!-- 模态窗口 --> 
<script src="<%=basePath%>public/toB/dist/css/sweetalert.min.js"></script> 

<link href="<%=basePath%>public/toB/dist/css/sweetalert.css" rel="stylesheet" type="text/css">


<style>
table.tableList
        {
            border-collapse: collapse;
            
            width: 100%;
            text-align: left;
        }
        table.tableList th
        {
            padding: 1px 6px;
            line-height: 21px;
            font-weight: bolder;
        }
        table.tableList tr:hover{
        	background-color:#E5E5E5;
        }
        table.tableList td
        {
        	color:#000;
            padding: 1px 6px;
            line-height: 21px;
        }
        table.tableList tr:even{
        background-color:#fff;
        }
        table.tableList .hot
        {
            background-color: #FFFACD;
        }
        table.tableList .toleft
        {
            text-align: left;
        }
        table.tableList .toright
        {
            text-align: right;
        }
        table.tableList .tomiddle
        {
            text-align: center;
        }

#pageDiv{padding: 15px 20px;text-align: left;color: #ccc;text-align:center;}
#pageDiv a{display: inline-block;color: #428bca;display: inline-block;height: 25px;	line-height: 25px;	padding: 0 10px;border: 1px solid #ddd;	margin: 0 2px;border-radius: 4px;vertical-align: middle;}
#pageDiv a:hover{text-decoration: none;border: 1px solid #428bca;}
#pageDiv span.current{display: inline-block;height: 25px;line-height: 25px;padding: 0 10px;margin: 0 2px;color: #fff;background-color: #428bca;	border: 1px solid #428bca;border-radius: 4px;vertical-align: middle;}
#pageDiv span.disabled{	display: inline-block;height: 25px;line-height: 25px;padding: 0 10px;margin: 0 2px;	color: #bfbfbf;background: #f2f2f2;border: 1px solid #bfbfbf;border-radius: 4px;vertical-align: middle;}


.loading2{  
    
      
     
    text-align:center
	width:200px;  
    
    color:#fff;  
     
    font-size:15px;  

    background: #000 url(<%=basePath%>public/toB/dist/img/loading.gif) no-repeat 10px 50%;  
    opacity: 0.7;  
    z-index:999999;  
    
    filter:progid:DXImageTransform.Microsoft.Alpha(opacity=70);   
}
#loading1{  
    
    width:100%;  
    height:100%;  
    position: fixed;  
    text-align:center
    top:0%;  
    left:0%;  
    line-height:56px;  
    color:#fff;  
    padding-top:380px;  
    font-size:15px;  
   
    background: #000 url(<%=basePath%>public/toB/dist/img/loading.gif) no-repeat 10px 50%;  
    opacity: 0.7;   
    z-index:999999;  
    
    filter:progid:DXImageTransform.Microsoft.Alpha(opacity=70); 
} 
</style>

<script>
//跳转 主页
function back2home(){
 		form = $("<form></form>");
        form.attr('action',"<%=basePath%>hwmobile/smart/corpbusiness!doIndex");
        form.attr('method','post');
        input1 = $("<input type='hidden' name='ACCOUNT' />");
        input1.attr('value',localStorage.getItem('PHONE',''));
        input2 = $("<input type='hidden' name='SESSIONID' />");
        input2.attr('value',localStorage.getItem('PASSWORD',''));
        form.append(input1);
        form.append(input2);
       form.appendTo("body");
        form.css('display','none');
        form.submit();
}			
//跳转 crm

function back2crm(){
 		form = $("<form></form>");
        form.attr('action',"<%=basePath%>hwmobile/smart/corpcrm!doList");
        form.attr('method','post');
        input1 = $("<input type='hidden' name='ACCOUNT' />");
        input1.attr('value',localStorage.getItem('PHONE',''));
        input2 = $("<input type='hidden' name='SESSIONID' />");
        input2.attr('value',localStorage.getItem('PASSWORD',''));
        form.append(input1);
        form.append(input2);
       form.appendTo("body");
        form.css('display','none');
        form.submit();
}			
//跳转 material
function back2material(){
 		form = $("<form></form>");
        form.attr('action',"<%=basePath%>hwmobile/smart/corpmaterial!doList");
        form.attr('method','post');
        input1 = $("<input type='hidden' name='ACCOUNT' />");
        input1.attr('value',localStorage.getItem('PHONE',''));
        input2 = $("<input type='hidden' name='SESSIONID' />");
        input2.attr('value',localStorage.getItem('PASSWORD',''));
        form.append(input1);
        form.append(input2);
       form.appendTo("body");
        form.css('display','none');
        form.submit();
}			
//跳转 potential
function back2potential(){
 		form = $("<form></form>");
        form.attr('action',"<%=basePath%>hwmobile/smart/corpcrm!doListPotential");
        form.attr('method','post');
        input1 = $("<input type='hidden' name='ACCOUNT' />");
        input1.attr('value',localStorage.getItem('PHONE',''));
        input2 = $("<input type='hidden' name='SESSIONID' />");
        input2.attr('value',localStorage.getItem('PASSWORD',''));
        form.append(input1);
        form.append(input2);
       form.appendTo("body");
        form.css('display','none');
        form.submit();
}			
//跳转 online
function back2online(){
 		form = $("<form></form>");
        form.attr('action',"<%=basePath%>hwmobile/smart/corponline!doList");
        form.attr('method','post');
        input1 = $("<input type='hidden' name='ACCOUNT' />");
        input1.attr('value',localStorage.getItem('PHONE',''));
        input2 = $("<input type='hidden' name='SESSIONID' />");
        input2.attr('value',localStorage.getItem('PASSWORD',''));
        form.append(input1);
        form.append(input2);
       form.appendTo("body");
        form.css('display','none');
        form.submit();
}			
//跳转 B用户修改
function back2client(){
 		form = $("<form></form>");
        form.attr('action',"<%=basePath%>hwmobile/smart/corpbusiness!doEdit");
        form.attr('method','post');
        input1 = $("<input type='hidden' name='ACCOUNT' />");
        input1.attr('value',localStorage.getItem('PHONE',''));
        input2 = $("<input type='hidden' name='SESSIONID' />");
        input2.attr('value',localStorage.getItem('PASSWORD',''));
        form.append(input1);
        form.append(input2);
       form.appendTo("body");
        form.css('display','none');
        form.submit();
}	
function mycheckbox(){

	var ids = "";
 	$("input[name='items']:checkbox").each(function () {
 		if(this.checked) {
			
			 ids += $(this).attr('value')+","; 
 		
 	}
 	});
 	swal({
		title: "确定加入关注吗？", 
		text: "您确定要关注吗？", 
		type: "warning",
		showCancelButton: true,
		closeOnConfirm: false,
		animation: "slide-from-top",  
		confirmButtonText: "是的，我要添加关注",
		confirmButtonColor: "#8ED84A"
		}, function() {
 
			$(".confirm").addClass("loading2");
			$(".confirm").html("加载中...请稍候");
			$(".confirm").attr("disabled", true);
			
	$.post('<%=basePath%>hwmobile/smart/corpcrm!doFocus',
		      {
				ACCOUNT : localStorage.getItem('PHONE',''),
				SESSIONID : localStorage.getItem('PASSWORD',''),
				ids : ids,
				MA011:"1"
		      },
		      function (data,status) //回传函数
		      {
		    	  
		    	 	//alert(data.code);
		    	 	if(data.code == 1){
		    	 		$("#loading1").hide();
		    	 		$(".confirm").removeClass("loading2");
						//$(".confirm").html("加载中...请稍候");
						$(".confirm").attr("disabled", false);
		    	 		swal({
		    				title: "操作成功", 
		    				text: "已成功添加所有关注！", 
		    				type: "success",
		    				showCancelButton: false,
		    				closeOnConfirm: false,
		    				animation: "slide-from-top",  
		    				confirmButtonText: "确定",
		    				confirmButtonColor: "#AEDEF4"
		    				}, function() {
		    					back2crm();
		    				});
		    	 		
		    	 	
		    	 		
		    	 	}
		    	 	if(data.code == 0){
		    	 		$("#loading1").hide();
		    	 		$(".confirm").removeClass("loading2");
						//$(".confirm").html("加载中...请稍候");
						$(".confirm").attr("disabled", false);
		    	 		swal("OMG", "操作失败了!", "error");
		    	 	}
		    	  	
		      }
		    );
		});
	
	} 

function dateFormat2(date, format) {
	 
    date = new Date(date);

    var o = {
        'M+' : date.getMonth() + 1, //month
        'd+' : date.getDate(), //day
        'H+' : date.getHours(), //hour
        'm+' : date.getMinutes(), //minute
        's+' : date.getSeconds(), //second
        'q+' : Math.floor((date.getMonth() + 3) / 3), //quarter
        'S' : date.getMilliseconds() //millisecond
    };

    if (/(y+)/.test(format))
        format = format.replace(RegExp.$1, (date.getFullYear() + '').substr(4 - RegExp.$1.length));

    for (var k in o)
        if (new RegExp('(' + k + ')').test(format))
            format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? o[k] : ('00' + o[k]).substr(('' + o[k]).length));
	//document.write(format);
    return format;
}

function dateFormat(date, format) {
	 
    date = new Date(date);

    var o = {
        'M+' : date.getMonth() + 1, //month
        'd+' : date.getDate(), //day
        'H+' : date.getHours(), //hour
        'm+' : date.getMinutes(), //minute
        's+' : date.getSeconds(), //second
        'q+' : Math.floor((date.getMonth() + 3) / 3), //quarter
        'S' : date.getMilliseconds() //millisecond
    };

    if (/(y+)/.test(format))
        format = format.replace(RegExp.$1, (date.getFullYear() + '').substr(4 - RegExp.$1.length));

    for (var k in o)
        if (new RegExp('(' + k + ')').test(format))
            format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? o[k] : ('00' + o[k]).substr(('' + o[k]).length));
	document.write(format);
    return format;
}





function codefans(){
	$("#MSG").html("");
	}



function cancelAdd(){
	$("#tbody").children("tr").last().remove();
	$("#addMaterial").show();
	}
$().ready(function(){
	
	
	$("#toggleSearch").click(function(){
		$("#boxSearch").toggle("slow");

	});
	
	$("#addMaterial").click(function(){
		$("#material").append("<tr><td></td><td id = 'tdType'><input type = 'text' id = 'materialType'/></td><td id = 'tdTime'><input type = 'text' id = 'materialTime'/></td><td id = 'tdButton'><button type='button' id = 'saveAdd' onclick='doSaveAdd();' style = 'margin-right:5px' class='btn btn-success btn-flat'>确认</button><button type='button' id = 'cancelAdd' onclick='cancelAdd();' class='btn btn-warning btn-flat'>取消</button></td></tr>");
		$("#addMaterial").hide();
	});
	
	$('.breadcrumb li:first').click(function(){
			back2home();
		});
	
	$("#doSearch").click(function(){
		
		var time = $("#range_4").val();
		time = time.replace(/\s/g, "");
		var array = time.split("-");
		
		$("#timeB").val(array[0]);
		$("#timeE").val(array[1]);
		
		
		input1 = $("<input type='hidden' name='ACCOUNT' />");
        input1.attr('value',localStorage.getItem('PHONE',''));
        input2 = $("<input type='hidden' name='SESSIONID' />");
        input2.attr('value',localStorage.getItem('PASSWORD',''));
        $('#online_search').append(input1);
        $('#online_search').append(input2);
		
		
		var param = $('#online_search').serialize();
		var url = "<%=basePath%>hwmobile/smart/corponline!doQuery";

		//$('#form_search').action=url;  //这样写是没有效果的
		$('#online_search').attr("action", url);
		$('#online_search').submit();
		
<%-- 		$.post('<%=basePath%>hwmobile/smart/corponline!doQuery',
			      {
					ACCOUNT : localStorage.getItem('PHONE',''),
					SESSIONID : localStorage.getItem('PASSWORD',''),
					device : $("#range_1").val(),
					TEL : $("#range_2").val(),
					timeB:array[0],
					timeE:array[1]
			      },
			      function (data,status) //回传函数
			      {
			    	  
			    	 	if(data.code == 1){
			    	 		
			    	 		if(data.count != 0){
			    	 			//alert(data.dataObject[0].ma003);
			    	 			$("#searchTbody").html("");
			    	 			
			    	 			for(var i=0;i<data.dataObject.length;i++){
			    	 				
			    	 				var time1 = dateFormat2(data.dataObject[i].ma007.time,'yyyy-MM-dd');
				    	 			//var time2 = dateFormat2(data.dataObject[i].ma005.time,'yyyy-MM-dd');
				    	 			
				    	 			
			    	 				$("#searchTbody").append("<tr style = 'height:15.5px;padding-bottom:5px'>");
			    	 				$("#searchTbody").append('<td><INPUT name="items" type="checkbox" value ="'+data.dataObject[i].ma020+'"/></td>');
			    	 				$("#searchTbody").append('<td>'+data.dataObject[i].ma018+'</td>');
			    	 				$("#searchTbody").append('<td>'+data.dataObject[i].ma006+'</td>');
			    	 				$("#searchTbody").append('<td>'+data.dataObject[i].ma016+'</td>');
			    	 				$("#searchTbody").append('<td>'+data.dataObject[i].ma005+'</td>');
			    	 				$("#searchTbody").append('<td>'+data.dataObject[i].ma019+'</td><td>'+time1+'</td>');
			    	 				
				    	 			
				    	
			    	 				$("#searchTbody").append("</tr>");
			    	 				}
			    	 			
			    	 			
			    	 			<c:forEach items="${materialDetailPOList }" var="detail">  
			    		        <tr>  
			    		            <td><INPUT name="items" type="checkbox" value ="${detail.ma002}-${detail.ma003}" /></td>  
			    		            <td>${detail.ma008}</td>  
			    		            <td>${detail.ma003}</td> 
			    		            <td><script>dateFormat('${detail.ma004}','yyyy-MM-dd')</script></td>
			    		            <td><script>dateFormat('${detail.ma005}','yyyy-MM-dd')</script></td> 
			    		            <td><script>if(${detail.ma006} == 0) document.write("<span style = 'font-weight:bold;color:green;'>使用中</span>");if(${detail.ma006} == 1) document.write("<span style = 'font-weight:bold;color:#F39C12;'>已更换</span>");if(${detail.ma006} == 2) document.write("<span style = 'font-weight:bold;color:red;'>超期</span>");</script></td> 
			    		            <td><input type="button" class="btn btn-info btn-flat" value="更换" onClick="doUseModify('${detail.ma001}');" /> 
			    		            <span style = "display: none;" >${detail.ma001} </span></td>
			    		        </tr>  
			    		    </c:forEach> 
			    	 			
			    	 			
			    	 		}
			    	 		else
			    	 			{
			    	 			swal("OMG", "查询结果  0", "warning");
			    	 			}
			    	 		
			    	 		
			    	 		
			    	 	}
			    	 	if(data.code == 0){
			    	 		swal("OMG", "添加操作失败了!", "error");
			    	 	}
			    	  	
			      }
			    ); --%>
		
	});
	
	
	
});

</script>
</head>

<body class="skin-blue sidebar-mini" style = "width:100%">
<div id="loading1"  style="display:none"><center><img src="<%=basePath%>public/loading.gif" />Loading pages...</center></div>

<%-- <header class="main-header"> 
  <!-- Logo --> 

  

  <!-- Header Navbar: style can be found in header.less -->
  <nav class="navbar navbar-static-top" role="navigation" style = "margin-left:0px;"> 
    <!-- Sidebar toggle button--> 
    
    <div class="navbar-custom-menu">
      <ul class="nav navbar-nav">
        <!-- User Account: style can be found in dropdown.less -->
        <li class="dropdown user user-menu"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"> <img src="<%=basePath%>public/toB/dist/img/user_admin.jpg" class="user-image" alt="User Image"> <span class="hidden-xs">空净厂商A</span> </a>
          <ul class="dropdown-menu">
            <!-- User image -->
            <li class="user-header"> <img src="<%=basePath%>public/toB/dist/img/user_admin.jpg" class="img-circle" alt="User Image">
              <p>空净厂商A <small>联系人：猫咪</small> <small>联系人手机号：110</small> </p>
            </li>
            <!-- Menu Footer-->
            <li class="user-footer">
              <div class="pull-left"> <a href="#" class="btn btn-default btn-flat">账号管理</a> </div>
              <div class="pull-right"> <a href="#" class="btn btn-default btn-flat">退出登录</a> </div>
            </li>
          </ul>
        </li>
      </ul>
    </div>
  </nav>
</header> --%>

<jsp:include page="../topSmall.jsp"></jsp:include>


<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper" style = "margin-left:0px;"> 
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <h1>设备在线用户</h1>
    <ol class="breadcrumb">
       <li> <a href="#"><i class="fa fa-dashboard"></i> 首页</a></li>
	   <li class="active"><i class="fa fa-circle-o" style = "margin-right:5px;"></i>在线用户</li>
    </ol>
  </section>
  
  <!-- Main content -->
  <section class="content" >
  
  <!-- Main row -->
  <div class="row"> 
    
    <!-- col -->
    <section class="col-lg-12 connectedSortable"> 
      <!-- 设备管理 -->
      <div class="box box-success" style="position: relative; ">
        <div class="box-header with-border">
        
        <button class="btn btn-block btn-default" id = "toggleSearch" style = "width:120px">详细搜索</button>
          <div class="box-body" id = "boxSearch" style = "display:none;">
			<!-- search form -->
            <form method="post" id = "online_search" name = "online_search">
            
			  <!-- row -->
            <div class="row">
              <div class="col-sm-3">
			    <label>设备标识</label>
				<div class="input-group">
                      <div class="input-group-addon">
                        <i class="fa fa-bank"></i>
                      </div>
                      <input id="range_1" name = "device" type="text"  value="" placeholder = "设备背后二维码" class = "form-control">
                       <input type="text" id = "timeB" style = "display: none;"  name = "timeB"/>
                      <input type="text" id = "timeE" style = "display: none;"  name = "timeE"/>
                </div><!-- /.input group -->
                
              </div>

              <div class="col-sm-3">
			  <label>联系人手机</label>
				<div class="input-group">
                      <div class="input-group-addon">
                        <i class="fa fa-phone"></i>
                      </div>
                      <input id="range_2" name = "TEL" type="text" class="form-control" placeholder = "用户的手机号" data-inputmask='"mask": "999-9999-8189"' data-mask/>
                </div><!-- /.input group -->
			  </div>

				<%-- <div class="col-sm-3">
			  <label>耗材类型:</label>
                    <div class="input-group">
                      <div class="input-group-addon">
                        <i class="fa fa-yelp"></i>
                      </div>
                       <select id="range_3" class="form-control pull-right">
						<option value ="">=请选择=</option>
						  <c:forEach items="${materialPOList }" var="material">  
										        
							<option value ="${material.ma001}">${material.ma002}(${material.ma003})</option>
										            
						</c:forEach>  
						 
						</select>
                       
                    </div><!-- /.input group -->
              </div><!-- /. col-sm-3 --> --%>

              <div class="col-sm-3">
			  <label></label>
                    <div class="input-group">
                      
                    </div><!-- /.input group -->
              </div><!-- /. col-sm-3 -->

            </div><!-- /. row -->
			  <!-- row -->
            <div class="row">
              <hr>
			  <!-- 设备注册日期 ol-sm-3 -->
                  <div class="col-sm-6">
                    <label>设备注册日期:</label>
                    <div class="input-group">
                      <div class="input-group-addon">
                        <i class="fa fa-calendar"></i>
                      </div>
                      <input id="range_4" type="text" class="form-control pull-right" />
                    </div><!-- /.input group -->
                  </div><!-- /.col-sm-3 设备注册日期-->


			 

              <div class="col-sm-3">
			  
                    <div class="input-group">
                      
                    </div><!-- /.input group -->
              </div><!-- /.col-sm-3 -->


			   
			   <div class="col-sm-3">
			    <div class="">&nbsp</div>
               <button id = "doSearch" class="btn btn-block btn-primary btn-sm">搜索</button>
              </div>
              
            </div>
            </form>
          </div>
		  <!-- /. row -->	
		  <!--search form -->
		  
		  <!-- row -->
          <div class="row margin">
            <div class="col-sm-5"> </div>
            <div class="col-sm-7">
              <div class="col-sm-2">
              </div>
              <div class="col-sm-2">
              </div>
              <div class="col-sm-2">
              </div>
              <div class="col-sm-2">
              
              </div>
              <div class="col-sm-2">
              <button onclick = "mycheckbox();" class="btn btn-block btn-primary btn-sm">加入关注</button>
              </div>
              <div class="col-sm-2">
                <button class="btn btn-block btn-primary btn-sm" id = "online_excel">数据导出</button>
				
              </div>
            </div>
			<!-- /. row -->	
          </div>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
		
          <table id="crm" class="table table-hover table-bordered table-striped">
            <thead>
              <tr>
				<th id = "table_head"></th>
                <th>设备标识</th>
                <th>手机号</th>
                <th>设备注册地址</th>
                <th>邮箱</th>
                <th>手机类型</th>
                <th>用户注册日期</th>
              </tr>
            </thead>
            <tbody id = "searchTbody">
            <%-- document.write(Date.parse("${detail.ma004}")) --%>
            <c:forEach items="${u001POList }" var="u001" begin="1" end="10">  
		        <tr>  
		            <td><INPUT name="items" type="checkbox" value ="${u001.ma020}" /></td>  
		            <td>${u001.ma018}</td>  
		            <td>${u001.ma006}</td> 
		            <td>${u001.ma016}</td>
		            <td>${u001.ma005}</td>
		            <td>${u001.ma019}</td>
		            <td>
		            	<script>dateFormat('${u001.ma007}','yyyy-MM-dd')</script>
		            	<span style = "display: none;" >${u001.ma001} </span>
		            </td>
		            
		        </tr>  
		    </c:forEach> 
              
              
            </tbody>
          </table>
          
           <div id = "pageDiv"></div>
		 
        </div><!-- /.box-body -->
		

		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
      </div>
      <!-- /.box --> 
    </section>
    <!-- right col --> 
  </div>
  <!-- /. row --> 
</div>
<!-- /.content-wrapper-->
<footer class="main-footer" style = "margin-left:0px;">
  <div class="pull-right hidden-xs"> <b>Version</b> 2.0 </div>
  <strong>Copyright &copy; 2014-2015 <a href="http://almsaeedstudio.com">Almsaeed Studio</a>.</strong> All rights reserved. </footer>




  
  

<!-- 获取所有省份的城市 -->
<script src="<%=basePath%>public/toB/dist/js/Area.js" type="text/javascript"></script>
<script src="<%=basePath%>public/toB/dist/js/AreaData_min.js" type="text/javascript"></script>

<!-- jquery-ui-1.11.2.min.js --> 
<script src="<%=basePath%>public/toB/plugins/jQueryUI/jquery-ui-1.11.2.min.js" type="text/javascript"></script> 

<!-- Bootstrap 3.3.2 JS --> 
<script src="<%=basePath%>public/toB/bootstrap/js/bootstrap.min.js" type="text/javascript"></script> 
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js" type="text/javascript"></script>
<script src="<%=basePath%>public/toB/plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script>  
<!-- datepicker --> 
<script src="<%=basePath%>public/toB/plugins/datepicker/bootstrap-datepicker.js" type="text/javascript"></script> 
<!-- datepicker --> 
<script src="<%=basePath%>public/toB/plugins/daterangepicker/daterangepicker.js" type="text/javascript"></script> 

<!-- iCheck -->
<script src="<%=basePath%>public/toB/plugins/iCheck/icheck.min.js" type="text/javascript"></script>
<!-- Bootstrap WYSIHTML5
<script src="plugins/bootstrap-wysihtml5/bootstrap3-wysihtml5.all.min.js" type="text/javascript"></script>   
<!-- Slimscroll --> 
<script src="<%=basePath%>public/toB/plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script> 
<!-- FastClick --> 
<script src='<%=basePath%>public/toB/plugins/fastclick/fastclick.min.js'></script> 
<!-- AdminLTE App --> 
<script src="<%=basePath%>public/toB/dist/js/app.min.js" type="text/javascript"></script> 
<!-- AdminLTE for demo purposes -->
<script src="<%=basePath%>public/toB/dist/js/demo.js" type="text/javascript"></script>

<!-- DATA TABES SCRIPT 曾凡 20150626 污染排名--> 

<script src="<%=basePath%>public/toB/plugins/datatables/jquery.dataTables.js" type="text/javascript"></script> 

<!-- DATA TABES SCRIPT 曾凡 20150626 污染排名--> 

<script src="<%=basePath%>public/toB/plugins/datatables/dataTables.bootstrap.js" type="text/javascript"></script> 



<!-- 分页js -->
<script src="<%=basePath%>public/toB/dist/js/jquery.page.js" type="text/javascript"></script>




<script>
var _page = 1;
      $(function () {
    	  
    		
    	  $("#online_excel").click(function(){
    		  
    		  swal({
					title: "确定导出数据吗？", 
					text: "您确定要导出数据？", 
					type: "warning",
					showCancelButton: true,
					closeOnConfirm: false,
					animation: "slide-from-top",  
					confirmButtonText: "是的，我要导出",
					confirmButtonColor: "#8ED84A"
					}, function() {
						swal("操作成功!", "已成功导出数据！", "success");
						var url = "<%=basePath%>hwmobile/smart/corponline!expExcel?ACCOUNT="+localStorage.getItem("PHONE","")+"&SESSIONID="+localStorage.getItem("PASSWORD","");
					    //alert(url);
						window.location.href=url; 
						
					});
    		  
    		  
				
			});
      });
    </script>

<script>
				 $(function () {
				 //Date range picker
					$('#range_4').daterangepicker();
					//$('#toggleNavigation').();
				//	$("#crm").dataTable();
			//	$("#material").dataTable();
					
					$('#material').dataTable({
					  "bPaginate": false,
					  "bLengthChange": false,
					  "bFilter": false,
					  "bSort": false,
					  "bInfo": false,
					  "bAutoWidth": false
					}); 
			
					pageChange();

			
			//全选的位置
			//alert($("#table_head").postion());


		

				
			

				});

// --列头全选框被单击--- 
function ChkAllClick(sonName, cbAllId){ 
		var arrSon = document.getElementsByName(sonName); 
		var cbAll = document.getElementById(cbAllId); 
		var tempState=cbAll.checked; 
		for(i=0;i<arrSon.length;i++) { 
				if(arrSon[i].checked!=tempState) 
				arrSon[i].click(); 
				} 
	} 


function getAreaID(){
	var area = 0;          
	if($("#seachdistrict").val() != "0"){
		area = $("#seachdistrict").val();                
	}else if ($("#seachcity").val() != "0"){
		area = $("#seachcity").val();
	}else{
		area = $("#seachprov").val();
	}
	return area;
}

function showAreaID() {
	//地区码
	var areaID = getAreaID();
	//地区名
	var areaName = getAreaNamebyID(areaID) ;
	return areaName;
	alert("您选择的地区码：" + areaID + "      地区名：" + areaName);            
}

//根据地区码查询地区名
function getAreaNamebyID(areaID){
	var areaName = "";
	if(areaID){
	if(areaID.length == 2){
		areaName = area_array[areaID];
	}else if(areaID.length == 4){
		var index1 = areaID.substring(0, 2);
		areaName = area_array[index1] + " " + sub_array[index1][areaID];
	}else if(areaID.length == 6){
		var index1 = areaID.substring(0, 2);
		var index2 = areaID.substring(0, 4);
		areaName = area_array[index1] + " " + sub_array[index1][index2] + " " + sub_arr[index2][areaID];
	}
	}
	return areaName;
}



//分页
function pageChange(){
	$("#pageDiv").html("");
	var count;
	
	$.post('<%=basePath%>hwmobile/smart/corponline!getDataInPage',
		      {
		ACCOUNT : localStorage.getItem('PHONE',''),
		SESSIONID : localStorage.getItem('PASSWORD',''),
				page : _page,
				rows : 10,
				pk : "ma001",
				cellIndex : "ma001,ma002,ma005,ma004,ma007,ma008,ma012,ma011",
				focus:1
		      },
		      function (data,status) //回传函数
		      {
		    	  
		    	 
		    	  
		    	 count = data.total;
		    	 
		    	 $("#pageDiv").createPage({
		    	        pageCount:count,
		    	        current:_page,
		    	        backFn:function(p){
		    				
		    	        	_page = p;
		    	        	reNew(); 	
		    	        	
		    	        	<%-- $.post('<%=basePath%>hwmobile/smart/corponline!getDataInPage',
		    	      		      {
		    	        		ACCOUNT : localStorage.getItem('PHONE',''),
		    	        		SESSIONID : localStorage.getItem('PASSWORD',''),
		    	      				page : p,
		    	      				rows : 10,
		    	      				pk : "ma020",
		    	      				cellIndex : "ma020,ma018,ma006,ma016,ma005,ma019,ma007"
		    	      				
		    	      		      },
		    	      		      function (data,status) //回传函数
		    	      		      {
		    	      		    	  
		    	      		    	var content;
		    	    		    	for(var i = 0; i < data.rows.length; i++){
		    	    		    		
		    	    		    		//alert(data.rows[i].cell[2]);
		    	    		    		/* $("#crmTbody").append('<tr>');
		    	    		    		$("#crmTbody").append('<td><INPUT name="items" type="checkbox" value ="'+checknull(data.rows[i].cell[0])+'" /></td>');
		    	    		    		$("#crmTbody").append('<td>'+checknull(data.rows[i].cell[1])+'</td>');
		    	    		    		$("#crmTbody").append('<td>'+checknull(data.rows[i].cell[2])+'</td>');
		    	    		    		$("#crmTbody").append('<td>'+checknull(data.rows[i].cell[3])+'</td>');
		    	    		    		$("#crmTbody").append('<td>'+checknull(data.rows[i].cell[4])+'</td>');
		    	    		    		
		    	    		    		$("#crmTbody").append('<td>'+checknull(data.rows[i].cell[5])+'</td>');
		    	    		    		$("#crmTbody").append('<td>'+dateFormat2(checknull(data.rows[i].cell[6]),"yyyy-MM-dd")+'</td>');
		    	    		    		$("#crmTbody").append('<td>'+checkState(data.rows[i].cell[7])+'</td>');
		    	    		    		$("#crmTbody").append('<td>'+checkButton(data.rows[i].cell[7],data.rows[i].cell[0])+'<span style = "display: none;" >'+checknull(data.rows[i].cell[0])+'</span>'+'</td>');
		    	    		    		
		    	    		    		
		    	    		    		$("#crmTbody").append('</tr>'); */
		    	    		            
		    	    		    		
		    	    		    		content += '<tr>'+'<td><INPUT name="items" type="checkbox" value ="'+checknull(data.rows[i].cell[0])+'" /></td>'+
		    	    		    		'<td>'+checknull(data.rows[i].cell[1])+'</td>'+'<td>'+checknull(data.rows[i].cell[2])+'</td>'+
		    	    		    		'<td>'+checknull(data.rows[i].cell[3])+'</td>'+'<td>'+checknull(data.rows[i].cell[4])+'</td>'+
		    	    		    		'<td>'+checknull(data.rows[i].cell[5])+'</td>'+
		    	    		    		'<td>'+dateFormat2(checknull(data.rows[i].cell[6]),"yyyy-MM-dd")+'<span style = "display: none;" >'+checknull(data.rows[i].cell[0])+'</span>'+'</td>';
		    	    		    		
		    	    		            <td><script>dateFormat('${crm.ma012}','yyyy-MM-dd')</script></td>
		    	    		            
		    	    		            <td><script>if(${crm.ma011} == 0) document.write("<span style = 'font-weight:bold;color:red;'>未关注</span>");if(${crm.ma011} == 1) document.write("<span style = 'font-weight:bold;color:green;'>已关注</span>");</script></td>
		    	    		            <td><script>if(${crm.ma011} == 0) document.write("<button class='btn btn-danger btn-flat' style = 'font-weight:bold' onclick = 'onSureStatus(\"${crm.ma001}\");'>关注</button>");if(${crm.ma011} == 1) document.write("<button class='btn btn-default btn-flat' style = 'font-weight:bold;' onclick = 'onCancelStatus(\"${crm.ma001}\");' >取消关注</button>");</script><span style = "display: none;" >${crm.ma001} </span></td>
		    	    		    	
		    	    		    	}/* for */
		    	    		    	$("#searchTbody").html(content);
		    	    		    	
		    	      		    	 	
		    	      		    	 
		    	      		    	reNew(); 	
		    	      		      }
		    	      		    );   /* post */ --%>
		    	        	
		    	        }
		    	    }); 
		    	 	
		    	 
		    	
		    	  	
		      }
		    );   /* post */
	
	
}

function checknull(data){
	if(data == null){
		return "";
	}else
		return data;
}

function checkState(data){
	if(data == 0){
		return "<span style = 'font-weight:bold;color:red;'>未关注</span>";
	}
	if(data == 1){
		return "<span style = 'font-weight:bold;color:green;'>关注</span>";
		
	}
}

function checkButton(data,ma001){
	if(data == 0){
		return "<button class='btn btn-danger btn-flat' style = 'font-weight:bold' onclick = 'onSureStatus(\""+ma001+"\");'>关注</button>";
	}
	if(data == 1){
		return "<button class='btn btn-default btn-flat' style = 'font-weight:bold;' onclick = 'onCancelStatus(\""+ma001+"\");' >取消关注</button>";
		
	}
}
function reNew(){
	$.post('<%=basePath%>hwmobile/smart/corponline!getDataInPage',
		      {
		ACCOUNT : localStorage.getItem('PHONE',''),
		SESSIONID : localStorage.getItem('PASSWORD',''),
				page : _page,
				rows : 10,
				pk : "ma020",
  				cellIndex : "ma020,ma018,ma006,ma016,ma005,ma019,ma007"
  				
		      },
		      function (data,status) //回传函数
		      {
		    	  var content = "";
		    	if(data.records){ 
		    	
		    		
		    	for(var i = 0; i < data.rows.length; i++){
		    		
		    		//alert(data.rows[i].cell[2]);
		    		/* $("#crmTbody").append('<tr>');
		    		$("#crmTbody").append('<td><INPUT name="items" type="checkbox" value ="'+checknull(data.rows[i].cell[0])+'" /></td>');
		    		$("#crmTbody").append('<td>'+checknull(data.rows[i].cell[1])+'</td>');
		    		$("#crmTbody").append('<td>'+checknull(data.rows[i].cell[2])+'</td>');
		    		$("#crmTbody").append('<td>'+checknull(data.rows[i].cell[3])+'</td>');
		    		$("#crmTbody").append('<td>'+checknull(data.rows[i].cell[4])+'</td>');
		    		
		    		$("#crmTbody").append('<td>'+checknull(data.rows[i].cell[5])+'</td>');
		    		$("#crmTbody").append('<td>'+dateFormat2(checknull(data.rows[i].cell[6]),"yyyy-MM-dd")+'</td>');
		    		$("#crmTbody").append('<td>'+checkState(data.rows[i].cell[7])+'</td>');
		    		$("#crmTbody").append('<td>'+checkButton(data.rows[i].cell[7],data.rows[i].cell[0])+'<span style = "display: none;" >'+checknull(data.rows[i].cell[0])+'</span>'+'</td>');
		    		
		    		
		    		$("#crmTbody").append('</tr>'); */
		            
		    		
		    		content += '<tr>'+'<td><INPUT name="items" type="checkbox" value ="'+checknull(data.rows[i].cell[0])+'" /></td>'+
		    		'<td>'+checknull(data.rows[i].cell[1])+'</td>'+'<td>'+checknull(data.rows[i].cell[2])+'</td>'+
		    		'<td>'+checknull(data.rows[i].cell[3])+'</td>'+'<td>'+checknull(data.rows[i].cell[4])+'</td>'+
		    		'<td>'+checknull(data.rows[i].cell[5])+'</td>'+
		    		'<td>'+dateFormat2(checknull(data.rows[i].cell[6]),"yyyy-MM-dd")+'<span style = "display: none;" >'+checknull(data.rows[i].cell[0])+'</span>'+'</td>';
		    		
		            <%-- <td><script>dateFormat('${crm.ma012}','yyyy-MM-dd')</script></td>
		            
		            <td><script>if(${crm.ma011} == 0) document.write("<span style = 'font-weight:bold;color:red;'>未关注</span>");if(${crm.ma011} == 1) document.write("<span style = 'font-weight:bold;color:green;'>已关注</span>");</script></td>
		            <td><script>if(${crm.ma011} == 0) document.write("<button class='btn btn-danger btn-flat' style = 'font-weight:bold' onclick = 'onSureStatus(\"${crm.ma001}\");'>关注</button>");if(${crm.ma011} == 1) document.write("<button class='btn btn-default btn-flat' style = 'font-weight:bold;' onclick = 'onCancelStatus(\"${crm.ma001}\");' >取消关注</button>");</script><span style = "display: none;" >${crm.ma001} </span></td>
		    	 --%>
		    	}/* for */
		    	
		    	}/* if */
		    	 	
		    	$("#searchTbody").html(content);	
		    	
		    	  	
		      }
		    );   /* post */
}


</script>
</body>
</html>