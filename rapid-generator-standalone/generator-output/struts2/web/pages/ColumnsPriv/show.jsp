<%@page import="com.bill99.creditAudit.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=ColumnsPriv.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<s:form action="/pages/ColumnsPriv/list.do" method="get" theme="simple">
		<input type="button" value="返回列表" onclick="window.location='${ctx}/pages/ColumnsPriv/list.do'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<s:hidden name="host" id="host" value="%{model.host}"/>
		<s:hidden name="db" id="db" value="%{model.db}"/>
		<s:hidden name="user" id="user" value="%{model.user}"/>
		<s:hidden name="tableName" id="tableName" value="%{model.tableName}"/>
		<s:hidden name="columnName" id="columnName" value="%{model.columnName}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=ColumnsPriv.ALIAS_HOST%></td>	
				<td><s:property value="%{model.host}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=ColumnsPriv.ALIAS_DB%></td>	
				<td><s:property value="%{model.db}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=ColumnsPriv.ALIAS_USER%></td>	
				<td><s:property value="%{model.user}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=ColumnsPriv.ALIAS_TABLE_NAME%></td>	
				<td><s:property value="%{model.tableName}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=ColumnsPriv.ALIAS_COLUMN_NAME%></td>	
				<td><s:property value="%{model.columnName}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=ColumnsPriv.ALIAS_TIMESTAMP%></td>	
				<td><s:property value="%{model.timestampString}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=ColumnsPriv.ALIAS_COLUMN_PRIV%></td>	
				<td><s:property value="%{model.columnPriv}" /></td>
			</tr>
		</table>
	</s:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>