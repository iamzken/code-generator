<%@page import="com.bill99.creditAudit.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>


	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=User.ALIAS_HOST%>:
		</td>		
		<td>
		<form:input path="host" id="host" cssClass="required " maxlength="60" />
		<font color='red'><form:errors path="host"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=User.ALIAS_USER%>:
		</td>		
		<td>
		<form:input path="user" id="user" cssClass="required " maxlength="16" />
		<font color='red'><form:errors path="user"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=User.ALIAS_PASSWORD%>:
		</td>		
		<td>
		<form:input path="password" id="password" cssClass="required " maxlength="16" />
		<font color='red'><form:errors path="password"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=User.ALIAS_SELECT_PRIV%>:
		</td>		
		<td>
		<form:input path="selectPriv" id="selectPriv" cssClass="required " maxlength="2" />
		<font color='red'><form:errors path="selectPriv"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=User.ALIAS_INSERT_PRIV%>:
		</td>		
		<td>
		<form:input path="insertPriv" id="insertPriv" cssClass="required " maxlength="2" />
		<font color='red'><form:errors path="insertPriv"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=User.ALIAS_UPDATE_PRIV%>:
		</td>		
		<td>
		<form:input path="updatePriv" id="updatePriv" cssClass="required " maxlength="2" />
		<font color='red'><form:errors path="updatePriv"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=User.ALIAS_DELETE_PRIV%>:
		</td>		
		<td>
		<form:input path="deletePriv" id="deletePriv" cssClass="required " maxlength="2" />
		<font color='red'><form:errors path="deletePriv"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=User.ALIAS_CREATE_PRIV%>:
		</td>		
		<td>
		<form:input path="createPriv" id="createPriv" cssClass="required " maxlength="2" />
		<font color='red'><form:errors path="createPriv"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=User.ALIAS_DROP_PRIV%>:
		</td>		
		<td>
		<form:input path="dropPriv" id="dropPriv" cssClass="required " maxlength="2" />
		<font color='red'><form:errors path="dropPriv"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=User.ALIAS_RELOAD_PRIV%>:
		</td>		
		<td>
		<form:input path="reloadPriv" id="reloadPriv" cssClass="required " maxlength="2" />
		<font color='red'><form:errors path="reloadPriv"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=User.ALIAS_SHUTDOWN_PRIV%>:
		</td>		
		<td>
		<form:input path="shutdownPriv" id="shutdownPriv" cssClass="required " maxlength="2" />
		<font color='red'><form:errors path="shutdownPriv"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=User.ALIAS_PROCESS_PRIV%>:
		</td>		
		<td>
		<form:input path="processPriv" id="processPriv" cssClass="required " maxlength="2" />
		<font color='red'><form:errors path="processPriv"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=User.ALIAS_FILE_PRIV%>:
		</td>		
		<td>
		<form:input path="filePriv" id="filePriv" cssClass="required " maxlength="2" />
		<font color='red'><form:errors path="filePriv"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=User.ALIAS_GRANT_PRIV%>:
		</td>		
		<td>
		<form:input path="grantPriv" id="grantPriv" cssClass="required " maxlength="2" />
		<font color='red'><form:errors path="grantPriv"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=User.ALIAS_REFERENCES_PRIV%>:
		</td>		
		<td>
		<form:input path="referencesPriv" id="referencesPriv" cssClass="required " maxlength="2" />
		<font color='red'><form:errors path="referencesPriv"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=User.ALIAS_INDEX_PRIV%>:
		</td>		
		<td>
		<form:input path="indexPriv" id="indexPriv" cssClass="required " maxlength="2" />
		<font color='red'><form:errors path="indexPriv"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=User.ALIAS_ALTER_PRIV%>:
		</td>		
		<td>
		<form:input path="alterPriv" id="alterPriv" cssClass="required " maxlength="2" />
		<font color='red'><form:errors path="alterPriv"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=User.ALIAS_SHOW_DB_PRIV%>:
		</td>		
		<td>
		<form:input path="showDbPriv" id="showDbPriv" cssClass="required " maxlength="2" />
		<font color='red'><form:errors path="showDbPriv"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=User.ALIAS_SUPER_PRIV%>:
		</td>		
		<td>
		<form:input path="superPriv" id="superPriv" cssClass="required " maxlength="2" />
		<font color='red'><form:errors path="superPriv"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=User.ALIAS_CREATE_TMP_TABLE_PRIV%>:
		</td>		
		<td>
		<form:input path="createTmpTablePriv" id="createTmpTablePriv" cssClass="required " maxlength="2" />
		<font color='red'><form:errors path="createTmpTablePriv"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=User.ALIAS_LOCK_TABLES_PRIV%>:
		</td>		
		<td>
		<form:input path="lockTablesPriv" id="lockTablesPriv" cssClass="required " maxlength="2" />
		<font color='red'><form:errors path="lockTablesPriv"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=User.ALIAS_EXECUTE_PRIV%>:
		</td>		
		<td>
		<form:input path="executePriv" id="executePriv" cssClass="required " maxlength="2" />
		<font color='red'><form:errors path="executePriv"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=User.ALIAS_REPL_SLAVE_PRIV%>:
		</td>		
		<td>
		<form:input path="replSlavePriv" id="replSlavePriv" cssClass="required " maxlength="2" />
		<font color='red'><form:errors path="replSlavePriv"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=User.ALIAS_REPL_CLIENT_PRIV%>:
		</td>		
		<td>
		<form:input path="replClientPriv" id="replClientPriv" cssClass="required " maxlength="2" />
		<font color='red'><form:errors path="replClientPriv"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=User.ALIAS_SSL_TYPE%>:
		</td>		
		<td>
		<form:input path="sslType" id="sslType" cssClass="required " maxlength="9" />
		<font color='red'><form:errors path="sslType"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=User.ALIAS_SSL_CIPHER%>:
		</td>		
		<td>
		<form:input path="sslCipher" id="sslCipher" cssClass="required " maxlength="65535" />
		<font color='red'><form:errors path="sslCipher"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=User.ALIAS_X509_ISSUER%>:
		</td>		
		<td>
		<form:input path="x509Issuer" id="x509Issuer" cssClass="required " maxlength="65535" />
		<font color='red'><form:errors path="x509Issuer"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=User.ALIAS_X509_SUBJECT%>:
		</td>		
		<td>
		<form:input path="x509Subject" id="x509Subject" cssClass="required " maxlength="65535" />
		<font color='red'><form:errors path="x509Subject"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=User.ALIAS_MAX_QUESTIONS%>:
		</td>		
		<td>
		<form:input path="maxQuestions" id="maxQuestions" cssClass="required validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="maxQuestions"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=User.ALIAS_MAX_UPDATES%>:
		</td>		
		<td>
		<form:input path="maxUpdates" id="maxUpdates" cssClass="required validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="maxUpdates"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=User.ALIAS_MAX_CONNECTIONS%>:
		</td>		
		<td>
		<form:input path="maxConnections" id="maxConnections" cssClass="required validate-integer max-value-2147483647" maxlength="10" />
		<font color='red'><form:errors path="maxConnections"/></font>
		</td>
	</tr>	
	
		