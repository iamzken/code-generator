<%@page import="com.bill99.creditAudit.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>


<!-- ONGL access static field: @package.class@field or @vs@field -->
	
	<s:textfield label="%{@com.bill99.creditAudit.model.User@ALIAS_HOST}" key="host" value="%{model.host}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.User@ALIAS_USER}" key="user" value="%{model.user}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.User@ALIAS_PASSWORD}" key="password" value="%{model.password}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.User@ALIAS_SELECT_PRIV}" key="selectPriv" value="%{model.selectPriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.User@ALIAS_INSERT_PRIV}" key="insertPriv" value="%{model.insertPriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.User@ALIAS_UPDATE_PRIV}" key="updatePriv" value="%{model.updatePriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.User@ALIAS_DELETE_PRIV}" key="deletePriv" value="%{model.deletePriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.User@ALIAS_CREATE_PRIV}" key="createPriv" value="%{model.createPriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.User@ALIAS_DROP_PRIV}" key="dropPriv" value="%{model.dropPriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.User@ALIAS_RELOAD_PRIV}" key="reloadPriv" value="%{model.reloadPriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.User@ALIAS_SHUTDOWN_PRIV}" key="shutdownPriv" value="%{model.shutdownPriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.User@ALIAS_PROCESS_PRIV}" key="processPriv" value="%{model.processPriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.User@ALIAS_FILE_PRIV}" key="filePriv" value="%{model.filePriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.User@ALIAS_GRANT_PRIV}" key="grantPriv" value="%{model.grantPriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.User@ALIAS_REFERENCES_PRIV}" key="referencesPriv" value="%{model.referencesPriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.User@ALIAS_INDEX_PRIV}" key="indexPriv" value="%{model.indexPriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.User@ALIAS_ALTER_PRIV}" key="alterPriv" value="%{model.alterPriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.User@ALIAS_SHOW_DB_PRIV}" key="showDbPriv" value="%{model.showDbPriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.User@ALIAS_SUPER_PRIV}" key="superPriv" value="%{model.superPriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.User@ALIAS_CREATE_TMP_TABLE_PRIV}" key="createTmpTablePriv" value="%{model.createTmpTablePriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.User@ALIAS_LOCK_TABLES_PRIV}" key="lockTablesPriv" value="%{model.lockTablesPriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.User@ALIAS_EXECUTE_PRIV}" key="executePriv" value="%{model.executePriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.User@ALIAS_REPL_SLAVE_PRIV}" key="replSlavePriv" value="%{model.replSlavePriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.User@ALIAS_REPL_CLIENT_PRIV}" key="replClientPriv" value="%{model.replClientPriv}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.User@ALIAS_SSL_TYPE}" key="sslType" value="%{model.sslType}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.User@ALIAS_SSL_CIPHER}" key="sslCipher" value="%{model.sslCipher}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.User@ALIAS_X509_ISSUER}" key="x509Issuer" value="%{model.x509Issuer}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.User@ALIAS_X509_SUBJECT}" key="x509Subject" value="%{model.x509Subject}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.User@ALIAS_MAX_QUESTIONS}" key="maxQuestions" value="%{model.maxQuestions}" cssClass="required validate-integer max-value-2147483647" required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.User@ALIAS_MAX_UPDATES}" key="maxUpdates" value="%{model.maxUpdates}" cssClass="required validate-integer max-value-2147483647" required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.User@ALIAS_MAX_CONNECTIONS}" key="maxConnections" value="%{model.maxConnections}" cssClass="required validate-integer max-value-2147483647" required="true" />
	
