<%@page import="com.bill99.creditAudit.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>


<!-- ONGL access static field: @package.class@field or @vs@field -->
	
	<s:textfield label="%{@com.bill99.creditAudit.model.Host@ALIAS_HOST}" key="host" value="%{model.host}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.Host@ALIAS_DB}" key="db" value="%{model.db}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.Host@ALIAS_SELECT_PRIV}" key="selectPriv" value="%{model.selectPriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.Host@ALIAS_INSERT_PRIV}" key="insertPriv" value="%{model.insertPriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.Host@ALIAS_UPDATE_PRIV}" key="updatePriv" value="%{model.updatePriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.Host@ALIAS_DELETE_PRIV}" key="deletePriv" value="%{model.deletePriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.Host@ALIAS_CREATE_PRIV}" key="createPriv" value="%{model.createPriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.Host@ALIAS_DROP_PRIV}" key="dropPriv" value="%{model.dropPriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.Host@ALIAS_GRANT_PRIV}" key="grantPriv" value="%{model.grantPriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.Host@ALIAS_REFERENCES_PRIV}" key="referencesPriv" value="%{model.referencesPriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.Host@ALIAS_INDEX_PRIV}" key="indexPriv" value="%{model.indexPriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.Host@ALIAS_ALTER_PRIV}" key="alterPriv" value="%{model.alterPriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.Host@ALIAS_CREATE_TMP_TABLE_PRIV}" key="createTmpTablePriv" value="%{model.createTmpTablePriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.Host@ALIAS_LOCK_TABLES_PRIV}" key="lockTablesPriv" value="%{model.lockTablesPriv}" cssClass="required " required="true" />
	
