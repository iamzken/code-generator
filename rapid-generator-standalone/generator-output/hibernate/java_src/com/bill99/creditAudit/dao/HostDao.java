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
public class HostDao extends BaseHibernateDao<Host,java.lang.String>{

	public Class getEntityClass() {
		return Host.class;
	}
	
	public Page findPage(HostQuery query) {
        //XsqlBuilder syntax,please see http://code.google.com/p/rapid-xsqlbuilder
        // [column]为字符串拼接, {column}为使用占位符. [column]为使用字符串拼接,如username='[username]',偷懒时可以使用字符串拼接 
        // [column] 为PageRequest的属性
		String sql = "select t from Host t where 1=1 "
			  	+ "/~ and t.selectPriv = {selectPriv} ~/"
			  	+ "/~ and t.insertPriv = {insertPriv} ~/"
			  	+ "/~ and t.updatePriv = {updatePriv} ~/"
			  	+ "/~ and t.deletePriv = {deletePriv} ~/"
			  	+ "/~ and t.createPriv = {createPriv} ~/"
			  	+ "/~ and t.dropPriv = {dropPriv} ~/"
			  	+ "/~ and t.grantPriv = {grantPriv} ~/"
			  	+ "/~ and t.referencesPriv = {referencesPriv} ~/"
			  	+ "/~ and t.indexPriv = {indexPriv} ~/"
			  	+ "/~ and t.alterPriv = {alterPriv} ~/"
			  	+ "/~ and t.createTmpTablePriv = {createTmpTablePriv} ~/"
			  	+ "/~ and t.lockTablesPriv = {lockTablesPriv} ~/"
				+ "/~ order by [sortColumns] ~/";

        //生成sql2的原因是为了不喜欢使用xsqlbuilder的同学，请修改生成器模板，删除本段的生成
        StringBuilder sql2 = new StringBuilder("select t from Host t where 1=1 ");
        if(isNotEmpty(query.getHost())) {
            sql2.append(" and  t.host = :host ");
        }
        if(isNotEmpty(query.getDb())) {
            sql2.append(" and  t.db = :db ");
        }
        if(isNotEmpty(query.getSelectPriv())) {
            sql2.append(" and  t.selectPriv = :selectPriv ");
        }
        if(isNotEmpty(query.getInsertPriv())) {
            sql2.append(" and  t.insertPriv = :insertPriv ");
        }
        if(isNotEmpty(query.getUpdatePriv())) {
            sql2.append(" and  t.updatePriv = :updatePriv ");
        }
        if(isNotEmpty(query.getDeletePriv())) {
            sql2.append(" and  t.deletePriv = :deletePriv ");
        }
        if(isNotEmpty(query.getCreatePriv())) {
            sql2.append(" and  t.createPriv = :createPriv ");
        }
        if(isNotEmpty(query.getDropPriv())) {
            sql2.append(" and  t.dropPriv = :dropPriv ");
        }
        if(isNotEmpty(query.getGrantPriv())) {
            sql2.append(" and  t.grantPriv = :grantPriv ");
        }
        if(isNotEmpty(query.getReferencesPriv())) {
            sql2.append(" and  t.referencesPriv = :referencesPriv ");
        }
        if(isNotEmpty(query.getIndexPriv())) {
            sql2.append(" and  t.indexPriv = :indexPriv ");
        }
        if(isNotEmpty(query.getAlterPriv())) {
            sql2.append(" and  t.alterPriv = :alterPriv ");
        }
        if(isNotEmpty(query.getCreateTmpTablePriv())) {
            sql2.append(" and  t.createTmpTablePriv = :createTmpTablePriv ");
        }
        if(isNotEmpty(query.getLockTablesPriv())) {
            sql2.append(" and  t.lockTablesPriv = :lockTablesPriv ");
        }
        if(isNotEmpty(query.getSortColumns())) {
            sql2.append(" order by :sortColumns ");
        }	
        
		return pageQuery(sql,query);
	}
	

}
