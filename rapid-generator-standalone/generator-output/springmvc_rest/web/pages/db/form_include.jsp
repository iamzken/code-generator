<%@page import="com.bill99.creditAudit.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>


	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Db.ALIAS_HOST%>:
		</td>		
		<td>
		<form:input path="host" id="host" cssClass="required " maxlength="60" />
		<font color='red'><form:errors path="host"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Db.ALIAS_DB%>:
		</td>		
		<td>
		<form:input path="db" id="db" cssClass="required " maxlength="64" />
		<font color='red'><form:errors path="db"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Db.ALIAS_USER%>:
		</td>		
		<td>
		<form:input path="user" id="user" cssClass="required " maxlength="16" />
		<font color='red'><form:errors path="user"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Db.ALIAS_SELECT_PRIV%>:
		</td>		
		<td>
		<form:input path="selectPriv" id="selectPriv" cssClass="required " maxlength="2" />
		<font color='red'><form:errors path="selectPriv"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Db.ALIAS_INSERT_PRIV%>:
		</td>		
		<td>
		<form:input path="insertPriv" id="insertPriv" cssClass="required " maxlength="2" />
		<font color='red'><form:errors path="insertPriv"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Db.ALIAS_UPDATE_PRIV%>:
		</td>		
		<td>
		<form:input path="updatePriv" id="updatePriv" cssClass="required " maxlength="2" />
		<font color='red'><form:errors path="updatePriv"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Db.ALIAS_DELETE_PRIV%>:
		</td>		
		<td>
		<form:input path="deletePriv" id="deletePriv" cssClass="required " maxlength="2" />
		<font color='red'><form:errors path="deletePriv"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Db.ALIAS_CREATE_PRIV%>:
		</td>		
		<td>
		<form:input path="createPriv" id="createPriv" cssClass="required " maxlength="2" />
		<font color='red'><form:errors path="createPriv"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Db.ALIAS_DROP_PRIV%>:
		</td>		
		<td>
		<form:input path="dropPriv" id="dropPriv" cssClass="required " maxlength="2" />
		<font color='red'><form:errors path="dropPriv"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Db.ALIAS_GRANT_PRIV%>:
		</td>		
		<td>
		<form:input path="grantPriv" id="grantPriv" cssClass="required " maxlength="2" />
		<font color='red'><form:errors path="grantPriv"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Db.ALIAS_REFERENCES_PRIV%>:
		</td>		
		<td>
		<form:input path="referencesPriv" id="referencesPriv" cssClass="required " maxlength="2" />
		<font color='red'><form:errors path="referencesPriv"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Db.ALIAS_INDEX_PRIV%>:
		</td>		
		<td>
		<form:input path="indexPriv" id="indexPriv" cssClass="required " maxlength="2" />
		<font color='red'><form:errors path="indexPriv"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Db.ALIAS_ALTER_PRIV%>:
		</td>		
		<td>
		<form:input path="alterPriv" id="alterPriv" cssClass="required " maxlength="2" />
		<font color='red'><form:errors path="alterPriv"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Db.ALIAS_CREATE_TMP_TABLE_PRIV%>:
		</td>		
		<td>
		<form:input path="createTmpTablePriv" id="createTmpTablePriv" cssClass="required " maxlength="2" />
		<font color='red'><form:errors path="createTmpTablePriv"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Db.ALIAS_LOCK_TABLES_PRIV%>:
		</td>		
		<td>
		<form:input path="lockTablesPriv" id="lockTablesPriv" cssClass="required " maxlength="2" />
		<font color='red'><form:errors path="lockTablesPriv"/></font>
		</td>
	</tr>	
	
		