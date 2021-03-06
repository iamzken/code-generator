

/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2017
 */

package com.bill99.creditAudit.model;

import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;

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


public class TablesPrivId extends BaseEntity implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	private java.lang.String host;
	private java.lang.String db;
	private java.lang.String user;
	private java.lang.String tableName;

	public TablesPrivId(){
	}

	public TablesPrivId(
		java.lang.String host,
		java.lang.String db,
		java.lang.String user,
		java.lang.String tableName
	){
		this.host = host;
		this.db = db;
		this.user = user;
		this.tableName = tableName;
	}

	
	public void setHost(java.lang.String value) {
		this.host = value;
	}
	
	public java.lang.String getHost() {
		return this.host;
	}
	public void setDb(java.lang.String value) {
		this.db = value;
	}
	
	public java.lang.String getDb() {
		return this.db;
	}
	public void setUser(java.lang.String value) {
		this.user = value;
	}
	
	public java.lang.String getUser() {
		return this.user;
	}
	public void setTableName(java.lang.String value) {
		this.tableName = value;
	}
	
	public java.lang.String getTableName() {
		return this.tableName;
	}

	public String toString() {
		return ToStringBuilder.reflectionToString(this);
	}
	
	public int hashCode() {
		return HashCodeBuilder.reflectionHashCode(this);
	}
	
	public boolean equals(Object other) {
		return EqualsBuilder.reflectionEquals(this, other);
	}
}