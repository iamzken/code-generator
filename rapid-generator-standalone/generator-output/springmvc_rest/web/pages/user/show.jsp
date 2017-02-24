<%@page import="com.bill99.creditAudit.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=User.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<form:form modelAttribute="user"  >
		<input type="button" value="返回列表" onclick="window.location='${ctx}/user'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<input type="hidden" id="host" name="host" value="${user.host}"/>
		<input type="hidden" id="user" name="user" value="${user.user}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_HOST%></td>	
				<td><c:out value='${user.host}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_USER%></td>	
				<td><c:out value='${user.user}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_PASSWORD%></td>	
				<td><c:out value='${user.password}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_SELECT_PRIV%></td>	
				<td><c:out value='${user.selectPriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_INSERT_PRIV%></td>	
				<td><c:out value='${user.insertPriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_UPDATE_PRIV%></td>	
				<td><c:out value='${user.updatePriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_DELETE_PRIV%></td>	
				<td><c:out value='${user.deletePriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_CREATE_PRIV%></td>	
				<td><c:out value='${user.createPriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_DROP_PRIV%></td>	
				<td><c:out value='${user.dropPriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_RELOAD_PRIV%></td>	
				<td><c:out value='${user.reloadPriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_SHUTDOWN_PRIV%></td>	
				<td><c:out value='${user.shutdownPriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_PROCESS_PRIV%></td>	
				<td><c:out value='${user.processPriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_FILE_PRIV%></td>	
				<td><c:out value='${user.filePriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_GRANT_PRIV%></td>	
				<td><c:out value='${user.grantPriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_REFERENCES_PRIV%></td>	
				<td><c:out value='${user.referencesPriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_INDEX_PRIV%></td>	
				<td><c:out value='${user.indexPriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_ALTER_PRIV%></td>	
				<td><c:out value='${user.alterPriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_SHOW_DB_PRIV%></td>	
				<td><c:out value='${user.showDbPriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_SUPER_PRIV%></td>	
				<td><c:out value='${user.superPriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_CREATE_TMP_TABLE_PRIV%></td>	
				<td><c:out value='${user.createTmpTablePriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_LOCK_TABLES_PRIV%></td>	
				<td><c:out value='${user.lockTablesPriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_EXECUTE_PRIV%></td>	
				<td><c:out value='${user.executePriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_REPL_SLAVE_PRIV%></td>	
				<td><c:out value='${user.replSlavePriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_REPL_CLIENT_PRIV%></td>	
				<td><c:out value='${user.replClientPriv}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_SSL_TYPE%></td>	
				<td><c:out value='${user.sslType}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_SSL_CIPHER%></td>	
				<td><c:out value='${user.sslCipher}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_X509_ISSUER%></td>	
				<td><c:out value='${user.x509Issuer}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_X509_SUBJECT%></td>	
				<td><c:out value='${user.x509Subject}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_MAX_QUESTIONS%></td>	
				<td><c:out value='${user.maxQuestions}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_MAX_UPDATES%></td>	
				<td><c:out value='${user.maxUpdates}'/></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_MAX_CONNECTIONS%></td>	
				<td><c:out value='${user.maxConnections}'/></td>
			</tr>
		</table>
	</form:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>