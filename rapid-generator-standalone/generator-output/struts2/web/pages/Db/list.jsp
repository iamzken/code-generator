<%@page import="com.bill99.creditAudit.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/simpletable" prefix="simpletable"%>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=Db.TABLE_ALIAS%> 维护</title>
	
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
	<form id="queryForm" name="queryForm" action="<c:url value="/pages/Db/list.do"/>" method="get" style="display: inline;">
	<div class="queryPanel">
		<fieldset>
			<legend>搜索</legend>
			<table>
				<tr>	
					<td class="tdLabel"><%=Db.ALIAS_SELECT_PRIV%></td>		
					<td>
						<input value="${query.selectPriv}" id="selectPriv" name="selectPriv" maxlength="2"  class=""/>
					</td>
					<td class="tdLabel"><%=Db.ALIAS_INSERT_PRIV%></td>		
					<td>
						<input value="${query.insertPriv}" id="insertPriv" name="insertPriv" maxlength="2"  class=""/>
					</td>
					<td class="tdLabel"><%=Db.ALIAS_UPDATE_PRIV%></td>		
					<td>
						<input value="${query.updatePriv}" id="updatePriv" name="updatePriv" maxlength="2"  class=""/>
					</td>
					<td class="tdLabel"><%=Db.ALIAS_DELETE_PRIV%></td>		
					<td>
						<input value="${query.deletePriv}" id="deletePriv" name="deletePriv" maxlength="2"  class=""/>
					</td>
				</tr>	
				<tr>	
					<td class="tdLabel"><%=Db.ALIAS_CREATE_PRIV%></td>		
					<td>
						<input value="${query.createPriv}" id="createPriv" name="createPriv" maxlength="2"  class=""/>
					</td>
					<td class="tdLabel"><%=Db.ALIAS_DROP_PRIV%></td>		
					<td>
						<input value="${query.dropPriv}" id="dropPriv" name="dropPriv" maxlength="2"  class=""/>
					</td>
					<td class="tdLabel"><%=Db.ALIAS_GRANT_PRIV%></td>		
					<td>
						<input value="${query.grantPriv}" id="grantPriv" name="grantPriv" maxlength="2"  class=""/>
					</td>
					<td class="tdLabel"><%=Db.ALIAS_REFERENCES_PRIV%></td>		
					<td>
						<input value="${query.referencesPriv}" id="referencesPriv" name="referencesPriv" maxlength="2"  class=""/>
					</td>
				</tr>	
				<tr>	
					<td class="tdLabel"><%=Db.ALIAS_INDEX_PRIV%></td>		
					<td>
						<input value="${query.indexPriv}" id="indexPriv" name="indexPriv" maxlength="2"  class=""/>
					</td>
					<td class="tdLabel"><%=Db.ALIAS_ALTER_PRIV%></td>		
					<td>
						<input value="${query.alterPriv}" id="alterPriv" name="alterPriv" maxlength="2"  class=""/>
					</td>
					<td class="tdLabel"><%=Db.ALIAS_CREATE_TMP_TABLE_PRIV%></td>		
					<td>
						<input value="${query.createTmpTablePriv}" id="createTmpTablePriv" name="createTmpTablePriv" maxlength="2"  class=""/>
					</td>
					<td class="tdLabel"><%=Db.ALIAS_LOCK_TABLES_PRIV%></td>		
					<td>
						<input value="${query.lockTablesPriv}" id="lockTablesPriv" name="lockTablesPriv" maxlength="2"  class=""/>
					</td>
				</tr>	
			</table>
		</fieldset>
		<div class="handleControl">
			<input type="submit" class="stdButton" style="width:80px" value="查询" onclick="getReferenceForm(this).action='${ctx}/pages/Db/list.do'"/>
			<input type="submit" class="stdButton" style="width:80px" value="新增" onclick="getReferenceForm(this).action='${ctx}/pages/Db/create.do'"/>
			<input type="button" class="stdButton" style="width:80px" value="删除" onclick="batchDelete('${ctx}/pages/Db/delete.do','items',document.forms.queryForm)"/>
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
				<th sortColumn="Host" ><%=Db.ALIAS_HOST%></th>
				<th sortColumn="Db" ><%=Db.ALIAS_DB%></th>
				<th sortColumn="User" ><%=Db.ALIAS_USER%></th>
				<th sortColumn="Select_priv" ><%=Db.ALIAS_SELECT_PRIV%></th>
				<th sortColumn="Insert_priv" ><%=Db.ALIAS_INSERT_PRIV%></th>
				<th sortColumn="Update_priv" ><%=Db.ALIAS_UPDATE_PRIV%></th>
				<th sortColumn="Delete_priv" ><%=Db.ALIAS_DELETE_PRIV%></th>
				<th sortColumn="Create_priv" ><%=Db.ALIAS_CREATE_PRIV%></th>
				<th sortColumn="Drop_priv" ><%=Db.ALIAS_DROP_PRIV%></th>
				<th sortColumn="Grant_priv" ><%=Db.ALIAS_GRANT_PRIV%></th>
				<th sortColumn="References_priv" ><%=Db.ALIAS_REFERENCES_PRIV%></th>
				<th sortColumn="Index_priv" ><%=Db.ALIAS_INDEX_PRIV%></th>
				<th sortColumn="Alter_priv" ><%=Db.ALIAS_ALTER_PRIV%></th>
				<th sortColumn="Create_tmp_table_priv" ><%=Db.ALIAS_CREATE_TMP_TABLE_PRIV%></th>
				<th sortColumn="Lock_tables_priv" ><%=Db.ALIAS_LOCK_TABLES_PRIV%></th>
	
				<th>操作</th>
			  </tr>
			  
		  </thead>
		  <tbody>
		  	  <c:forEach items="${page.result}" var="item" varStatus="status">
		  	  
			  <tr class="${status.count % 2 == 0 ? 'odd' : 'even'}">
				<td>${page.thisPageFirstElementNumber + status.index}</td>
				<td><input type="checkbox" name="items" value="host=${item.id.host}&db=${item.id.db}&user=${item.id.user}&"></td>
				
				<td><c:out value='${item.host}'/>&nbsp;</td>
				<td><c:out value='${item.db}'/>&nbsp;</td>
				<td><c:out value='${item.user}'/>&nbsp;</td>
				<td><c:out value='${item.selectPriv}'/>&nbsp;</td>
				<td><c:out value='${item.insertPriv}'/>&nbsp;</td>
				<td><c:out value='${item.updatePriv}'/>&nbsp;</td>
				<td><c:out value='${item.deletePriv}'/>&nbsp;</td>
				<td><c:out value='${item.createPriv}'/>&nbsp;</td>
				<td><c:out value='${item.dropPriv}'/>&nbsp;</td>
				<td><c:out value='${item.grantPriv}'/>&nbsp;</td>
				<td><c:out value='${item.referencesPriv}'/>&nbsp;</td>
				<td><c:out value='${item.indexPriv}'/>&nbsp;</td>
				<td><c:out value='${item.alterPriv}'/>&nbsp;</td>
				<td><c:out value='${item.createTmpTablePriv}'/>&nbsp;</td>
				<td><c:out value='${item.lockTablesPriv}'/>&nbsp;</td>
				<td>
					<a href="${ctx}/pages/Db/show.do?host=${item.id.host}&db=${item.id.db}&user=${item.id.user}&">查看</a>&nbsp;&nbsp;&nbsp;
					<a href="${ctx}/pages/Db/edit.do?host=${item.id.host}&db=${item.id.db}&user=${item.id.user}&">修改</a>
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

