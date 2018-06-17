<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<TITLE>联系人列表</TITLE> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<LINK href="${pageContext.request.contextPath }/css/Style.css" type=text/css rel=stylesheet>
<LINK href="${pageContext.request.contextPath }/css/Manage.css" type=text/css
	rel=stylesheet>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.4.4.min.js"></script>
<SCRIPT language=javascript>
	function to_page(page){
		if(page){
			$("#page").val(page);
		}
		document.customerForm.submit();
	}
	
</SCRIPT>

<META content="MSHTML 6.00.2900.3492" name=GENERATOR>
</HEAD>
<BODY>
	<FORM
		action="${pageContext.request.contextPath }/customer/find"
		method=post>
		<input type="hidden" name="mss" value="${mss }"/>
		
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
					<TD width=15 background="${pageContext.request.contextPath }/images/new_022.jpg"><IMG
						src="${pageContext.request.contextPath }/images/new_022.jpg" border=0></TD>
					<TD vAlign=top width="100%" bgColor=#ffffff>
						<TABLE cellSpacing=0 cellPadding=5 width="100%" border=0>
							<TR>
								<TD class=manageHead>当前位置：历史订单管理 &gt; 顾客列表</TD>
							</TR>
							<TR>
								<TD height=2></TD>
							</TR>
						</TABLE>
						<TABLE borderColor=#cccccc cellSpacing=0 cellPadding=0
							width="100%" align=center border=0>
							<TBODY>
								<TR>
									<TD height=25>
										<TABLE cellSpacing=0 cellPadding=2 border=0>
											<TBODY>
												<TR>
													<TD>顾客名称：</TD>
													<TD><INPUT class=textbox id=sChannel2
														style="WIDTH: 80px" maxLength=50 name="username"></TD>
													
													<TD><INPUT class=button id=sButton2 type=submit
														value=" 筛选 " name=sButton2></TD>
												</TR>
											</TBODY>
										</TABLE>
									</TD>
								</TR>
							    
								<TR>
									<TD>
										<TABLE id=grid
											style="BORDER-TOP-WIDTH: 0px; FONT-WEIGHT: normal; BORDER-LEFT-WIDTH: 0px; BORDER-LEFT-COLOR: #cccccc; BORDER-BOTTOM-WIDTH: 0px; BORDER-BOTTOM-COLOR: #cccccc; WIDTH: 100%; BORDER-TOP-COLOR: #cccccc; FONT-STYLE: normal; BACKGROUND-COLOR: #cccccc; BORDER-RIGHT-WIDTH: 0px; TEXT-DECORATION: none; BORDER-RIGHT-COLOR: #cccccc"
											cellSpacing=1 cellPadding=2 rules=all border=0>
											<TBODY>
												<TR
													style="FONT-WEIGHT: bold; FONT-STYLE: normal; BACKGROUND-COLOR: #eeeeee; TEXT-DECORATION: none">
													<TD style="font-size: 22px;">顾客名称</TD>
													<TD style="font-size: 22px;">电话</TD>
													<TD style="font-size: 22px;">配镜时间</TD>
													<TD style="font-size: 22px;">左眼</TD>
													<TD style="font-size: 22px;">右眼</TD>
													<TD style="font-size: 22px;">镜片</TD>
													<TD style="font-size: 22px;">价钱</TD>
													<TD style="font-size: 22px;">操作</TD>
												</TR>
												<c:forEach  items="${list}" var="customer">
													<TR
														style="FONT-WEIGHT: normal; FONT-STYLE: normal; BACKGROUND-COLOR: white; TEXT-DECORATION: none">
														<TD style="font-size: 22px;">${customer.username }</TD>
														<TD style="font-size: 22px;">${customer.phone }</TD>
														<TD style="font-size: 22px;">${customer.dateNowStr }</TD>
														<TD style="font-size: 22px;">${customer.lefteye}</TD>
														<TD style="font-size: 22px;">${customer.righteye }</TD>
														<TD style="font-size: 22px;">${customer.lens }</TD>
														<TD style="font-size: 22px;">${customer.price }</TD>
														<TD style="font-size: 22px;">
														<a href="${pageContext.request.contextPath }/customer/initedit/${customer.id }">修改</a>
														&nbsp;
														<a href="${pageContext.request.contextPath }/customer/see/${customer.id }">查看</a>
														&nbsp;
														<c:if test="${mss eq '删除'}">
															<a href="${pageContext.request.contextPath }/customer/delete/${customer.id }">删除</a>
														</c:if> 
													</TR>
												</c:forEach>
											</TBODY>
										</TABLE>
								</TD>
					<TD width=15 background="${pageContext.request.contextPath }/images/new_023.jpg"><IMG
						src="${pageContext.request.contextPath }/images/new_023.jpg" border=0></TD>
				<TR>
					<div align="center">  
			       <font size="2">共 ${page.totalPageCount} 页</font> <font size="2">第  
			           ${page.pageNow} 页</font> <a href="${pageContext.request.contextPath }/customer/list/1">首页</a>  
			       <c:choose>  
			           <c:when test="${page.pageNow - 1 > 0}">  
			               <a href="${pageContext.request.contextPath }/customer/list/${page.pageNow - 1}">上一页</a>  
			           </c:when>  
			           <c:when test="${page.pageNow - 1 <= 0}">  
			                <a href="${pageContext.request.contextPath }/customer/list/1">上一页</a>  
			            </c:when>  
			        </c:choose>  
			        <c:choose>  
			            <c:when test="${page.totalPageCount==0}" >  
			                <a href="${pageContext.request.contextPath }/customer/list/${page.pageNow}" >下一页</a>  
			                
			            </c:when>  
			            <c:when test="${page.pageNow + 1 < page.totalPageCount}">  
			            	<button id="xiayiye_id" type="button"  onClick="xiayiye(${page.pageNow}+1)" >下一页</button>
			                <a href="${pageContext.request.contextPath }/customer/list/${page.pageNow + 1}">下一页</a>  
			            </c:when>  
			            <c:when test="${page.pageNow + 1 >= page.totalPageCount}">  
			                <a href="${pageContext.request.contextPath }/customer/list/${page.totalPageCount}">下一页</a>  
			            </c:when>  
			        </c:choose>  
			        <c:choose>  
			            <c:when test="${page.totalPageCount==0}">  
			                <a href="${pageContext.request.contextPath }/customer/list/${page.pageNow}">尾页</a>  
			            </c:when>  
			            <c:otherwise>  
			                <a href="${pageContext.request.contextPath }/customer/list/${page.totalPageCount}">尾页</a>  
			            </c:otherwise>  
			        </c:choose>  
			    </div>  

								</TR>
							</TBODY>
						</TABLE>
					</TD>
					<TD width=15 background="${pageContext.request.contextPath }/images/new_023.jpg"><IMG
						src="${pageContext.request.contextPath }/images/new_023.jpg" border=0></TD>
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