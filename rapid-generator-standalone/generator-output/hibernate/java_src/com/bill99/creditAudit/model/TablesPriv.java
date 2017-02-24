/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2017
 */

package com.bill99.creditAudit.model;

import javax.persistence.*;

import org.hibernate.annotations.GenericGenerator;

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


@Entity
@Table(name = "tables_priv")
public class TablesPriv extends BaseEntity implements java.io.Serializable{
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
	

	private TablesPrivId id;
	private java.lang.String grantor;
	private java.util.Date timestamp;
	private java.lang.String tablePriv;
	private java.lang.String columnPriv;


	public TablesPriv(){
	}
	public TablesPriv(TablesPrivId id) {
		this.id = id;
	}
	
	@EmbeddedId
	public TablesPrivId getId() {
		return this.id;
	}
	
	public void setId(TablesPrivId id) {
		this.id = id;
	}
	
	@Column(name = "Grantor", unique = false, nullable = false, insertable = true, updatable = true, length = 77)
	public java.lang.String getGrantor() {
		return this.grantor;
	}
	
	public void setGrantor(java.lang.String value) {
		this.grantor = value;
	}
	
	@Transient
	public String getTimestampString() {
		return DateConvertUtils.format(getTimestamp(), FORMAT_TIMESTAMP);
	}
	public void setTimestampString(String value) {
		setTimestamp(DateConvertUtils.parse(value, FORMAT_TIMESTAMP,java.util.Date.class));
	}
	
	@Column(name = "Timestamp", unique = false, nullable = true, insertable = true, updatable = true, length = 0)
	public java.util.Date getTimestamp() {
		return this.timestamp;
	}
	
	public void setTimestamp(java.util.Date value) {
		this.timestamp = value;
	}
	
	@Column(name = "Table_priv", unique = false, nullable = false, insertable = true, updatable = true, length = 62)
	public java.lang.String getTablePriv() {
		return this.tablePriv;
	}
	
	public void setTablePriv(java.lang.String value) {
		this.tablePriv = value;
	}
	
	@Column(name = "Column_priv", unique = false, nullable = false, insertable = true, updatable = true, length = 31)
	public java.lang.String getColumnPriv() {
		return this.columnPriv;
	}
	
	public void setColumnPriv(java.lang.String value) {
		this.columnPriv = value;
	}
	

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof TablesPriv == false) return false;
		if(this == obj) return true;
		TablesPriv other = (TablesPriv)obj;
		return new EqualsBuilder()
			.isEquals();
	}
}

