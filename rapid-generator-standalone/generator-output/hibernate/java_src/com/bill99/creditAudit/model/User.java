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
@Table(name = "user")
public class User extends BaseEntity implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "User";
	public static final String ALIAS_HOST = "host";
	public static final String ALIAS_USER = "user";
	public static final String ALIAS_PASSWORD = "password";
	public static final String ALIAS_SELECT_PRIV = "selectPriv";
	public static final String ALIAS_INSERT_PRIV = "insertPriv";
	public static final String ALIAS_UPDATE_PRIV = "updatePriv";
	public static final String ALIAS_DELETE_PRIV = "deletePriv";
	public static final String ALIAS_CREATE_PRIV = "createPriv";
	public static final String ALIAS_DROP_PRIV = "dropPriv";
	public static final String ALIAS_RELOAD_PRIV = "reloadPriv";
	public static final String ALIAS_SHUTDOWN_PRIV = "shutdownPriv";
	public static final String ALIAS_PROCESS_PRIV = "processPriv";
	public static final String ALIAS_FILE_PRIV = "filePriv";
	public static final String ALIAS_GRANT_PRIV = "grantPriv";
	public static final String ALIAS_REFERENCES_PRIV = "referencesPriv";
	public static final String ALIAS_INDEX_PRIV = "indexPriv";
	public static final String ALIAS_ALTER_PRIV = "alterPriv";
	public static final String ALIAS_SHOW_DB_PRIV = "showDbPriv";
	public static final String ALIAS_SUPER_PRIV = "superPriv";
	public static final String ALIAS_CREATE_TMP_TABLE_PRIV = "createTmpTablePriv";
	public static final String ALIAS_LOCK_TABLES_PRIV = "lockTablesPriv";
	public static final String ALIAS_EXECUTE_PRIV = "executePriv";
	public static final String ALIAS_REPL_SLAVE_PRIV = "replSlavePriv";
	public static final String ALIAS_REPL_CLIENT_PRIV = "replClientPriv";
	public static final String ALIAS_SSL_TYPE = "sslType";
	public static final String ALIAS_SSL_CIPHER = "sslCipher";
	public static final String ALIAS_X509_ISSUER = "x509Issuer";
	public static final String ALIAS_X509_SUBJECT = "x509Subject";
	public static final String ALIAS_MAX_QUESTIONS = "maxQuestions";
	public static final String ALIAS_MAX_UPDATES = "maxUpdates";
	public static final String ALIAS_MAX_CONNECTIONS = "maxConnections";
	
	//date formats
	

	private UserId id;
	private java.lang.String password;
	private java.lang.String selectPriv;
	private java.lang.String insertPriv;
	private java.lang.String updatePriv;
	private java.lang.String deletePriv;
	private java.lang.String createPriv;
	private java.lang.String dropPriv;
	private java.lang.String reloadPriv;
	private java.lang.String shutdownPriv;
	private java.lang.String processPriv;
	private java.lang.String filePriv;
	private java.lang.String grantPriv;
	private java.lang.String referencesPriv;
	private java.lang.String indexPriv;
	private java.lang.String alterPriv;
	private java.lang.String showDbPriv;
	private java.lang.String superPriv;
	private java.lang.String createTmpTablePriv;
	private java.lang.String lockTablesPriv;
	private java.lang.String executePriv;
	private java.lang.String replSlavePriv;
	private java.lang.String replClientPriv;
	private java.lang.String sslType;
	private byte[] sslCipher;
	private byte[] x509Issuer;
	private byte[] x509Subject;
	private java.lang.Integer maxQuestions;
	private java.lang.Integer maxUpdates;
	private java.lang.Integer maxConnections;


	public User(){
	}
	public User(UserId id) {
		this.id = id;
	}
	
	@EmbeddedId
	public UserId getId() {
		return this.id;
	}
	
	public void setId(UserId id) {
		this.id = id;
	}
	
	@Column(name = "password", unique = false, nullable = false, insertable = true, updatable = true, length = 16)
	public java.lang.String getPassword() {
		return this.password;
	}
	
	public void setPassword(java.lang.String value) {
		this.password = value;
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
	
	@Column(name = "Reload_priv", unique = false, nullable = false, insertable = true, updatable = true, length = 2)
	public java.lang.String getReloadPriv() {
		return this.reloadPriv;
	}
	
	public void setReloadPriv(java.lang.String value) {
		this.reloadPriv = value;
	}
	
	@Column(name = "Shutdown_priv", unique = false, nullable = false, insertable = true, updatable = true, length = 2)
	public java.lang.String getShutdownPriv() {
		return this.shutdownPriv;
	}
	
	public void setShutdownPriv(java.lang.String value) {
		this.shutdownPriv = value;
	}
	
	@Column(name = "Process_priv", unique = false, nullable = false, insertable = true, updatable = true, length = 2)
	public java.lang.String getProcessPriv() {
		return this.processPriv;
	}
	
	public void setProcessPriv(java.lang.String value) {
		this.processPriv = value;
	}
	
	@Column(name = "File_priv", unique = false, nullable = false, insertable = true, updatable = true, length = 2)
	public java.lang.String getFilePriv() {
		return this.filePriv;
	}
	
	public void setFilePriv(java.lang.String value) {
		this.filePriv = value;
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
	
	@Column(name = "Show_db_priv", unique = false, nullable = false, insertable = true, updatable = true, length = 2)
	public java.lang.String getShowDbPriv() {
		return this.showDbPriv;
	}
	
	public void setShowDbPriv(java.lang.String value) {
		this.showDbPriv = value;
	}
	
	@Column(name = "Super_priv", unique = false, nullable = false, insertable = true, updatable = true, length = 2)
	public java.lang.String getSuperPriv() {
		return this.superPriv;
	}
	
	public void setSuperPriv(java.lang.String value) {
		this.superPriv = value;
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
	
	@Column(name = "Execute_priv", unique = false, nullable = false, insertable = true, updatable = true, length = 2)
	public java.lang.String getExecutePriv() {
		return this.executePriv;
	}
	
	public void setExecutePriv(java.lang.String value) {
		this.executePriv = value;
	}
	
	@Column(name = "Repl_slave_priv", unique = false, nullable = false, insertable = true, updatable = true, length = 2)
	public java.lang.String getReplSlavePriv() {
		return this.replSlavePriv;
	}
	
	public void setReplSlavePriv(java.lang.String value) {
		this.replSlavePriv = value;
	}
	
	@Column(name = "Repl_client_priv", unique = false, nullable = false, insertable = true, updatable = true, length = 2)
	public java.lang.String getReplClientPriv() {
		return this.replClientPriv;
	}
	
	public void setReplClientPriv(java.lang.String value) {
		this.replClientPriv = value;
	}
	
	@Column(name = "ssl_type", unique = false, nullable = false, insertable = true, updatable = true, length = 9)
	public java.lang.String getSslType() {
		return this.sslType;
	}
	
	public void setSslType(java.lang.String value) {
		this.sslType = value;
	}
	
	@Column(name = "ssl_cipher", unique = false, nullable = false, insertable = true, updatable = true, length = 65535)
	public byte[] getSslCipher() {
		return this.sslCipher;
	}
	
	public void setSslCipher(byte[] value) {
		this.sslCipher = value;
	}
	
	@Column(name = "x509_issuer", unique = false, nullable = false, insertable = true, updatable = true, length = 65535)
	public byte[] getX509Issuer() {
		return this.x509Issuer;
	}
	
	public void setX509Issuer(byte[] value) {
		this.x509Issuer = value;
	}
	
	@Column(name = "x509_subject", unique = false, nullable = false, insertable = true, updatable = true, length = 65535)
	public byte[] getX509Subject() {
		return this.x509Subject;
	}
	
	public void setX509Subject(byte[] value) {
		this.x509Subject = value;
	}
	
	@Column(name = "max_questions", unique = false, nullable = false, insertable = true, updatable = true, length = 10)
	public java.lang.Integer getMaxQuestions() {
		return this.maxQuestions;
	}
	
	public void setMaxQuestions(java.lang.Integer value) {
		this.maxQuestions = value;
	}
	
	@Column(name = "max_updates", unique = false, nullable = false, insertable = true, updatable = true, length = 10)
	public java.lang.Integer getMaxUpdates() {
		return this.maxUpdates;
	}
	
	public void setMaxUpdates(java.lang.Integer value) {
		this.maxUpdates = value;
	}
	
	@Column(name = "max_connections", unique = false, nullable = false, insertable = true, updatable = true, length = 10)
	public java.lang.Integer getMaxConnections() {
		return this.maxConnections;
	}
	
	public void setMaxConnections(java.lang.Integer value) {
		this.maxConnections = value;
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
		if(obj instanceof User == false) return false;
		if(this == obj) return true;
		User other = (User)obj;
		return new EqualsBuilder()
			.isEquals();
	}
}

