/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2017
 */

package com.bill99.creditAudit.model;

import javax.validation.constraints.*;
import org.hibernate.validator.constraints.*;
import org.apache.commons.lang.builder.EqualsBuilder;
import org.apache.commons.lang.builder.HashCodeBuilder;
import org.apache.commons.lang.builder.ToStringBuilder;
import org.apache.commons.lang.builder.ToStringStyle;

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


public class TablesPriv extends BaseEntity implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "TablesPriv";
	public static final String ALIAS_HOST = "host";
	public static final String ALIAS_DB = "db";
	public static final String ALIAS_USER = "user";
	public static final String ALIAS_TABLE_NAME = "tableName";
	public static final String ALIAS_GRANTOR = "grantor";
	public static final String ALIAS_TIMESTAMP = "timestamp";
	public static final String ALIAS_TABLE_PRIV = "tablePriv";
	public static final String ALIAS_COLUMN_PRIV = "columnPriv";
	
	//date formats
	public static final String FORMAT_TIMESTAMP = DATE_FORMAT;
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	@Length(max=60)
	private java.lang.String host;
	@Length(max=64)
	private java.lang.String db;
	@Length(max=16)
	private java.lang.String user;
	@Length(max=60)
	private java.lang.String tableName;
	@NotBlank @Length(max=77)
	private java.lang.String grantor;
	
	private java.util.Date timestamp;
	@NotBlank @Length(max=62)
	private java.lang.String tablePriv;
	@NotBlank @Length(max=31)
	private java.lang.String columnPriv;
	//columns END

	public TablesPriv(){
	}

	public TablesPriv(
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
	public void setGrantor(java.lang.String value) {
		this.grantor = value;
	}
	
	public java.lang.String getGrantor() {
		return this.grantor;
	}
	public String getTimestampString() {
		return DateConvertUtils.format(getTimestamp(), FORMAT_TIMESTAMP);
	}
	public void setTimestampString(String value) {
		setTimestamp(DateConvertUtils.parse(value, FORMAT_TIMESTAMP,java.util.Date.class));
	}
	
	public void setTimestamp(java.util.Date value) {
		this.timestamp = value;
	}
	
	public java.util.Date getTimestamp() {
		return this.timestamp;
	}
	public void setTablePriv(java.lang.String value) {
		this.tablePriv = value;
	}
	
	public java.lang.String getTablePriv() {
		return this.tablePriv;
	}
	public void setColumnPriv(java.lang.String value) {
		this.columnPriv = value;
	}
	
	public java.lang.String getColumnPriv() {
		return this.columnPriv;
	}

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Host",getHost())
			.append("Db",getDb())
			.append("User",getUser())
			.append("TableName",getTableName())
			.append("Grantor",getGrantor())
			.append("Timestamp",getTimestamp())
			.append("TablePriv",getTablePriv())
			.append("ColumnPriv",getColumnPriv())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getHost())
			.append(getDb())
			.append(getUser())
			.append(getTableName())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof TablesPriv == false) return false;
		if(this == obj) return true;
		TablesPriv other = (TablesPriv)obj;
		return new EqualsBuilder()
			.append(getHost(),other.getHost())
			.append(getDb(),other.getDb())
			.append(getUser(),other.getUser())
			.append(getTableName(),other.getTableName())
			.isEquals();
	}
}

