/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2017
 */

package com.bill99.creditAudit.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.org.rapid_framework.beanutils.BeanUtils;
import cn.org.rapid_framework.web.scope.Flash;

import com.opensymphony.xwork2.Preparable;
import com.opensymphony.xwork2.ModelDriven;

import java.util.*;

import javacommon.base.*;
import javacommon.util.*;

import cn.org.rapid_framework.util.*;
import cn.org.rapid_framework.web.util.*;
import cn.org.rapid_framework.page.*;
import cn.org.rapid_framework.page.impl.*;

import com.bill99.creditAudit.model.*;
import com.bill99.creditAudit.dao.*;
import com.bill99.creditAudit.service.*;
import com.bill99.creditAudit.vo.query.*;

/**
 * @author badqiu email:badqiu(a)gmail.com
 * @version 1.0
 * @since 1.0
 */


public class ColumnsPrivAction extends BaseStruts2Action implements Preparable,ModelDriven{
	//默认多列排序,example: username desc,createTime asc
	protected static final String DEFAULT_SORT_COLUMNS = null; 
	
	//forward paths
	protected static final String QUERY_JSP = "/pages/ColumnsPriv/query.jsp";
	protected static final String LIST_JSP= "/pages/ColumnsPriv/list.jsp";
	protected static final String CREATE_JSP = "/pages/ColumnsPriv/create.jsp";
	protected static final String EDIT_JSP = "/pages/ColumnsPriv/edit.jsp";
	protected static final String SHOW_JSP = "/pages/ColumnsPriv/show.jsp";
	//redirect paths,startWith: !
	protected static final String LIST_ACTION = "!/pages/ColumnsPriv/list.do";
	
	private ColumnsPrivManager columnsPrivManager;
	
	private ColumnsPriv columnsPriv;
	java.lang.String id = null;
	java.lang.String id = null;
	java.lang.String id = null;
	java.lang.String id = null;
	java.lang.String id = null;
	private String[] items;

	public void prepare() throws Exception {
		if (isNullOrEmptyString(id)) {
			columnsPriv = new ColumnsPriv();
		} else {
			columnsPriv = (ColumnsPriv)columnsPrivManager.getById(id);
		}
	}
	
	/** 增加setXXXX()方法,spring就可以通过autowire自动设置对象属性,注意大小写 */
	public void setColumnsPrivManager(ColumnsPrivManager manager) {
		this.columnsPrivManager = manager;
	}	
	
	public Object getModel() {
		return columnsPriv;
	}
	
	public void setHost(java.lang.String val) {
		this.id = val;
	}
	public void setDb(java.lang.String val) {
		this.id = val;
	}
	public void setUser(java.lang.String val) {
		this.id = val;
	}
	public void setTableName(java.lang.String val) {
		this.id = val;
	}
	public void setColumnName(java.lang.String val) {
		this.id = val;
	}

	public void setItems(String[] items) {
		this.items = items;
	}
	
	/** 执行搜索 */
	public String list() {
		ColumnsPrivQuery query = newQuery(ColumnsPrivQuery.class,DEFAULT_SORT_COLUMNS);
		
		Page page = columnsPrivManager.findPage(query);
		savePage(page,query);
		return LIST_JSP;
	}
	
	/** 查看对象*/
	public String show() {
		return SHOW_JSP;
	}
	
	/** 进入新增页面*/
	public String create() {
		return CREATE_JSP;
	}
	
	/** 保存新增对象 */
	public String save() {
		columnsPrivManager.save(columnsPriv);
		Flash.current().success(CREATED_SUCCESS); //存放在Flash中的数据,在下一次http请求中仍然可以读取数据,error()用于显示错误消息
		return LIST_ACTION;
	}
	
	/**进入更新页面*/
	public String edit() {
		return EDIT_JSP;
	}
	
	/**保存更新对象*/
	public String update() {
		columnsPrivManager.update(this.columnsPriv);
		Flash.current().success(UPDATE_SUCCESS);
		return LIST_ACTION;
	}
	
	/**删除对象*/
	public String delete() {
		for(int i = 0; i < items.length; i++) {
			Hashtable params = HttpUtils.parseQueryString(items[i]);
			ColumnsPrivId id = (ColumnsPrivId)copyProperties(ColumnsPrivId.class,params);
			columnsPrivManager.removeById(id);
		}
		Flash.current().success(DELETE_SUCCESS);
		return LIST_ACTION;
	}

}
