<%@page import="com.bill99.creditAudit.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=User.TABLE_ALIAS%>信息</title>
</rapid:override>

<rapid:override name="content">
	<s:form action="/pages/User/list.do" method="get" theme="simple">
		<input type="button" value="返回列表" onclick="window.location='${ctx}/pages/User/list.do'"/>
		<input type="button" value="后退" onclick="history.back();"/>
		
		<s:hidden name="host" id="host" value="%{model.host}"/>
		<s:hidden name="user" id="user" value="%{model.user}"/>
	
		<table class="formTable">
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_HOST%></td>	
				<td><s:property value="%{model.host}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_USER%></td>	
				<td><s:property value="%{model.user}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_PASSWORD%></td>	
				<td><s:property value="%{model.password}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_SELECT_PRIV%></td>	
				<td><s:property value="%{model.selectPriv}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_INSERT_PRIV%></td>	
				<td><s:property value="%{model.insertPriv}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_UPDATE_PRIV%></td>	
				<td><s:property value="%{model.updatePriv}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_DELETE_PRIV%></td>	
				<td><s:property value="%{model.deletePriv}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_CREATE_PRIV%></td>	
				<td><s:property value="%{model.createPriv}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_DROP_PRIV%></td>	
				<td><s:property value="%{model.dropPriv}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_RELOAD_PRIV%></td>	
				<td><s:property value="%{model.reloadPriv}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_SHUTDOWN_PRIV%></td>	
				<td><s:property value="%{model.shutdownPriv}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_PROCESS_PRIV%></td>	
				<td><s:property value="%{model.processPriv}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_FILE_PRIV%></td>	
				<td><s:property value="%{model.filePriv}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_GRANT_PRIV%></td>	
				<td><s:property value="%{model.grantPriv}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_REFERENCES_PRIV%></td>	
				<td><s:property value="%{model.referencesPriv}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_INDEX_PRIV%></td>	
				<td><s:property value="%{model.indexPriv}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_ALTER_PRIV%></td>	
				<td><s:property value="%{model.alterPriv}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_SHOW_DB_PRIV%></td>	
				<td><s:property value="%{model.showDbPriv}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_SUPER_PRIV%></td>	
				<td><s:property value="%{model.superPriv}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_CREATE_TMP_TABLE_PRIV%></td>	
				<td><s:property value="%{model.createTmpTablePriv}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_LOCK_TABLES_PRIV%></td>	
				<td><s:property value="%{model.lockTablesPriv}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_EXECUTE_PRIV%></td>	
				<td><s:property value="%{model.executePriv}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_REPL_SLAVE_PRIV%></td>	
				<td><s:property value="%{model.replSlavePriv}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_REPL_CLIENT_PRIV%></td>	
				<td><s:property value="%{model.replClientPriv}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_SSL_TYPE%></td>	
				<td><s:property value="%{model.sslType}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_SSL_CIPHER%></td>	
				<td><s:property value="%{model.sslCipher}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_X509_ISSUER%></td>	
				<td><s:property value="%{model.x509Issuer}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_X509_SUBJECT%></td>	
				<td><s:property value="%{model.x509Subject}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_MAX_QUESTIONS%></td>	
				<td><s:property value="%{model.maxQuestions}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_MAX_UPDATES%></td>	
				<td><s:property value="%{model.maxUpdates}" /></td>
			</tr>
			<tr>	
				<td class="tdLabel"><%=User.ALIAS_MAX_CONNECTIONS%></td>	
				<td><s:property value="%{model.maxConnections}" /></td>
			</tr>
		</table>
	</s:form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>