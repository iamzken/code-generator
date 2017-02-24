<%@page import="com.bill99.creditAudit.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=Func.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="func"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/func'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="name" name="name" value="${func.name}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=Func.ALIAS_RET%></td>	
				<td><c:out value='${func.ret}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Func.ALIAS_DL%></td>	
				<td><c:out value='${func.dl}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Func.ALIAS_TYPE%></td>	
				<td><c:out value='${func.type}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>