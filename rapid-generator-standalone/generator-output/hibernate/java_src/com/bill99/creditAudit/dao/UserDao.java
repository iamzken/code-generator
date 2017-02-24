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
public class UserDao extends BaseHibernateDao<User,java.lang.String>{

	public Class getEntityClass() {
		return User.class;
	}
	
	public Page findPage(UserQuery query) {
        //XsqlBuilder syntax,please see http://code.google.com/p/rapid-xsqlbuilder
        // [column]为字符串拼接, {column}为使用占位符. [column]为使用字符串拼接,如username='[username]',偷懒时可以使用字符串拼接 
        // [column] 为PageRequest的属性
		String sql = "select t from User t where 1=1 "
			  	+ "/~ and t.password = {password} ~/"
			  	+ "/~ and t.selectPriv = {selectPriv} ~/"
			  	+ "/~ and t.insertPriv = {insertPriv} ~/"
			  	+ "/~ and t.updatePriv = {updatePriv} ~/"
			  	+ "/~ and t.deletePriv = {deletePriv} ~/"
			  	+ "/~ and t.createPriv = {createPriv} ~/"
			  	+ "/~ and t.dropPriv = {dropPriv} ~/"
			  	+ "/~ and t.reloadPriv = {reloadPriv} ~/"
			  	+ "/~ and t.shutdownPriv = {shutdownPriv} ~/"
			  	+ "/~ and t.processPriv = {processPriv} ~/"
			  	+ "/~ and t.filePriv = {filePriv} ~/"
			  	+ "/~ and t.grantPriv = {grantPriv} ~/"
			  	+ "/~ and t.referencesPriv = {referencesPriv} ~/"
			  	+ "/~ and t.indexPriv = {indexPriv} ~/"
			  	+ "/~ and t.alterPriv = {alterPriv} ~/"
			  	+ "/~ and t.showDbPriv = {showDbPriv} ~/"
			  	+ "/~ and t.superPriv = {superPriv} ~/"
			  	+ "/~ and t.createTmpTablePriv = {createTmpTablePriv} ~/"
			  	+ "/~ and t.lockTablesPriv = {lockTablesPriv} ~/"
			  	+ "/~ and t.executePriv = {executePriv} ~/"
			  	+ "/~ and t.replSlavePriv = {replSlavePriv} ~/"
			  	+ "/~ and t.replClientPriv = {replClientPriv} ~/"
			  	+ "/~ and t.sslType = {sslType} ~/"
			  	+ "/~ and t.sslCipher = {sslCipher} ~/"
			  	+ "/~ and t.x509Issuer = {x509Issuer} ~/"
			  	+ "/~ and t.x509Subject = {x509Subject} ~/"
			  	+ "/~ and t.maxQuestions = {maxQuestions} ~/"
			  	+ "/~ and t.maxUpdates = {maxUpdates} ~/"
			  	+ "/~ and t.maxConnections = {maxConnections} ~/"
				+ "/~ order by [sortColumns] ~/";

        //生成sql2的原因是为了不喜欢使用xsqlbuilder的同学，请修改生成器模板，删除本段的生成
        StringBuilder sql2 = new StringBuilder("select t from User t where 1=1 ");
        if(isNotEmpty(query.getHost())) {
            sql2.append(" and  t.host = :host ");
        }
        if(isNotEmpty(query.getUser())) {
            sql2.append(" and  t.user = :user ");
        }
        if(isNotEmpty(query.getPassword())) {
            sql2.append(" and  t.password = :password ");
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
        if(isNotEmpty(query.getReloadPriv())) {
            sql2.append(" and  t.reloadPriv = :reloadPriv ");
        }
        if(isNotEmpty(query.getShutdownPriv())) {
            sql2.append(" and  t.shutdownPriv = :shutdownPriv ");
        }
        if(isNotEmpty(query.getProcessPriv())) {
            sql2.append(" and  t.processPriv = :processPriv ");
        }
        if(isNotEmpty(query.getFilePriv())) {
            sql2.append(" and  t.filePriv = :filePriv ");
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
        if(isNotEmpty(query.getShowDbPriv())) {
            sql2.append(" and  t.showDbPriv = :showDbPriv ");
        }
        if(isNotEmpty(query.getSuperPriv())) {
            sql2.append(" and  t.superPriv = :superPriv ");
        }
        if(isNotEmpty(query.getCreateTmpTablePriv())) {
            sql2.append(" and  t.createTmpTablePriv = :createTmpTablePriv ");
        }
        if(isNotEmpty(query.getLockTablesPriv())) {
            sql2.append(" and  t.lockTablesPriv = :lockTablesPriv ");
        }
        if(isNotEmpty(query.getExecutePriv())) {
            sql2.append(" and  t.executePriv = :executePriv ");
        }
        if(isNotEmpty(query.getReplSlavePriv())) {
            sql2.append(" and  t.replSlavePriv = :replSlavePriv ");
        }
        if(isNotEmpty(query.getReplClientPriv())) {
            sql2.append(" and  t.replClientPriv = :replClientPriv ");
        }
        if(isNotEmpty(query.getSslType())) {
            sql2.append(" and  t.sslType = :sslType ");
        }
        if(isNotEmpty(query.getSslCipher())) {
            sql2.append(" and  t.sslCipher = :sslCipher ");
        }
        if(isNotEmpty(query.getX509Issuer())) {
            sql2.append(" and  t.x509Issuer = :x509Issuer ");
        }
        if(isNotEmpty(query.getX509Subject())) {
            sql2.append(" and  t.x509Subject = :x509Subject ");
        }
        if(isNotEmpty(query.getMaxQuestions())) {
            sql2.append(" and  t.maxQuestions = :maxQuestions ");
        }
        if(isNotEmpty(query.getMaxUpdates())) {
            sql2.append(" and  t.maxUpdates = :maxUpdates ");
        }
        if(isNotEmpty(query.getMaxConnections())) {
            sql2.append(" and  t.maxConnections = :maxConnections ");
        }
        if(isNotEmpty(query.getSortColumns())) {
            sql2.append(" order by :sortColumns ");
        }	
        
		return pageQuery(sql,query);
	}
	

}
