<%@page import="com.bill99.creditAudit.model.*" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/commons/taglibs.jsp" %>

	<s:hidden id="name" name="name" />

<!-- ONGL access static field: @package.class@field or @vs@field -->
	
	<s:textfield label="%{@com.bill99.creditAudit.model.Func@ALIAS_RET}" key="ret" value="%{model.ret}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.Func@ALIAS_DL}" key="dl" value="%{model.dl}" cssClass="required " required="true" />
	
	
	<s:textfield label="%{@com.bill99.creditAudit.model.Func@ALIAS_TYPE}" key="type" value="%{model.type}" cssClass="required " required="true" />
	
