<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<TITLE>添加眼镜会员</TITLE> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<LINK href="${pageContext.request.contextPath }/css/Style.css" type=text/css rel=stylesheet>
<LINK href="${pageContext.request.contextPath }/css/Manage.css" type=text/css
	rel=stylesheet>
<script>
window.onload = function(){
	function getDate(){
	debugger;
	var today = new Date(); 
	var date; 
	date = (today.getFullYear()) +"-" + (today.getMonth() + 1 ) + "-" + today.getDate(); 
	return date;
	}
	document.getElementById("getBookTime").value=getDate();
}
</script>

<META content="MSHTML 6.00.2900.3492" name=GENERATOR>
</HEAD>
<BODY>
	
	<FORM id=form1 name=form1
		action="${pageContext.request.contextPath }/customer/add.action"
		method=post>
		<input type="hidden" name="admin_id" value="${user.admin_id }"/>
		<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
			<TBODY>
				<TR>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_019.jpg"
						border=0></TD>
					<TD width="100%" background="${pageContext.request.contextPath }/images/new_020.jpg"
						 height=20></TD>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_021.jpg"
						border=0></TD>
				</TR>
			</TBODY>
		</TABLE>
		<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
			<TBODY>
				<TR>
					<TD width=15 background=${pageContext.request.contextPath }/images/new_022.jpg><IMG
						src="${pageContext.request.contextPath }/images/new_022.jpg" border=0></TD>
					<TD vAlign=top width="100%" bgColor=#ffffff style="width: 1536px; height: 448px; ">
						<TABLE cellSpacing=0 cellPadding=5 width="100%" border=0>
							<TR>
								<TD class=manageHead>当前位置：顾客管理 &gt; 添加顾客</TD>
							</TR>
							<TR>
								<TD height=2></TD>
							</TR>
						</TABLE>
						<TABLE cellSpacing=0 cellPadding=5  border=0 style="width: 650px; height: 300px; ">
							<TR>
								<td style=" font-size: 18px; color: red">姓名 ：</td>
								<td>
								<INPUT class="form-control" id=sChannel2
														style="WIDTH: 200px; height:22px; font-size: 18px;" maxLength=50 name="customer.username" placeholder="输入姓名" required autofocus>
								</td>
								<td style=" font-size: 18px;">联系电话：</td>
								<td>
								<INPUT class=textbox id=sChannel2
														style="WIDTH: 200px; height:22px; font-size: 18px;" maxLength=50 name="customer.phone">
								
								</td>
							
							</TR>
							<TR>
							
								<td style=" font-size: 18px;">年龄 ：</td>
								<td>
								<INPUT class=textbox id=sChannel2
														style="WIDTH: 200px; height:22px; font-size: 18px;" maxLength=50 name="customer.age">
								</td>
								<td style=" font-size: 18px;">地址 ：</td>
								<td>
									<INPUT class=textbox id=sChannel2
											style="WIDTH: 200px; height:22px; font-size: 18px;" maxLength=50 name="customer.address">
								</td>
							</TR>
							<TR>
								<td style=" font-size: 18px; color: red" >右眼度数：</td>
								<td>
									<INPUT class=textbox id=sChannel2
											style="WIDTH: 200px; height:22px; font-size: 18px;" maxLength=50 name="customer.righteye" >
								</td>
								<td style=" font-size: 18px; color: red">左眼度数 ：</td>
								<td>
									<INPUT class=textbox id=sChannel2
											style="WIDTH: 200px; height:22px; font-size: 18px;" maxLength=50 name="customer.lefteye" 
											>
											
								</td>
								
							</TR>
							<TR>
								<td style=" font-size: 18px;">右眼瞳距：</td>
								<td>
									 <input type="text" style="WIDTH: 200px; height:22px; font-size: 13px;" 
											name="customer.sgrighteye"   class="form-control"
											placeholder="输入右眼瞳距" > 		
								</td>
								<td style=" font-size: 18px;">左眼瞳距 ：</td>
								<td>
									 <input type="text" style="WIDTH: 200px; height:22px; font-size: 13px;" 
											name="customer.sglefteye"   class="form-control"
											placeholder="输入左眼瞳距" > 		
											
								</td>
							</TR>
							<TR>
								<td style=" font-size: 18px; color: red">总瞳距 ：</td>
								<td>
									 <input type="text" style="WIDTH: 200px; height:22px; font-size: 13px;" 
											name="customer.ztj"   class="form-control"
											placeholder="输入总瞳距" > 		
											
								</td>
								<td style=" font-size: 18px;">下加光：</td>
								<td>
									 <input type="text" style="WIDTH: 200px; height:22px; font-size: 13px;" 
											name="customer.xjg"   class="form-control"
											placeholder="若无下加光可不填" > 		
								</td>
							</TR>
							<TR>
								<td style=" font-size: 18px;color: red ">镜架 ：</td>
								<td>
									<INPUT class=textbox id=sChannel2
											style="WIDTH: 200px; height:22px; font-size: 18px; " maxLength=50 name="customer.glasses" >
								</td>
								<td style=" font-size: 18px;" >镜架价格：</td>
								<td>
									<INPUT class=textbox id=sChannel2
											style="WIDTH: 200px; height:22px; font-size: 18px;"  name="customer.glassesprice" >
								</td>
							</TR>
							<TR>
								
								<td style=" font-size: 18px; color: red" >镜片：</td>
								<td>
									<INPUT class=textbox id=sChannel2
											style="WIDTH: 200px; height:22px; font-size: 18px;"  name="customer.lens" >
								</td>
								<td style=" font-size: 18px;">镜片价格 ：</td>
								<td>
									<INPUT class=textbox id=sChannel2
											style="WIDTH: 200px; height:22px; font-size: 18px; " maxLength=50 name="customer.lensprice" >
								</td>
							</TR>
							<TR>
								<td style=" font-size: 18px; color: red">总价 /元：</td>
								<td colspan="1">
									<INPUT class=textbox id=sChannel2
											style="WIDTH: 200px; height:22px; font-size: 18px; " maxLength=150 name="customer.price"
											 placeholder="输入需为整数"  >
											
								</td>
								<td style=" font-size: 18px; color: red">时间 ：</td>
								<td colspan="1">
									 <input type="text" style="WIDTH: 200px; height:22px; font-size: 11px;" maxLength=50
											name="customer.dateNowStr"  id="getBookTime" class="form-control"
											placeholder="格式如:2018-05-01" > 		
								</td>
							</TR>
							
							<tr>
								<td style=" font-size: 18px;">备注信息 </td>
								<td colspan="2">
									<INPUT class=textbox id=sChannel2
											style="WIDTH: 300px; height:25px; " maxLength=150 name="customer.notes" placeholder="备注如学生,散光等" >
											
								</td>
								<td colspan="1" align="center">
								<INPUT class=button id=sButton2 type=submit
														value="添加 " name=sButton2>
								</td>
							</tr>
						</TABLE>
						
						
					</TD>
					<TD width=15 background="${pageContext.request.contextPath }/images/new_023.jpg">
					<IMG src="${pageContext.request.contextPath }/images/new_023.jpg" border=0></TD>
				</TR>
			</TBODY>
		</TABLE>
		<TABLE cellSpacing=0 cellPadding=0 width="98%" border=0>
			<TBODY>
				<TR>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_024.jpg"
						border=0></TD>
					<TD align=middle width="100%"
						background="${pageContext.request.contextPath }/images/new_025.jpg" height=15></TD>
					<TD width=15><IMG src="${pageContext.request.contextPath }/images/new_026.jpg"
						border=0></TD>
				</TR>
			</TBODY>
		</TABLE>
	</FORM>
</BODY>
</HTML>
