

/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2017
 */

package com.bill99.creditAudit.model;

import javax.persistence.*;
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


@Embeddable
public class HostId extends BaseEntity implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	private java.lang.String host;
	private java.lang.String db;

	public HostId(){
	}

	public HostId(
		java.lang.String host,
		java.lang.String db
	){
		this.host = host;
		this.db = db;
	}

	
	
	public void setHost(java.lang.String value) {
		this.host = value;
	}
	
	@Column(name = "Host", unique = false, nullable = false, insertable = true, updatable = true, length = 60)	
	public java.lang.String getHost() {
		return this.host;
	}
	
	public void setDb(java.lang.String value) {
		this.db = value;
	}
	
	@Column(name = "Db", unique = false, nullable = false, insertable = true, updatable = true, length = 64)	
	public java.lang.String getDb() {
		return this.db;
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