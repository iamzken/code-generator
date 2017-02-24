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


public class Db extends BaseEntity implements java.io.Serializable {
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "Db";
	public static final String ALIAS_HOST = "host";
	public static final String ALIAS_DB = "db";
	public static final String ALIAS_USER = "user";
	public static final String ALIAS_SELECT_PRIV = "selectPriv";
	public static final String ALIAS_INSERT_PRIV = "insertPriv";
	public static final String ALIAS_UPDATE_PRIV = "updatePriv";
	public static final String ALIAS_DELETE_PRIV = "deletePriv";
	public static final String ALIAS_CREATE_PRIV = "createPriv";
	public static final String ALIAS_DROP_PRIV = "dropPriv";
	public static final String ALIAS_GRANT_PRIV = "grantPriv";
	public static final String ALIAS_REFERENCES_PRIV = "referencesPriv";
	public static final String ALIAS_INDEX_PRIV = "indexPriv";
	public static final String ALIAS_ALTER_PRIV = "alterPriv";
	public static final String ALIAS_CREATE_TMP_TABLE_PRIV = "createTmpTablePriv";
	public static final String ALIAS_LOCK_TABLES_PRIV = "lockTablesPriv";
	
	//date formats
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	@Length(max=60)
	private java.lang.String host;
	@Length(max=64)
	private java.lang.String db;
	@Length(max=16)
	private java.lang.String user;
	@NotBlank @Length(max=2)
	private java.lang.String selectPriv;
	@NotBlank @Length(max=2)
	private java.lang.String insertPriv;
	@NotBlank @Length(max=2)
	private java.lang.String updatePriv;
	@NotBlank @Length(max=2)
	private java.lang.String deletePriv;
	@NotBlank @Length(max=2)
	private java.lang.String createPriv;
	@NotBlank @Length(max=2)
	private java.lang.String dropPriv;
	@NotBlank @Length(max=2)
	private java.lang.String grantPriv;
	@NotBlank @Length(max=2)
	private java.lang.String referencesPriv;
	@NotBlank @Length(max=2)
	private java.lang.String indexPriv;
	@NotBlank @Length(max=2)
	private java.lang.String alterPriv;
	@NotBlank @Length(max=2)
	private java.lang.String createTmpTablePriv;
	@NotBlank @Length(max=2)
	private java.lang.String lockTablesPriv;
	//columns END

	public Db(){
	}

	public Db(
		java.lang.String host,
		java.lang.String db,
		java.lang.String user
	){
		this.host = host;
		this.db = db;
		this.user = user;
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
	public void setSelectPriv(java.lang.String value) {
		this.selectPriv = value;
	}
	
	public java.lang.String getSelectPriv() {
		return this.selectPriv;
	}
	public void setInsertPriv(java.lang.String value) {
		this.insertPriv = value;
	}
	
	public java.lang.String getInsertPriv() {
		return this.insertPriv;
	}
	public void setUpdatePriv(java.lang.String value) {
		this.updatePriv = value;
	}
	
	public java.lang.String getUpdatePriv() {
		return this.updatePriv;
	}
	public void setDeletePriv(java.lang.String value) {
		this.deletePriv = value;
	}
	
	public java.lang.String getDeletePriv() {
		return this.deletePriv;
	}
	public void setCreatePriv(java.lang.String value) {
		this.createPriv = value;
	}
	
	public java.lang.String getCreatePriv() {
		return this.createPriv;
	}
	public void setDropPriv(java.lang.String value) {
		this.dropPriv = value;
	}
	
	public java.lang.String getDropPriv() {
		return this.dropPriv;
	}
	public void setGrantPriv(java.lang.String value) {
		this.grantPriv = value;
	}
	
	public java.lang.String getGrantPriv() {
		return this.grantPriv;
	}
	public void setReferencesPriv(java.lang.String value) {
		this.referencesPriv = value;
	}
	
	public java.lang.String getReferencesPriv() {
		return this.referencesPriv;
	}
	public void setIndexPriv(java.lang.String value) {
		this.indexPriv = value;
	}
	
	public java.lang.String getIndexPriv() {
		return this.indexPriv;
	}
	public void setAlterPriv(java.lang.String value) {
		this.alterPriv = value;
	}
	
	public java.lang.String getAlterPriv() {
		return this.alterPriv;
	}
	public void setCreateTmpTablePriv(java.lang.String value) {
		this.createTmpTablePriv = value;
	}
	
	public java.lang.String getCreateTmpTablePriv() {
		return this.createTmpTablePriv;
	}
	public void setLockTablesPriv(java.lang.String value) {
		this.lockTablesPriv = value;
	}
	
	public java.lang.String getLockTablesPriv() {
		return this.lockTablesPriv;
	}

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Host",getHost())
			.append("Db",getDb())
			.append("User",getUser())
			.append("SelectPriv",getSelectPriv())
			.append("InsertPriv",getInsertPriv())
			.append("UpdatePriv",getUpdatePriv())
			.append("DeletePriv",getDeletePriv())
			.append("CreatePriv",getCreatePriv())
			.append("DropPriv",getDropPriv())
			.append("GrantPriv",getGrantPriv())
			.append("ReferencesPriv",getReferencesPriv())
			.append("IndexPriv",getIndexPriv())
			.append("AlterPriv",getAlterPriv())
			.append("CreateTmpTablePriv",getCreateTmpTablePriv())
			.append("LockTablesPriv",getLockTablesPriv())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getHost())
			.append(getDb())
			.append(getUser())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Db == false) return false;
		if(this == obj) return true;
		Db other = (Db)obj;
		return new EqualsBuilder()
			.append(getHost(),other.getHost())
			.append(getDb(),other.getDb())
			.append(getUser(),other.getUser())
			.isEquals();
	}
}

