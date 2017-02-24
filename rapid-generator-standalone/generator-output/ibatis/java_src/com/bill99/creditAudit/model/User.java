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


public class User extends BaseEntity implements java.io.Serializable {
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
	
	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	@Length(max=60)
	private java.lang.String host;
	@Length(max=16)
	private java.lang.String user;
	@NotBlank @Length(max=16)
	private java.lang.String password;
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
	private java.lang.String reloadPriv;
	@NotBlank @Length(max=2)
	private java.lang.String shutdownPriv;
	@NotBlank @Length(max=2)
	private java.lang.String processPriv;
	@NotBlank @Length(max=2)
	private java.lang.String filePriv;
	@NotBlank @Length(max=2)
	private java.lang.String grantPriv;
	@NotBlank @Length(max=2)
	private java.lang.String referencesPriv;
	@NotBlank @Length(max=2)
	private java.lang.String indexPriv;
	@NotBlank @Length(max=2)
	private java.lang.String alterPriv;
	@NotBlank @Length(max=2)
	private java.lang.String showDbPriv;
	@NotBlank @Length(max=2)
	private java.lang.String superPriv;
	@NotBlank @Length(max=2)
	private java.lang.String createTmpTablePriv;
	@NotBlank @Length(max=2)
	private java.lang.String lockTablesPriv;
	@NotBlank @Length(max=2)
	private java.lang.String executePriv;
	@NotBlank @Length(max=2)
	private java.lang.String replSlavePriv;
	@NotBlank @Length(max=2)
	private java.lang.String replClientPriv;
	@NotBlank @Length(max=9)
	private java.lang.String sslType;
	@NotNull 
	private byte[] sslCipher;
	@NotNull 
	private byte[] x509Issuer;
	@NotNull 
	private byte[] x509Subject;
	@NotNull 
	private java.lang.Integer maxQuestions;
	@NotNull 
	private java.lang.Integer maxUpdates;
	@NotNull 
	private java.lang.Integer maxConnections;
	//columns END

	public User(){
	}

	public User(
		java.lang.String host,
		java.lang.String user
	){
		this.host = host;
		this.user = user;
	}

	public void setHost(java.lang.String value) {
		this.host = value;
	}
	
	public java.lang.String getHost() {
		return this.host;
	}
	public void setUser(java.lang.String value) {
		this.user = value;
	}
	
	public java.lang.String getUser() {
		return this.user;
	}
	public void setPassword(java.lang.String value) {
		this.password = value;
	}
	
	public java.lang.String getPassword() {
		return this.password;
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
	public void setReloadPriv(java.lang.String value) {
		this.reloadPriv = value;
	}
	
	public java.lang.String getReloadPriv() {
		return this.reloadPriv;
	}
	public void setShutdownPriv(java.lang.String value) {
		this.shutdownPriv = value;
	}
	
	public java.lang.String getShutdownPriv() {
		return this.shutdownPriv;
	}
	public void setProcessPriv(java.lang.String value) {
		this.processPriv = value;
	}
	
	public java.lang.String getProcessPriv() {
		return this.processPriv;
	}
	public void setFilePriv(java.lang.String value) {
		this.filePriv = value;
	}
	
	public java.lang.String getFilePriv() {
		return this.filePriv;
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
	public void setShowDbPriv(java.lang.String value) {
		this.showDbPriv = value;
	}
	
	public java.lang.String getShowDbPriv() {
		return this.showDbPriv;
	}
	public void setSuperPriv(java.lang.String value) {
		this.superPriv = value;
	}
	
	public java.lang.String getSuperPriv() {
		return this.superPriv;
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
	public void setExecutePriv(java.lang.String value) {
		this.executePriv = value;
	}
	
	public java.lang.String getExecutePriv() {
		return this.executePriv;
	}
	public void setReplSlavePriv(java.lang.String value) {
		this.replSlavePriv = value;
	}
	
	public java.lang.String getReplSlavePriv() {
		return this.replSlavePriv;
	}
	public void setReplClientPriv(java.lang.String value) {
		this.replClientPriv = value;
	}
	
	public java.lang.String getReplClientPriv() {
		return this.replClientPriv;
	}
	public void setSslType(java.lang.String value) {
		this.sslType = value;
	}
	
	public java.lang.String getSslType() {
		return this.sslType;
	}
	public void setSslCipher(byte[] value) {
		this.sslCipher = value;
	}
	
	public byte[] getSslCipher() {
		return this.sslCipher;
	}
	public void setX509Issuer(byte[] value) {
		this.x509Issuer = value;
	}
	
	public byte[] getX509Issuer() {
		return this.x509Issuer;
	}
	public void setX509Subject(byte[] value) {
		this.x509Subject = value;
	}
	
	public byte[] getX509Subject() {
		return this.x509Subject;
	}
	public void setMaxQuestions(java.lang.Integer value) {
		this.maxQuestions = value;
	}
	
	public java.lang.Integer getMaxQuestions() {
		return this.maxQuestions;
	}
	public void setMaxUpdates(java.lang.Integer value) {
		this.maxUpdates = value;
	}
	
	public java.lang.Integer getMaxUpdates() {
		return this.maxUpdates;
	}
	public void setMaxConnections(java.lang.Integer value) {
		this.maxConnections = value;
	}
	
	public java.lang.Integer getMaxConnections() {
		return this.maxConnections;
	}

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Host",getHost())
			.append("User",getUser())
			.append("Password",getPassword())
			.append("SelectPriv",getSelectPriv())
			.append("InsertPriv",getInsertPriv())
			.append("UpdatePriv",getUpdatePriv())
			.append("DeletePriv",getDeletePriv())
			.append("CreatePriv",getCreatePriv())
			.append("DropPriv",getDropPriv())
			.append("ReloadPriv",getReloadPriv())
			.append("ShutdownPriv",getShutdownPriv())
			.append("ProcessPriv",getProcessPriv())
			.append("FilePriv",getFilePriv())
			.append("GrantPriv",getGrantPriv())
			.append("ReferencesPriv",getReferencesPriv())
			.append("IndexPriv",getIndexPriv())
			.append("AlterPriv",getAlterPriv())
			.append("ShowDbPriv",getShowDbPriv())
			.append("SuperPriv",getSuperPriv())
			.append("CreateTmpTablePriv",getCreateTmpTablePriv())
			.append("LockTablesPriv",getLockTablesPriv())
			.append("ExecutePriv",getExecutePriv())
			.append("ReplSlavePriv",getReplSlavePriv())
			.append("ReplClientPriv",getReplClientPriv())
			.append("SslType",getSslType())
			.append("SslCipher",getSslCipher())
			.append("X509Issuer",getX509Issuer())
			.append("X509Subject",getX509Subject())
			.append("MaxQuestions",getMaxQuestions())
			.append("MaxUpdates",getMaxUpdates())
			.append("MaxConnections",getMaxConnections())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getHost())
			.append(getUser())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof User == false) return false;
		if(this == obj) return true;
		User other = (User)obj;
		return new EqualsBuilder()
			.append(getHost(),other.getHost())
			.append(getUser(),other.getUser())
			.isEquals();
	}
}

