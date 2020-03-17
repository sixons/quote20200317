<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<%@include file="/share/taglib.jsp" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<link href="<%=basePath%>style/oa.css" rel="stylesheet" type="text/css">
<script language="javascript" src="<%=basePath%>script/public.js"></script>
<title>修改产品信息</title>
</head>
<body>
<center>
<form action="productmanage_update.do" method="post">
<input type="hidden" name="productNO" value="${product.productNO}">
<TABLE class="tableEdit" border="0" cellspacing="1" cellpadding="0" style="width:580px;">
	<TBODY>
		<TR>
			<!-- 这里是添加、编辑界面的标题 -->
			<td align="center" class="tdEditTitle">修改产品信息</TD>
		</TR>
		<TR>
			<td>
			<!-- 主输入域开始 -->
<table class="tableEdit" style="width:580px;" cellspacing="0" border="0" cellpadding="0">
	<tr>
		<td class="tdEditLabel" >名称</td>			
		<td class="tdEditContent"><input type="text" name="productName" value="${product.productName}">
		</td>
		<td class="tdEditLabel" >类型</td>			
		<td class="tdEditContent">
		<select name="producttypeNO">
			
		</select>
	</tr>
	<tr>
		<td class="tdEditLabel" >所有者</td>			
		<td class="tdEditContent"><input type="text" name="productOwner" value="${product.productOwner}">
		</td>
		<td class="tdEditLabel" >所在区域</td>			
		<td class="tdEditContent"><input type="text" name="producingArea" value="${product.producingArea}"></td>
	</tr>
	<tr>
		<td class="tdEditLabel" >价格</td>			
		<td class="tdEditContent"><input type="text" name="price" value="${product.price}">
		</td>
		<td class="tdEditLabel" >单位</td>			
		<td class="tdEditContent"><input type="text" name="unit" value="${product.unit}"></td>
	</tr>
	<tr>
		<td class="tdEditLabel" >数量</td>			
		<td class="tdEditContent"><input type="text" name="quantity" value="${product.quantity}"></td>
		<td class="tdEditLabel" >其他</td>			
		<td class="tdEditContent" ><input type="text" name="otherInfo" value="${product.otherInfo}">
		</td>
	</tr>
</table>
			<!-- 主输入域结束 -->
			</td>
		</TR>
	</TBODY>
</TABLE>

<TABLE>
		<TR align="center">
			<TD colspan="3" bgcolor="#EFF3F7">
			<input type="submit" name="saveButton"
				class="MyButton" value="修改产品信息"> 
			<input type="button" class="MyButton"
				value="关闭窗口" onclick="window.close()">
			</TD>
		</TR>
</TABLE>
</form>
</center>
</body>
</html>