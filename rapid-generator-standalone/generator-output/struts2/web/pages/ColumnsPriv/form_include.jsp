<%@page import="com.bill99.creditAudit.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>


<!-- ONGL access static field: @package.class@field or @vs@field -->
	
	<s:textfield label="%{@com.bill99.creditAudit.model.ColumnsPriv@ALIAS_HOST}" key="host" value="%{model.host}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.ColumnsPriv@ALIAS_DB}" key="db" value="%{model.db}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.ColumnsPriv@ALIAS_USER}" key="user" value="%{model.user}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.ColumnsPriv@ALIAS_TABLE_NAME}" key="tableName" value="%{model.tableName}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.ColumnsPriv@ALIAS_COLUMN_NAME}" key="columnName" value="%{model.columnName}" cssClass="required " required="true" />
	
	
	<tr>	
		<td class="tdLabel">
			<%=ColumnsPriv.ALIAS_TIMESTAMP%>:
		</td>	
		<td>
		<input value="${model.timestampString}" onclick="WdatePicker({dateFmt:'<%=ColumnsPriv.FORMAT_TIMESTAMP%>'})" id="timestampString" name="timestampString"  maxlength="0" class="" />
		</td>
	</tr>
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.ColumnsPriv@ALIAS_COLUMN_PRIV}" key="columnPriv" value="%{model.columnPriv}" cssClass="required " required="true" />
	
