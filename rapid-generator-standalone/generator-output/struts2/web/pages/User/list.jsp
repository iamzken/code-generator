<%@page import="com.bill99.creditAudit.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/simpletable" prefix="simpletable"%>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=User.TABLE_ALIAS%> 维护</title>
	
	<link href="<c:url value="/widgets/simpletable/simpletable.css"/>" type="text/css" rel="stylesheet">
	<script type="text/javascript" src="<c:url value="/widgets/simpletable/simpletable.js"/>"></script>
	
	<script type="text/javascript" >
		$(document).ready(function() {
			// 分页需要依赖的初始化动作
			window.simpleTable = new SimpleTable('queryForm',${page.thisPageNumber},${page.pageSize},'${pageRequest.sortColumns}');
		});
	</script>
</rapid:override>

<rapid:override name="content">
	<form id="queryForm" name="queryForm" action="<c:url value="/pages/User/list.do"/>" method="get" style="display: inline;">
	<div class="queryPanel">
		<fieldset>
			<legend>搜索</legend>
			<table>
				<tr>	
					<td class="tdLabel"><%=User.ALIAS_PASSWORD%></td>		
					<td>
						<input value="${query.password}" id="password" name="password" maxlength="16"  class=""/>
					</td>
					<td class="tdLabel"><%=User.ALIAS_SELECT_PRIV%></td>		
					<td>
						<input value="${query.selectPriv}" id="selectPriv" name="selectPriv" maxlength="2"  class=""/>
					</td>
					<td class="tdLabel"><%=User.ALIAS_INSERT_PRIV%></td>		
					<td>
						<input value="${query.insertPriv}" id="insertPriv" name="insertPriv" maxlength="2"  class=""/>
					</td>
					<td class="tdLabel"><%=User.ALIAS_UPDATE_PRIV%></td>		
					<td>
						<input value="${query.updatePriv}" id="updatePriv" name="updatePriv" maxlength="2"  class=""/>
					</td>
				</tr>	
				<tr>	
					<td class="tdLabel"><%=User.ALIAS_DELETE_PRIV%></td>		
					<td>
						<input value="${query.deletePriv}" id="deletePriv" name="deletePriv" maxlength="2"  class=""/>
					</td>
					<td class="tdLabel"><%=User.ALIAS_CREATE_PRIV%></td>		
					<td>
						<input value="${query.createPriv}" id="createPriv" name="createPriv" maxlength="2"  class=""/>
					</td>
					<td class="tdLabel"><%=User.ALIAS_DROP_PRIV%></td>		
					<td>
						<input value="${query.dropPriv}" id="dropPriv" name="dropPriv" maxlength="2"  class=""/>
					</td>
					<td class="tdLabel"><%=User.ALIAS_RELOAD_PRIV%></td>		
					<td>
						<input value="${query.reloadPriv}" id="reloadPriv" name="reloadPriv" maxlength="2"  class=""/>
					</td>
				</tr>	
				<tr>	
					<td class="tdLabel"><%=User.ALIAS_SHUTDOWN_PRIV%></td>		
					<td>
						<input value="${query.shutdownPriv}" id="shutdownPriv" name="shutdownPriv" maxlength="2"  class=""/>
					</td>
					<td class="tdLabel"><%=User.ALIAS_PROCESS_PRIV%></td>		
					<td>
						<input value="${query.processPriv}" id="processPriv" name="processPriv" maxlength="2"  class=""/>
					</td>
					<td class="tdLabel"><%=User.ALIAS_FILE_PRIV%></td>		
					<td>
						<input value="${query.filePriv}" id="filePriv" name="filePriv" maxlength="2"  class=""/>
					</td>
					<td class="tdLabel"><%=User.ALIAS_GRANT_PRIV%></td>		
					<td>
						<input value="${query.grantPriv}" id="grantPriv" name="grantPriv" maxlength="2"  class=""/>
					</td>
				</tr>	
				<tr>	
					<td class="tdLabel"><%=User.ALIAS_REFERENCES_PRIV%></td>		
					<td>
						<input value="${query.referencesPriv}" id="referencesPriv" name="referencesPriv" maxlength="2"  class=""/>
					</td>
					<td class="tdLabel"><%=User.ALIAS_INDEX_PRIV%></td>		
					<td>
						<input value="${query.indexPriv}" id="indexPriv" name="indexPriv" maxlength="2"  class=""/>
					</td>
					<td class="tdLabel"><%=User.ALIAS_ALTER_PRIV%></td>		
					<td>
						<input value="${query.alterPriv}" id="alterPriv" name="alterPriv" maxlength="2"  class=""/>
					</td>
					<td class="tdLabel"><%=User.ALIAS_SHOW_DB_PRIV%></td>		
					<td>
						<input value="${query.showDbPriv}" id="showDbPriv" name="showDbPriv" maxlength="2"  class=""/>
					</td>
				</tr>	
				<tr>	
					<td class="tdLabel"><%=User.ALIAS_SUPER_PRIV%></td>		
					<td>
						<input value="${query.superPriv}" id="superPriv" name="superPriv" maxlength="2"  class=""/>
					</td>
					<td class="tdLabel"><%=User.ALIAS_CREATE_TMP_TABLE_PRIV%></td>		
					<td>
						<input value="${query.createTmpTablePriv}" id="createTmpTablePriv" name="createTmpTablePriv" maxlength="2"  class=""/>
					</td>
					<td class="tdLabel"><%=User.ALIAS_LOCK_TABLES_PRIV%></td>		
					<td>
						<input value="${query.lockTablesPriv}" id="lockTablesPriv" name="lockTablesPriv" maxlength="2"  class=""/>
					</td>
					<td class="tdLabel"><%=User.ALIAS_EXECUTE_PRIV%></td>		
					<td>
						<input value="${query.executePriv}" id="executePriv" name="executePriv" maxlength="2"  class=""/>
					</td>
				</tr>	
				<tr>	
					<td class="tdLabel"><%=User.ALIAS_REPL_SLAVE_PRIV%></td>		
					<td>
						<input value="${query.replSlavePriv}" id="replSlavePriv" name="replSlavePriv" maxlength="2"  class=""/>
					</td>
					<td class="tdLabel"><%=User.ALIAS_REPL_CLIENT_PRIV%></td>		
					<td>
						<input value="${query.replClientPriv}" id="replClientPriv" name="replClientPriv" maxlength="2"  class=""/>
					</td>
					<td class="tdLabel"><%=User.ALIAS_SSL_TYPE%></td>		
					<td>
						<input value="${query.sslType}" id="sslType" name="sslType" maxlength="9"  class=""/>
					</td>
					<td class="tdLabel"><%=User.ALIAS_SSL_CIPHER%></td>		
					<td>
						<input value="${query.sslCipher}" id="sslCipher" name="sslCipher" maxlength="65535"  class=""/>
					</td>
				</tr>	
				<tr>	
					<td class="tdLabel"><%=User.ALIAS_X509_ISSUER%></td>		
					<td>
						<input value="${query.x509Issuer}" id="x509Issuer" name="x509Issuer" maxlength="65535"  class=""/>
					</td>
					<td class="tdLabel"><%=User.ALIAS_X509_SUBJECT%></td>		
					<td>
						<input value="${query.x509Subject}" id="x509Subject" name="x509Subject" maxlength="65535"  class=""/>
					</td>
					<td class="tdLabel"><%=User.ALIAS_MAX_QUESTIONS%></td>		
					<td>
						<input value="${query.maxQuestions}" id="maxQuestions" name="maxQuestions" maxlength="10"  class="validate-integer max-value-2147483647"/>
					</td>
					<td class="tdLabel"><%=User.ALIAS_MAX_UPDATES%></td>		
					<td>
						<input value="${query.maxUpdates}" id="maxUpdates" name="maxUpdates" maxlength="10"  class="validate-integer max-value-2147483647"/>
					</td>
				</tr>	
				<tr>	
					<td class="tdLabel"><%=User.ALIAS_MAX_CONNECTIONS%></td>		
					<td>
						<input value="${query.maxConnections}" id="maxConnections" name="maxConnections" maxlength="10"  class="validate-integer max-value-2147483647"/>
					</td>
				</tr>	
			</table>
		</fieldset>
		<div class="handleControl">
			<input type="submit" class="stdButton" style="width:80px" value="查询" onclick="getReferenceForm(this).action='${ctx}/pages/User/list.do'"/>
			<input type="submit" class="stdButton" style="width:80px" value="新增" onclick="getReferenceForm(this).action='${ctx}/pages/User/create.do'"/>
			<input type="button" class="stdButton" style="width:80px" value="删除" onclick="batchDelete('${ctx}/pages/User/delete.do','items',document.forms.queryForm)"/>
		<div>
	</div>
	
	<div class="gridTable">
	
		<simpletable:pageToolbar page="${page}">
		显示在这里是为了提示你如何自定义表头,可修改模板删除此行
		</simpletable:pageToolbar>
	
		<table width="100%"  border="0" cellspacing="0" class="gridBody">
		  <thead>
			  
			  <tr>
				<th style="width:1px;"> </th>
				<th style="width:1px;"><input type="checkbox" onclick="setAllCheckboxState('items',this.checked)"></th>
				
				<!-- 排序时为th增加sortColumn即可,new SimpleTable('sortColumns')会为tableHeader自动增加排序功能; -->
				<th sortColumn="Host" ><%=User.ALIAS_HOST%></th>
				<th sortColumn="User" ><%=User.ALIAS_USER%></th>
				<th sortColumn="password" ><%=User.ALIAS_PASSWORD%></th>
				<th sortColumn="Select_priv" ><%=User.ALIAS_SELECT_PRIV%></th>
				<th sortColumn="Insert_priv" ><%=User.ALIAS_INSERT_PRIV%></th>
				<th sortColumn="Update_priv" ><%=User.ALIAS_UPDATE_PRIV%></th>
				<th sortColumn="Delete_priv" ><%=User.ALIAS_DELETE_PRIV%></th>
				<th sortColumn="Create_priv" ><%=User.ALIAS_CREATE_PRIV%></th>
				<th sortColumn="Drop_priv" ><%=User.ALIAS_DROP_PRIV%></th>
				<th sortColumn="Reload_priv" ><%=User.ALIAS_RELOAD_PRIV%></th>
				<th sortColumn="Shutdown_priv" ><%=User.ALIAS_SHUTDOWN_PRIV%></th>
				<th sortColumn="Process_priv" ><%=User.ALIAS_PROCESS_PRIV%></th>
				<th sortColumn="File_priv" ><%=User.ALIAS_FILE_PRIV%></th>
				<th sortColumn="Grant_priv" ><%=User.ALIAS_GRANT_PRIV%></th>
				<th sortColumn="References_priv" ><%=User.ALIAS_REFERENCES_PRIV%></th>
				<th sortColumn="Index_priv" ><%=User.ALIAS_INDEX_PRIV%></th>
				<th sortColumn="Alter_priv" ><%=User.ALIAS_ALTER_PRIV%></th>
				<th sortColumn="Show_db_priv" ><%=User.ALIAS_SHOW_DB_PRIV%></th>
				<th sortColumn="Super_priv" ><%=User.ALIAS_SUPER_PRIV%></th>
				<th sortColumn="Create_tmp_table_priv" ><%=User.ALIAS_CREATE_TMP_TABLE_PRIV%></th>
				<th sortColumn="Lock_tables_priv" ><%=User.ALIAS_LOCK_TABLES_PRIV%></th>
				<th sortColumn="Execute_priv" ><%=User.ALIAS_EXECUTE_PRIV%></th>
				<th sortColumn="Repl_slave_priv" ><%=User.ALIAS_REPL_SLAVE_PRIV%></th>
				<th sortColumn="Repl_client_priv" ><%=User.ALIAS_REPL_CLIENT_PRIV%></th>
				<th sortColumn="ssl_type" ><%=User.ALIAS_SSL_TYPE%></th>
				<th sortColumn="ssl_cipher" ><%=User.ALIAS_SSL_CIPHER%></th>
				<th sortColumn="x509_issuer" ><%=User.ALIAS_X509_ISSUER%></th>
				<th sortColumn="x509_subject" ><%=User.ALIAS_X509_SUBJECT%></th>
				<th sortColumn="max_questions" ><%=User.ALIAS_MAX_QUESTIONS%></th>
				<th sortColumn="max_updates" ><%=User.ALIAS_MAX_UPDATES%></th>
				<th sortColumn="max_connections" ><%=User.ALIAS_MAX_CONNECTIONS%></th>
	
				<th>操作</th>
			  </tr>
			  
		  </thead>
		  <tbody>
		  	  <c:forEach items="${page.result}" var="item" varStatus="status">
		  	  
			  <tr class="${status.count % 2 == 0 ? 'odd' : 'even'}">
				<td>${page.thisPageFirstElementNumber + status.index}</td>
				<td><input type="checkbox" name="items" value="host=${item.id.host}&user=${item.id.user}&"></td>
				
				<td><c:out value='${item.host}'/>&nbsp;</td>
				<td><c:out value='${item.user}'/>&nbsp;</td>
				<td><c:out value='${item.password}'/>&nbsp;</td>
				<td><c:out value='${item.selectPriv}'/>&nbsp;</td>
				<td><c:out value='${item.insertPriv}'/>&nbsp;</td>
				<td><c:out value='${item.updatePriv}'/>&nbsp;</td>
				<td><c:out value='${item.deletePriv}'/>&nbsp;</td>
				<td><c:out value='${item.createPriv}'/>&nbsp;</td>
				<td><c:out value='${item.dropPriv}'/>&nbsp;</td>
				<td><c:out value='${item.reloadPriv}'/>&nbsp;</td>
				<td><c:out value='${item.shutdownPriv}'/>&nbsp;</td>
				<td><c:out value='${item.processPriv}'/>&nbsp;</td>
				<td><c:out value='${item.filePriv}'/>&nbsp;</td>
				<td><c:out value='${item.grantPriv}'/>&nbsp;</td>
				<td><c:out value='${item.referencesPriv}'/>&nbsp;</td>
				<td><c:out value='${item.indexPriv}'/>&nbsp;</td>
				<td><c:out value='${item.alterPriv}'/>&nbsp;</td>
				<td><c:out value='${item.showDbPriv}'/>&nbsp;</td>
				<td><c:out value='${item.superPriv}'/>&nbsp;</td>
				<td><c:out value='${item.createTmpTablePriv}'/>&nbsp;</td>
				<td><c:out value='${item.lockTablesPriv}'/>&nbsp;</td>
				<td><c:out value='${item.executePriv}'/>&nbsp;</td>
				<td><c:out value='${item.replSlavePriv}'/>&nbsp;</td>
				<td><c:out value='${item.replClientPriv}'/>&nbsp;</td>
				<td><c:out value='${item.sslType}'/>&nbsp;</td>
				<td><c:out value='${item.sslCipher}'/>&nbsp;</td>
				<td><c:out value='${item.x509Issuer}'/>&nbsp;</td>
				<td><c:out value='${item.x509Subject}'/>&nbsp;</td>
				<td><c:out value='${item.maxQuestions}'/>&nbsp;</td>
				<td><c:out value='${item.maxUpdates}'/>&nbsp;</td>
				<td><c:out value='${item.maxConnections}'/>&nbsp;</td>
				<td>
					<a href="${ctx}/pages/User/show.do?host=${item.id.host}&user=${item.id.user}&">查看</a>&nbsp;&nbsp;&nbsp;
					<a href="${ctx}/pages/User/edit.do?host=${item.id.host}&user=${item.id.user}&">修改</a>
				</td>
			  </tr>
			  
		  	  </c:forEach>
		  </tbody>
		</table>
	
		<simpletable:pageToolbar page="${page}">
		显示在这里是为了提示你如何自定义表头,可修改模板删除此行
		</simpletable:pageToolbar>
	</div>
	</form>
</rapid:override>

<%-- jsp模板继承,具体使用请查看: http://code.google.com/p/rapid-framework/wiki/rapid_jsp_extends --%>
<%@ include file="base.jsp" %>

