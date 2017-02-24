<%@page import="com.bill99.creditAudit.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<input type="hidden" id="name" name="name" value="${func.name}"/>

	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Func.ALIAS_RET%>:
		</td>		
		<td>
		<form:input path="ret" id="ret" cssClass="required " maxlength="0" />
		<font color='red'><form:errors path="ret"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Func.ALIAS_DL%>:
		</td>		
		<td>
		<form:input path="dl" id="dl" cssClass="required " maxlength="128" />
		<font color='red'><form:errors path="dl"/></font>
		</td>
	</tr>	
	
	<tr>	
		<td class="tdLabel">
			<span class="required">*</span><%=Func.ALIAS_TYPE%>:
		</td>		
		<td>
		<form:input path="type" id="type" cssClass="required " maxlength="9" />
		<font color='red'><form:errors path="type"/></font>
		</td>
	</tr>	
	
		