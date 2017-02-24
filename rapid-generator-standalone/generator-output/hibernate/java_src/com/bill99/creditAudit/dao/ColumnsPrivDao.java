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
public class ColumnsPrivDao extends BaseHibernateDao<ColumnsPriv,java.lang.String>{

	public Class getEntityClass() {
		return ColumnsPriv.class;
	}
	
	public Page findPage(ColumnsPrivQuery query) {
        //XsqlBuilder syntax,please see http://code.google.com/p/rapid-xsqlbuilder
        // [column]为字符串拼接, {column}为使用占位符. [column]为使用字符串拼接,如username='[username]',偷懒时可以使用字符串拼接 
        // [column] 为PageRequest的属性
		String sql = "select t from ColumnsPriv t where 1=1 "
				+ "/~ and t.timestamp >= {timestampBegin} ~/"
				+ "/~ and t.timestamp <= {timestampEnd} ~/"
			  	+ "/~ and t.columnPriv = {columnPriv} ~/"
				+ "/~ order by [sortColumns] ~/";

        //生成sql2的原因是为了不喜欢使用xsqlbuilder的同学，请修改生成器模板，删除本段的生成
        StringBuilder sql2 = new StringBuilder("select t from ColumnsPriv t where 1=1 ");
        if(isNotEmpty(query.getHost())) {
            sql2.append(" and  t.host = :host ");
        }
        if(isNotEmpty(query.getDb())) {
            sql2.append(" and  t.db = :db ");
        }
        if(isNotEmpty(query.getUser())) {
            sql2.append(" and  t.user = :user ");
        }
        if(isNotEmpty(query.getTableName())) {
            sql2.append(" and  t.tableName = :tableName ");
        }
        if(isNotEmpty(query.getColumnName())) {
            sql2.append(" and  t.columnName = :columnName ");
        }
        if(isNotEmpty(query.getTimestampBegin())) {
            sql2.append(" and  t.timestamp >= :timestampBegin ");
        }
        if(isNotEmpty(query.getTimestampEnd())) {
            sql2.append(" and  t.timestamp <= :timestampEnd ");
        }
        if(isNotEmpty(query.getColumnPriv())) {
            sql2.append(" and  t.columnPriv = :columnPriv ");
        }
        if(isNotEmpty(query.getSortColumns())) {
            sql2.append(" order by :sortColumns ");
        }	
        
		return pageQuery(sql,query);
	}
	

}
