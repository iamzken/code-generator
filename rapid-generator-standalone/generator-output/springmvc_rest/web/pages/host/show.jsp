<%@page import="com.bill99.creditAudit.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=Host.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="host"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/host'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="host" name="host" value="${host.host}"/>
		<input type="hidden" id="db" name="db" value="${host.db}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=Host.ALIAS_HOST%></td>	
				<td><c:out value='${host.host}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Host.ALIAS_DB%></td>	
				<td><c:out value='${host.db}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Host.ALIAS_SELECT_PRIV%></td>	
				<td><c:out value='${host.selectPriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Host.ALIAS_INSERT_PRIV%></td>	
				<td><c:out value='${host.insertPriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Host.ALIAS_UPDATE_PRIV%></td>	
				<td><c:out value='${host.updatePriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Host.ALIAS_DELETE_PRIV%></td>	
				<td><c:out value='${host.deletePriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Host.ALIAS_CREATE_PRIV%></td>	
				<td><c:out value='${host.createPriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Host.ALIAS_DROP_PRIV%></td>	
				<td><c:out value='${host.dropPriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Host.ALIAS_GRANT_PRIV%></td>	
				<td><c:out value='${host.grantPriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Host.ALIAS_REFERENCES_PRIV%></td>	
				<td><c:out value='${host.referencesPriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Host.ALIAS_INDEX_PRIV%></td>	
				<td><c:out value='${host.indexPriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Host.ALIAS_ALTER_PRIV%></td>	
				<td><c:out value='${host.alterPriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Host.ALIAS_CREATE_TMP_TABLE_PRIV%></td>	
				<td><c:out value='${host.createTmpTablePriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Host.ALIAS_LOCK_TABLES_PRIV%></td>	
				<td><c:out value='${host.lockTablesPriv}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>