<%@page import="com.bill99.creditAudit.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=Func.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<s:form action="/pages/Func/list.do" method="get" theme="simple">
		<input type="button" value="返回列表" onclick="window.location='${ctx}/pages/Func/list.do'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<s:hidden name="name" id="name" value="%{model.name}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=Func.ALIAS_RET%></td>	
				<td><s:property value="%{model.ret}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Func.ALIAS_DL%></td>	
				<td><s:property value="%{model.dl}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Func.ALIAS_TYPE%></td>	
				<td><s:property value="%{model.type}" /></td>
			</tr>
		</table>
	</s:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>