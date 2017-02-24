<%@page import="com.bill99.creditAudit.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>


<!-- ONGL access static field: @package.class@field or @vs@field -->
	
	<s:textfield label="%{@com.bill99.creditAudit.model.Db@ALIAS_HOST}" key="host" value="%{model.host}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.Db@ALIAS_DB}" key="db" value="%{model.db}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.Db@ALIAS_USER}" key="user" value="%{model.user}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.Db@ALIAS_SELECT_PRIV}" key="selectPriv" value="%{model.selectPriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.Db@ALIAS_INSERT_PRIV}" key="insertPriv" value="%{model.insertPriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.Db@ALIAS_UPDATE_PRIV}" key="updatePriv" value="%{model.updatePriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.Db@ALIAS_DELETE_PRIV}" key="deletePriv" value="%{model.deletePriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.Db@ALIAS_CREATE_PRIV}" key="createPriv" value="%{model.createPriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.Db@ALIAS_DROP_PRIV}" key="dropPriv" value="%{model.dropPriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.Db@ALIAS_GRANT_PRIV}" key="grantPriv" value="%{model.grantPriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.Db@ALIAS_REFERENCES_PRIV}" key="referencesPriv" value="%{model.referencesPriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.Db@ALIAS_INDEX_PRIV}" key="indexPriv" value="%{model.indexPriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.Db@ALIAS_ALTER_PRIV}" key="alterPriv" value="%{model.alterPriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.Db@ALIAS_CREATE_TMP_TABLE_PRIV}" key="createTmpTablePriv" value="%{model.createTmpTablePriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.Db@ALIAS_LOCK_TABLES_PRIV}" key="lockTablesPriv" value="%{model.lockTablesPriv}" cssClass="required " required="true" />
	
