<%@page import="com.bill99.creditAudit.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=ColumnsPriv.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="columnspriv"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/columnspriv'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="host" name="host" value="${columnsPriv.host}"/>
		<input type="hidden" id="db" name="db" value="${columnsPriv.db}"/>
		<input type="hidden" id="user" name="user" value="${columnsPriv.user}"/>
		<input type="hidden" id="tableName" name="tableName" value="${columnsPriv.tableName}"/>
		<input type="hidden" id="columnName" name="columnName" value="${columnsPriv.columnName}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=ColumnsPriv.ALIAS_HOST%></td>	
				<td><c:out value='${columnsPriv.host}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=ColumnsPriv.ALIAS_DB%></td>	
				<td><c:out value='${columnsPriv.db}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=ColumnsPriv.ALIAS_USER%></td>	
				<td><c:out value='${columnsPriv.user}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=ColumnsPriv.ALIAS_TABLE_NAME%></td>	
				<td><c:out value='${columnsPriv.tableName}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=ColumnsPriv.ALIAS_COLUMN_NAME%></td>	
				<td><c:out value='${columnsPriv.columnName}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=ColumnsPriv.ALIAS_TIMESTAMP%></td>	
				<td><c:out value='${columnsPriv.timestampString}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=ColumnsPriv.ALIAS_COLUMN_PRIV%></td>	
				<td><c:out value='${columnsPriv.columnPriv}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>