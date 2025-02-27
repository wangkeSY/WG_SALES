<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<script type="text/javascript" src='<s:url value="/js/util/noclick.js"></s:url>'></script>
<script type="text/javascript">
 $(function(){
	 if(s_userType == 'ENT' || s_userType == 'GOV'){
		 $("#userTb #userType").find("option[value='"+s_userType+"']").attr("selected",true);
		 $("#userTb #userType").find("option[value!='"+s_userType+"']").remove();
		 $("#userTb #userType").change();
	 }
	 
 });
</script>


<s:form id="addUser">
	<div id="windows">
		<div id="windowstop">
			<div id="windowstopleft">
				<ul>
					<li></li>
				</ul>
			</div>
		</div>
		<div id="windowsmain">
			<div id="windowdiv">
				<div id="windowdivmain">
					<table border="0" cellspacing="0" cellpadding="0"
						class="windowdivmaintable" id="userTb">
						<tr>
							<th><span> * </span>账户名称</th>
							<td class="tb_inputtwo">
								<s:textfield name="sysUserPO.LOGIN_NAME"
									id="loginName"
									cssClass="{required:true,rangelength:[6,25],alnum:true,remote:{type:'post',async:false,url:'manager/orguser!checkOnlyLoginName',data:{loginName:function(){return $('#loginName').val();},'orgId':function(){return $('#orglist').val();}}},messages:{required:'请输入账号名称',remote:'登录用户名已被使用'}}"
									 /></td>
							<th><span> * </span>真实姓名</th>
							<td class="tb_inputtwo"><s:textfield name="sysUserPO.REAL_NAME"
									id="userName" 
									cssClass="{required:true,rangelength:[2,10],messages:{required:'请输入真实姓名'}} "
									maxLength="10" /></td>
<!-- 									cssClass="{required:true,stringCheck:true,stringMaxLength:4,stringMinLength:2,messages:{required:'请输入真实姓名'}} " -->
						</tr>
						<tr>
							<th><span> * </span>密码</th>
							<td class="tb_inputtwo"><s:password name="sysUserPO.PASSWORD"
									id="loginPwd"
									cssClass="{required:true,rangelength:[6,25],alnum:true,messages:{required:'请输入密码'}}"
									/></td>
							<th><span> * </span>密码确认</th>
							<td class="tb_inputtwo"><s:password name="reptLoginPwd"
									id="reptLoginPwd"
									cssClass="{required:true,rangelength:[6,25],alnum:true,equalTo:'#loginPwd',messages:{required:'请输入密码',equalTo:'两次密码输入不一致'}}"
									/></td>
						</tr>
						<tr>
							<th>年龄</th>
							<td class="tb_inputtwo"><s:textfield name="sysUserPO.AGE" cssClass="{digits:true,max:100,min:15}"/></td>
							<th>性别</th>
							<td class="tb_inputtwo">
								<s:radio list="sex" listKey="value" listValue="display" name="sysUserPO.SEX" value="'M'"/>
							</td>
						</tr>
						<tr>
							<th><span> * </span>手机</th>
							<td class="tb_inputtwo"><s:textfield name="sysUserPO.MOBILE_NUMBER" cssClass="{required:true,isPhone:true,messages:{required:'请输入手机号码'}}"/></td>
							<th><span> * </span>邮箱</th>
							<td class="tb_inputtwo"><s:textfield name="sysUserPO.EMAIL" cssClass="{required:true,email:true,messages:{required:'请输入邮箱地址',email:'请正确输入邮箱地址'}}"/></td>
						</tr>
						<tr>
							<th>用户类型</th>
							<td class="tb_inputtwo">
								<s:select id="userType" list="userType" listKey="value" listValue="display" name="sysUserPO.USER_TYPE" headerKey="" headerValue="请选择" onchange="doChangeUserType(this)" cssClass="{required:true,messages:{required : '请选择用户类型'}}"/>
							</td>
							<th>状态</th>
							<td class="tb_inputtwo">
								<s:select list="userStatus" listKey="value" listValue="display" name="sysUserPO.USER_STATUS" value="'20'"/>
							</td>
						</tr>
						<tr>
							<th><span> * </span>是否支持手持设备</th>
							<td class="tb_inputtwo">
								<s:select id="isHand" list="isHand" listKey="value" listValue="display" name="sysUserPO.MOBILE_DEVICE_ACCESS" value="'0'" cssClass="{required:true,messages:{required : '请选择是否支持手持设备'}}"/>
							</td>
							<th><span> * </span>是否可外网访问</th>
							<td class="tb_inputtwo">
								<s:select id="isOuterNet" list="isOuterNet" listKey="value" listValue="display" name="sysUserPO.OUTER_NET_ACCESS" value="'0'" cssClass="{required:true,messages:{required : '请选择是否可外网访问'}}"/>
							</td>
						</tr>
						<tr  id="orgInfoTr">
							<th>企业/政府</th>
							<td class="tb_inputtwo">
								<select id="orglist" name="sysUserPO.ORGAN_UUID"  class="{required:true,messages:{required : '请选择企业或政府'}}">
									<option></option>
								</select>
							</td>
							<th>员工编号</th>
								<td class="tb_inputtwo"><s:textfield id="employeeId" name="sysUserPO.EMPLOYEE_NUM" cssClass="{remote:{type:'post',async:false,url:'manager/orguser!checkOnlyEmployeeId',data:{employeeId:function(){return $('#employeeId').val();},'orgId':function(){return $('#orglist').val();}}},messages:{remote:'员工编号重复'}}"/>
							</td>
						</tr>
						<tr>
							<th>是否管理员</th>
							<td class="tb_inputtwo">
								否
							</td>
							<th>部门名称</th>
							<td class="tb_inputtwo">
								${departmentPO.depart_name}
							</td>
						</tr>
						<tr style="display: none">
							<th>是否管理员</th>
							<td class="tb_inputtwo">
								<s:textfield name="sysUserPO.IS_ADMIN" value="0"/>
							</td>
							<th>部门主键</th>
							<td class="tb_inputtwo">
								<input name="sysUserPO.DEPART_UUID" value="${departmentPO.uuid}" />
							</td>
							<th>部门编号</th>
							<td class="tb_inputtwo">
								<input name="sysUserPO.DEPART_CODE" value="${departmentPO.depart_code}"/>
							</td>
						</tr>
					</table>
				</div>
			</div>
		</div>
		<div id="windowsbottom">
			<div id="windowsbottomleft">
				<div id="windowsbottomright">
					<ul>
		      			<li class="back">
						 	<input type="button" class="back" onclick="closeDiv('userDiv');">
		      			</li>
				       	<li class="save" style="margin-right:15px;">
						 	<input type="button" class="save" onclick="doSubmitOrgAddData();">
				       	</li>
						<li>( 说明：<span>*</span>号位必填项)
						</li>


					</ul>
				</div>
			</div>
		</div>
	</div>
</s:form>