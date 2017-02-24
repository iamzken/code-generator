<%@page import="com.bill99.creditAudit.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=TablesPriv.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="tablespriv"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/tablespriv'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="host" name="host" value="${tablesPriv.host}"/>
		<input type="hidden" id="db" name="db" value="${tablesPriv.db}"/>
		<input type="hidden" id="user" name="user" value="${tablesPriv.user}"/>
		<input type="hidden" id="tableName" name="tableName" value="${tablesPriv.tableName}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=TablesPriv.ALIAS_HOST%></td>	
				<td><c:out value='${tablesPriv.host}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TablesPriv.ALIAS_DB%></td>	
				<td><c:out value='${tablesPriv.db}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TablesPriv.ALIAS_USER%></td>	
				<td><c:out value='${tablesPriv.user}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TablesPriv.ALIAS_TABLE_NAME%></td>	
				<td><c:out value='${tablesPriv.tableName}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TablesPriv.ALIAS_GRANTOR%></td>	
				<td><c:out value='${tablesPriv.grantor}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TablesPriv.ALIAS_TIMESTAMP%></td>	
				<td><c:out value='${tablesPriv.timestampString}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TablesPriv.ALIAS_TABLE_PRIV%></td>	
				<td><c:out value='${tablesPriv.tablePriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=TablesPriv.ALIAS_COLUMN_PRIV%></td>	
				<td><c:out value='${tablesPriv.columnPriv}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>