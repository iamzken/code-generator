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
@Table(name = "func")
public class Func extends BaseEntity implements java.io.Serializable{
	private static final long serialVersionUID = 5454155825314635342L;
	
	//alias
	public static final String TABLE_ALIAS = "Func";
	public static final String ALIAS_NAME = "name";
	public static final String ALIAS_RET = "ret";
	public static final String ALIAS_DL = "dl";
	public static final String ALIAS_TYPE = "type";
	
	//date formats
	

	//可以直接使用: @Length(max=50,message="用户名长度不能大于50")显示错误消息
	//columns START
	@Length(max=64)
	private java.lang.String name;
	@NotNull 
	private java.lang.Boolean ret;
	@NotBlank @Length(max=128)
	private java.lang.String dl;
	@NotBlank @Length(max=9)
	private java.lang.String type;
	//columns END


	public Func(){
	}

	public Func(
		java.lang.String name
	){
		this.name = name;
	}

	

	public void setName(java.lang.String value) {
		this.name = value;
	}
	
	@Id @GeneratedValue(generator="custom-id")
	@GenericGenerator(name="custom-id", strategy = "increment")
	@Column(name = "name", unique = true, nullable = false, insertable = true, updatable = true, length = 64)
	public java.lang.String getName() {
		return this.name;
	}
	
	@Column(name = "ret", unique = false, nullable = false, insertable = true, updatable = true, length = 0)
	public java.lang.Boolean getRet() {
		return this.ret;
	}
	
	public void setRet(java.lang.Boolean value) {
		this.ret = value;
	}
	
	@Column(name = "dl", unique = false, nullable = false, insertable = true, updatable = true, length = 128)
	public java.lang.String getDl() {
		return this.dl;
	}
	
	public void setDl(java.lang.String value) {
		this.dl = value;
	}
	
	@Column(name = "type", unique = false, nullable = false, insertable = true, updatable = true, length = 9)
	public java.lang.String getType() {
		return this.type;
	}
	
	public void setType(java.lang.String value) {
		this.type = value;
	}
	

	public String toString() {
		return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
			.append("Name",getName())
			.append("Ret",getRet())
			.append("Dl",getDl())
			.append("Type",getType())
			.toString();
	}
	
	public int hashCode() {
		return new HashCodeBuilder()
			.append(getName())
			.toHashCode();
	}
	
	public boolean equals(Object obj) {
		if(obj instanceof Func == false) return false;
		if(this == obj) return true;
		Func other = (Func)obj;
		return new EqualsBuilder()
			.append(getName(),other.getName())
			.isEquals();
	}
}

