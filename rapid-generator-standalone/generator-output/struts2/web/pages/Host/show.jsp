<%@page import="com.bill99.creditAudit.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=Host.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<s:form action="/pages/Host/list.do" method="get" theme="simple">
		<input type="button" value="返回列表" onclick="window.location='${ctx}/pages/Host/list.do'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<s:hidden name="host" id="host" value="%{model.host}"/>
		<s:hidden name="db" id="db" value="%{model.db}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=Host.ALIAS_HOST%></td>	
				<td><s:property value="%{model.host}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Host.ALIAS_DB%></td>	
				<td><s:property value="%{model.db}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Host.ALIAS_SELECT_PRIV%></td>	
				<td><s:property value="%{model.selectPriv}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Host.ALIAS_INSERT_PRIV%></td>	
				<td><s:property value="%{model.insertPriv}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Host.ALIAS_UPDATE_PRIV%></td>	
				<td><s:property value="%{model.updatePriv}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Host.ALIAS_DELETE_PRIV%></td>	
				<td><s:property value="%{model.deletePriv}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Host.ALIAS_CREATE_PRIV%></td>	
				<td><s:property value="%{model.createPriv}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Host.ALIAS_DROP_PRIV%></td>	
				<td><s:property value="%{model.dropPriv}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Host.ALIAS_GRANT_PRIV%></td>	
				<td><s:property value="%{model.grantPriv}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Host.ALIAS_REFERENCES_PRIV%></td>	
				<td><s:property value="%{model.referencesPriv}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Host.ALIAS_INDEX_PRIV%></td>	
				<td><s:property value="%{model.indexPriv}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Host.ALIAS_ALTER_PRIV%></td>	
				<td><s:property value="%{model.alterPriv}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Host.ALIAS_CREATE_TMP_TABLE_PRIV%></td>	
				<td><s:property value="%{model.createTmpTablePriv}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=Host.ALIAS_LOCK_TABLES_PRIV%></td>	
				<td><s:property value="%{model.lockTablesPriv}" /></td>
			</tr>
		</table>
	</s:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>