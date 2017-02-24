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


import static cn.org.rapid_framework.util.ObjectUtils.*;
import org.springframework.stereotype.Repository;

@Repository
public class FuncDao extends BaseHibernateDao<Func,java.lang.String>{

	public Class getEntityClass() {
		return Func.class;
	}
	
	public Page findPage(FuncQuery query) {
        //XsqlBuilder syntax,please see http://code.google.com/p/rapid-xsqlbuilder
        // [column]为字符串拼接, {column}为使用占位符. [column]为使用字符串拼接,如username='[username]',偷懒时可以使用字符串拼接 
        // [column] 为PageRequest的属性
		String sql = "select t from Func t where 1=1 "
			  	+ "/~ and t.ret = {ret} ~/"
			  	+ "/~ and t.dl = {dl} ~/"
			  	+ "/~ and t.type = {type} ~/"
				+ "/~ order by [sortColumns] ~/";

        //生成sql2的原因是为了不喜欢使用xsqlbuilder的同学，请修改生成器模板，删除本段的生成
        StringBuilder sql2 = new StringBuilder("select t from Func t where 1=1 ");
        if(isNotEmpty(query.getName())) {
            sql2.append(" and  t.name = :name ");
        }
        if(isNotEmpty(query.getRet())) {
            sql2.append(" and  t.ret = :ret ");
        }
        if(isNotEmpty(query.getDl())) {
            sql2.append(" and  t.dl = :dl ");
        }
        if(isNotEmpty(query.getType())) {
            sql2.append(" and  t.type = :type ");
        }
        if(isNotEmpty(query.getSortColumns())) {
            sql2.append(" order by :sortColumns ");
        }	
        
		return pageQuery(sql,query);
	}
	

}
