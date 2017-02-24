<%@page import="com.bill99.creditAudit.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>


	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TablesPriv.ALIAS_HOST%>:
		</td>		
		<td>
		<form:input path="host" id="host" cssClass="required " maxlength="60" />
		<font color='red'><form:errors path="host"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TablesPriv.ALIAS_DB%>:
		</td>		
		<td>
		<form:input path="db" id="db" cssClass="required " maxlength="64" />
		<font color='red'><form:errors path="db"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TablesPriv.ALIAS_USER%>:
		</td>		
		<td>
		<form:input path="user" id="user" cssClass="required " maxlength="16" />
		<font color='red'><form:errors path="user"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TablesPriv.ALIAS_TABLE_NAME%>:
		</td>		
		<td>
		<form:input path="tableName" id="tableName" cssClass="required " maxlength="60" />
		<font color='red'><form:errors path="tableName"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TablesPriv.ALIAS_GRANTOR%>:
		</td>		
		<td>
		<form:input path="grantor" id="grantor" cssClass="required " maxlength="77" />
		<font color='red'><form:errors path="grantor"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<%=TablesPriv.ALIAS_TIMESTAMP%>:
		</td>		
		<td>
		<input value="${tablesPriv.timestampString}" onclick="WdatePicker({dateFmt:'<%=TablesPriv.FORMAT_TIMESTAMP%>'})" id="timestampString" name="timestampString"  maxlength="0" class="" />
		<font color='red'><form:errors path="timestamp"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TablesPriv.ALIAS_TABLE_PRIV%>:
		</td>		
		<td>
		<form:input path="tablePriv" id="tablePriv" cssClass="required " maxlength="62" />
		<font color='red'><form:errors path="tablePriv"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=TablesPriv.ALIAS_COLUMN_PRIV%>:
		</td>		
		<td>
		<form:input path="columnPriv" id="columnPriv" cssClass="required " maxlength="31" />
		<font color='red'><form:errors path="columnPriv"/></font>
		</td>
	</tr>	
	
		