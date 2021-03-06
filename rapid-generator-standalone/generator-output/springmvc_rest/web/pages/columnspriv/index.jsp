<%@page import="com.bill99.creditAudit.model.*" %>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib tagdir="/WEB-INF/tags/simpletable" prefix="simpletable"%>
<%@ include file="/commons/taglibs.jsp" %>

<rapid:override name="head">
	<title><%=ColumnsPriv.TABLE_ALIAS%> 维护</title>
	
	<script src="${ctx}/scripts/rest.js" ></script>
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
	<form id="queryForm" name="queryForm" method="get" style="display: inline;">
	<div class="queryPanel">
		<fieldset>
			<legend>搜索</legend>
			<table>
				<tr>	
					<td class="tdLabel"><%=ColumnsPriv.ALIAS_TIMESTAMP%></td>		
					<td>
						<input value="<fmt:formatDate value='${query.timestampBegin}' pattern='<%=ColumnsPriv.FORMAT_TIMESTAMP%>'/>" onclick="WdatePicker({dateFmt:'<%=ColumnsPriv.FORMAT_TIMESTAMP%>'})" id="timestampBegin" name="timestampBegin"   />
						<input value="<fmt:formatDate value='${query.timestampEnd}' pattern='<%=ColumnsPriv.FORMAT_TIMESTAMP%>'/>" onclick="WdatePicker({dateFmt:'<%=ColumnsPriv.FORMAT_TIMESTAMP%>'})" id="timestampEnd" name="timestampEnd"   />
					</td>
					<td class="tdLabel"><%=ColumnsPriv.ALIAS_COLUMN_PRIV%></td>		
					<td>
						<input value="${query.columnPriv}" id="columnPriv" name="columnPriv" maxlength="31"  class=""/>
					</td>
				</tr>	
			</table>
		</fieldset>
		<div class="handleControl">
			<input type="submit" class="stdButton" style="width:80px" value="查询" onclick="getReferenceForm(this).action='${ctx}/columnspriv'"/>
			<input type="button" class="stdButton" style="width:80px" value="新增" onclick="window.location = '${ctx}/columnspriv/new'"/>
			<input type="button" class="stdButton" style="width:80px" value="删除" onclick="doRestBatchDelete('${ctx}/columnspriv','items',document.forms.queryForm)"/>
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
				<th sortColumn="Host" ><%=ColumnsPriv.ALIAS_HOST%></th>
				<th sortColumn="Db" ><%=ColumnsPriv.ALIAS_DB%></th>
				<th sortColumn="User" ><%=ColumnsPriv.ALIAS_USER%></th>
				<th sortColumn="Table_name" ><%=ColumnsPriv.ALIAS_TABLE_NAME%></th>
				<th sortColumn="Column_name" ><%=ColumnsPriv.ALIAS_COLUMN_NAME%></th>
				<th sortColumn="Timestamp" ><%=ColumnsPriv.ALIAS_TIMESTAMP%></th>
				<th sortColumn="Column_priv" ><%=ColumnsPriv.ALIAS_COLUMN_PRIV%></th>
	
				<th>操作</th>
			  </tr>
			  
		  </thead>
		  <tbody>
		  	  <c:forEach items="${page.result}" var="item" varStatus="status">
		  	  
			  <tr class="${status.count % 2 == 0 ? 'odd' : 'even'}">
				<td>${page.thisPageFirstElementNumber + status.index}</td>
				<td><input type="checkbox" name="items" value="${item.host}"></td>
				
				<td><c:out value='${item.host}'/>&nbsp;</td>
				<td><c:out value='${item.db}'/>&nbsp;</td>
				<td><c:out value='${item.user}'/>&nbsp;</td>
				<td><c:out value='${item.tableName}'/>&nbsp;</td>
				<td><c:out value='${item.columnName}'/>&nbsp;</td>
				<td><c:out value='${item.timestampString}'/>&nbsp;</td>
				<td><c:out value='${item.columnPriv}'/>&nbsp;</td>
				<td>
					<a href="${ctx}/columnspriv/${item.host}">查看</a>&nbsp;&nbsp;
					<a href="${ctx}/columnspriv/${item.host}/edit">修改</a>&nbsp;&nbsp;
					<a href="${ctx}/columnspriv/${item.host}" onclick="doRestDelete(this,'你确认删除?');return false;">删除</a>
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
