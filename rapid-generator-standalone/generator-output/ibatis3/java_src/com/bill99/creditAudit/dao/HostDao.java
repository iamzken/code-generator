/*
 * Powered By [rapid-framework]
 * Web Site: http://www.rapid-framework.org.cn
 * Google Code: http://code.google.com/p/rapid-framework/
 * Since 2008 - 2017
 */

package com.bill99.creditAudit.dao;

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


import org.springframework.stereotype.Repository;


@Repository
public class HostDao extends BaseIbatis3Dao<Host,java.lang.String>{
	
	@Override
	public String getIbatisMapperNamesapce() {
		return "Host";
	}
	
	public void saveOrUpdate(Host entity) {
		if(entity.getHost() == null) 
			save(entity);
		else 
			update(entity);
	}
	
	public Page findPage(HostQuery query) {
		return pageQuery("Host.findPage",query);
	}
	

}
