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
@Table(name = "host")
public class Host extends BaseEntity implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "Host";
	public static final String ALIAS_HOST = "host";
	public static final String ALIAS_DB = "db";
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
	

	private HostId id;
	private java.lang.String selectPriv;
	private java.lang.String insertPriv;
	private java.lang.String updatePriv;
	private java.lang.String deletePriv;
	private java.lang.String createPriv;
	private java.lang.String dropPriv;
	private java.lang.String grantPriv;
	private java.lang.String referencesPriv;
	private java.lang.String indexPriv;
	private java.lang.String alterPriv;
	private java.lang.String createTmpTablePriv;
	private java.lang.String lockTablesPriv;


	public Host(){
	}
	public Host(HostId id) {
		this.id = id;
	}
	
	@EmbeddedId
	public HostId getId() {
		return this.id;
	}
	
	public void setId(HostId id) {
		this.id = id;
	}
	
	@Column(name = "Select_priv", unique = false, nullable = false, insertable = true, updatable = true, length = 2)
	public java.lang.String getSelectPriv() {
		return this.selectPriv;
	}
	
	public void setSelectPriv(java.lang.String value) {
		this.selectPriv = value;
	}
	
	@Column(name = "Insert_priv", unique = false, nullable = false, insertable = true, updatable = true, length = 2)
	public java.lang.String getInsertPriv() {
		return this.insertPriv;
	}
	
	public void setInsertPriv(java.lang.String value) {
		this.insertPriv = value;
	}
	
	@Column(name = "Update_priv", unique = false, nullable = false, insertable = true, updatable = true, length = 2)
	public java.lang.String getUpdatePriv() {
		return this.updatePriv;
	}
	
	public void setUpdatePriv(java.lang.String value) {
		this.updatePriv = value;
	}
	
	@Column(name = "Delete_priv", unique = false, nullable = false, insertable = true, updatable = true, length = 2)
	public java.lang.String getDeletePriv() {
		return this.deletePriv;
	}
	
	public void setDeletePriv(java.lang.String value) {
		this.deletePriv = value;
	}
	
	@Column(name = "Create_priv", unique = false, nullable = false, insertable = true, updatable = true, length = 2)
	public java.lang.String getCreatePriv() {
		return this.createPriv;
	}
	
	public void setCreatePriv(java.lang.String value) {
		this.createPriv = value;
	}
	
	@Column(name = "Drop_priv", unique = false, nullable = false, insertable = true, updatable = true, length = 2)
	public java.lang.String getDropPriv() {
		return this.dropPriv;
	}
	
	public void setDropPriv(java.lang.String value) {
		this.dropPriv = value;
	}
	
	@Column(name = "Grant_priv", unique = false, nullable = false, insertable = true, updatable = true, length = 2)
	public java.lang.String getGrantPriv() {
		return this.grantPriv;
	}
	
	public void setGrantPriv(java.lang.String value) {
		this.grantPriv = value;
	}
	
	@Column(name = "References_priv", unique = false, nullable = false, insertable = true, updatable = true, length = 2)
	public java.lang.String getReferencesPriv() {
		return this.referencesPriv;
	}
	
	public void setReferencesPriv(java.lang.String value) {
		this.referencesPriv = value;
	}
	
	@Column(name = "Index_priv", unique = false, nullable = false, insertable = true, updatable = true, length = 2)
	public java.lang.String getIndexPriv() {
		return this.indexPriv;
	}
	
	public void setIndexPriv(java.lang.String value) {
		this.indexPriv = value;
	}
	
	@Column(name = "Alter_priv", unique = false, nullable = false, insertable = true, updatable = true, length = 2)
	public java.lang.String getAlterPriv() {
		return this.alterPriv;
	}
	
	public void setAlterPriv(java.lang.String value) {
		this.alterPriv = value;
	}
	
	@Column(name = "Create_tmp_table_priv", unique = false, nullable = false, insertable = true, updatable = true, length = 2)
	public java.lang.String getCreateTmpTablePriv() {
		return this.createTmpTablePriv;
	}
	
	public void setCreateTmpTablePriv(java.lang.String value) {
		this.createTmpTablePriv = value;
	}
	
	@Column(name = "Lock_tables_priv", unique = false, nullable = false, insertable = true, updatable = true, length = 2)
	public java.lang.String getLockTablesPriv() {
		return this.lockTablesPriv;
	}
	
	public void setLockTablesPriv(java.lang.String value) {
		this.lockTablesPriv = value;
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
		if(obj instanceof Host == false) return false;
		if(this == obj) return true;
		Host other = (Host)obj;
		return new EqualsBuilder()
			.isEquals();
	}
}

