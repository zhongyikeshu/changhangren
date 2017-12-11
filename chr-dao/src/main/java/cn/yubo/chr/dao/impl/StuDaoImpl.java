package cn.yubo.chr.dao.impl;

import java.sql.SQLException;
import java.util.List;
import java.util.UUID;

import javax.management.Query;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Repository;



import cn.yubo.chr.dao.StuDao;
import cn.yubo.chr.domain.Student;
import cn.yubo.chr.domain.Xuanke;
@Repository
public class StuDaoImpl extends BaseDaoImpl<Xuanke> implements StuDao{

	
	public List query(String stuId, String classId) throws SQLException {
		
		String sql = "select s.name,k.className,x.score from xuanke x,student s,kecheng k where x.stuid=? and k.className = ? and s.stuId= x.stuId and x.classId = k.classId";
		/*String sql = "select * from xuanke where stuid=? and classId = ?";*/
		Configuration c = new Configuration().configure();
		SessionFactory factory = c.buildSessionFactory();
		Session session = factory.openSession();
		SQLQuery query = session.createSQLQuery(sql);
		query.setParameter(0, stuId);
		query.setParameter(1, classId);
		List list = query.list();
		session.close();
		return list;
		
		/*
		 * hql
		 * String hql = "from Xuanke  where student.stuid = ? and kecheng.classId = ? ";
		return (List<Xuanke>) this.getHibernateTemplate().find(hql, stuId,classId);*/
		
		
		
		
		/*Object uniqueResult = query.uniqueResult();*/
		
		/*
		 * QueryRunner
		 * QueryRunner runner = new QueryRunner();
		String sql = "select * from xuanke where stuid=? and classId = ?";
		return runner.query(sql, new BeanListHandler<Xuanke>(Xuanke.class), stuId,classId);*/
		
	}
	public List queryByStuId(String stuId) throws SQLException{
		String sql = "select s.name,k.className,x.score from xuanke x,student s,kecheng k where x.stuid=? and s.stuId= x.stuId and x.classId = k.classId";
		/*String sql = "select * from xuanke where stuid=? and classId = ?";*/
		Configuration c = new Configuration().configure();
		SessionFactory factory = c.buildSessionFactory();
		Session session = factory.openSession();
		SQLQuery query = session.createSQLQuery(sql);
		query.setParameter(0, stuId);
		
		List list = query.list();
		session.close();
		return list;
	}
	@Override
	public List queryByClassId(String classId) {
		String sql = "select s.name,k.className,x.score from xuanke x,student s,kecheng k where k.className=? and s.stuId= x.stuId and x.classId = k.classId";
		/*String sql = "select * from xuanke where stuid=? and classId = ?";*/
		Configuration c = new Configuration().configure();
		SessionFactory factory = c.buildSessionFactory();
		Session session = factory.openSession();
		SQLQuery query = session.createSQLQuery(sql);
		query.setParameter(0, classId);
		
		List list = query.list();
		session.close();
		return list;
		
	}
	@Override
	public void delete(String stuId, String classId) {
		String sql = "delete from xuanke  where stuId=? and classId = (select k.classId from kecheng k where k.className = ?)";
		Configuration c = new Configuration().configure();
		SessionFactory factory = c.buildSessionFactory();
		Session session = factory.openSession();
		session.getTransaction().begin();
		SQLQuery query = session.createSQLQuery(sql);
		query.setString(0,stuId);
		query.setString(1, classId);
		query.executeUpdate();
		session.getTransaction().commit();
		session.close();
	}
	@Override
	public void deleteByStuId(String stuId) {
		String sql = "delete from xuanke  where stuId=?";
		Configuration c = new Configuration().configure();
		SessionFactory factory = c.buildSessionFactory();
		Session session = factory.openSession();
		session.getTransaction().begin();
		SQLQuery query = session.createSQLQuery(sql);
		query.setString(0,stuId);
		
		query.executeUpdate();
		session.getTransaction().commit();
		session.close();
	}
	@Override
	public void deleteByClassId(String classId) {
		String sql = "delete from xuanke where classId=(select k.classId from kecheng k where k.className = ?)";
		Configuration c = new Configuration().configure();
		SessionFactory factory = c.buildSessionFactory();
		Session session = factory.openSession();
		session.getTransaction().begin();
		SQLQuery query = session.createSQLQuery(sql);
		query.setString(0,classId);
		
		query.executeUpdate();
		session.getTransaction().commit();
		session.close();
	}
	
	public void add(String stuId, String classId, Integer score) {
		 String s = UUID.randomUUID().toString();
		String sql = "insert into xuanke values(?,?,?,?)";
		Configuration c = new Configuration().configure();
		SessionFactory factory = c.buildSessionFactory();
		Session session = factory.openSession();
		SQLQuery query = session.createSQLQuery(sql);
		query.setString(0,s);
		query.setString(1,stuId);
		query.setString(2, classId);
		query.setInteger(3, score);
		query.executeUpdate();
		session.close();
		
	}

}
