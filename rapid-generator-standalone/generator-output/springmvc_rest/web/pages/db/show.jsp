<%@page import="com.bill99.creditAudit.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=Db.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="db"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/db'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="host" name="host" value="${db.host}"/>
		<input type="hidden" id="db" name="db" value="${db.db}"/>
		<input type="hidden" id="user" name="user" value="${db.user}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=Db.ALIAS_HOST%></td>	
				<td><c:out value='${db.host}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Db.ALIAS_DB%></td>	
				<td><c:out value='${db.db}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Db.ALIAS_USER%></td>	
				<td><c:out value='${db.user}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Db.ALIAS_SELECT_PRIV%></td>	
				<td><c:out value='${db.selectPriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Db.ALIAS_INSERT_PRIV%></td>	
				<td><c:out value='${db.insertPriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Db.ALIAS_UPDATE_PRIV%></td>	
				<td><c:out value='${db.updatePriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Db.ALIAS_DELETE_PRIV%></td>	
				<td><c:out value='${db.deletePriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Db.ALIAS_CREATE_PRIV%></td>	
				<td><c:out value='${db.createPriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Db.ALIAS_DROP_PRIV%></td>	
				<td><c:out value='${db.dropPriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Db.ALIAS_GRANT_PRIV%></td>	
				<td><c:out value='${db.grantPriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Db.ALIAS_REFERENCES_PRIV%></td>	
				<td><c:out value='${db.referencesPriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Db.ALIAS_INDEX_PRIV%></td>	
				<td><c:out value='${db.indexPriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Db.ALIAS_ALTER_PRIV%></td>	
				<td><c:out value='${db.alterPriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Db.ALIAS_CREATE_TMP_TABLE_PRIV%></td>	
				<td><c:out value='${db.createTmpTablePriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Db.ALIAS_LOCK_TABLES_PRIV%></td>	
				<td><c:out value='${db.lockTablesPriv}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>