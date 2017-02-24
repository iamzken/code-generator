<%@page import="com.bill99.creditAudit.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/simpletable" prefix="simpletable"%>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=TablesPriv.TABLE_ALIAS%> 维护</title>
	
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
	<form id="queryForm" name="queryForm" action="<c:url value="/pages/TablesPriv/list.do"/>" method="get" style="display: inline;">
	<div class="queryPanel">
		<fieldset>
			<legend>搜索</legend>
			<table>
				<tr>	
					<td class="tdLabel"><%=TablesPriv.ALIAS_GRANTOR%></td>		
					<td>
						<input value="${query.grantor}" id="grantor" name="grantor" maxlength="77"  class=""/>
					</td>
					<td class="tdLabel"><%=TablesPriv.ALIAS_TIMESTAMP%></td>		
					<td>
						<input value="<fmt:formatDate value='${query.timestampBegin}' pattern='<%=TablesPriv.FORMAT_TIMESTAMP%>'/>" onclick="WdatePicker({dateFmt:'<%=TablesPriv.FORMAT_TIMESTAMP%>'})" id="timestampBegin" name="timestampBegin"   />
						<input value="<fmt:formatDate value='${query.timestampEnd}' pattern='<%=TablesPriv.FORMAT_TIMESTAMP%>'/>" onclick="WdatePicker({dateFmt:'<%=TablesPriv.FORMAT_TIMESTAMP%>'})" id="timestampEnd" name="timestampEnd"   />
					</td>
					<td class="tdLabel"><%=TablesPriv.ALIAS_TABLE_PRIV%></td>		
					<td>
						<input value="${query.tablePriv}" id="tablePriv" name="tablePriv" maxlength="62"  class=""/>
					</td>
					<td class="tdLabel"><%=TablesPriv.ALIAS_COLUMN_PRIV%></td>		
					<td>
						<input value="${query.columnPriv}" id="columnPriv" name="columnPriv" maxlength="31"  class=""/>
					</td>
				</tr>	
			</table>
		</fieldset>
		<div class="handleControl">
			<input type="submit" class="stdButton" style="width:80px" value="查询" onclick="getReferenceForm(this).action='${ctx}/pages/TablesPriv/list.do'"/>
			<input type="submit" class="stdButton" style="width:80px" value="新增" onclick="getReferenceForm(this).action='${ctx}/pages/TablesPriv/create.do'"/>
			<input type="button" class="stdButton" style="width:80px" value="删除" onclick="batchDelete('${ctx}/pages/TablesPriv/delete.do','items',document.forms.queryForm)"/>
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
				<th sortColumn="Host" ><%=TablesPriv.ALIAS_HOST%></th>
				<th sortColumn="Db" ><%=TablesPriv.ALIAS_DB%></th>
				<th sortColumn="User" ><%=TablesPriv.ALIAS_USER%></th>
				<th sortColumn="Table_name" ><%=TablesPriv.ALIAS_TABLE_NAME%></th>
				<th sortColumn="Grantor" ><%=TablesPriv.ALIAS_GRANTOR%></th>
				<th sortColumn="Timestamp" ><%=TablesPriv.ALIAS_TIMESTAMP%></th>
				<th sortColumn="Table_priv" ><%=TablesPriv.ALIAS_TABLE_PRIV%></th>
				<th sortColumn="Column_priv" ><%=TablesPriv.ALIAS_COLUMN_PRIV%></th>
	
				<th>操作</th>
			  </tr>
			  
		  </thead>
		  <tbody>
		  	  <c:forEach items="${page.result}" var="item" varStatus="status">
		  	  
			  <tr class="${status.count % 2 == 0 ? 'odd' : 'even'}">
				<td>${page.thisPageFirstElementNumber + status.index}</td>
				<td><input type="checkbox" name="items" value="host=${item.id.host}&db=${item.id.db}&user=${item.id.user}&tableName=${item.id.tableName}&"></td>
				
				<td><c:out value='${item.host}'/>&nbsp;</td>
				<td><c:out value='${item.db}'/>&nbsp;</td>
				<td><c:out value='${item.user}'/>&nbsp;</td>
				<td><c:out value='${item.tableName}'/>&nbsp;</td>
				<td><c:out value='${item.grantor}'/>&nbsp;</td>
				<td><c:out value='${item.timestampString}'/>&nbsp;</td>
				<td><c:out value='${item.tablePriv}'/>&nbsp;</td>
				<td><c:out value='${item.columnPriv}'/>&nbsp;</td>
				<td>
					<a href="${ctx}/pages/TablesPriv/show.do?host=${item.id.host}&db=${item.id.db}&user=${item.id.user}&tableName=${item.id.tableName}&">查看</a>&nbsp;&nbsp;&nbsp;
					<a href="${ctx}/pages/TablesPriv/edit.do?host=${item.id.host}&db=${item.id.db}&user=${item.id.user}&tableName=${item.id.tableName}&">修改</a>
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

