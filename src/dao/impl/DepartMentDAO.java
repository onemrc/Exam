package dao.impl;

import dao.BaseDAO;
import dao.IDepartmentDAO;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import vo.DepartmentEntity;
import vo.ExamineEntity;

import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public class DepartMentDAO extends BaseDAO implements IDepartmentDAO {

    @Override
    public boolean addDepartment(DepartmentEntity departmentEntity) {
        return saveEntity(departmentEntity);
    }

    @Override
    public int findIdByDepartReg(DepartmentEntity departmentEntity) {
        String hql = "select de.departId from DepartmentEntity de where de.departStaffName=? and de.departJobNum=?";
        Session session = getSession();
        Query query = session.createQuery(hql);
        query.setParameter(0, departmentEntity.getDepartStaffName());
        query.setParameter(1, departmentEntity.getDepartJobNum());
        List resultList = query.getResultList();
        AtomicInteger departId = new AtomicInteger((int) resultList.get(0));
        return departId.get();
    }

    @Override
    public List queryAllRegDepart(DepartmentEntity departmentEntity, ExamineEntity examineEntity) {
        String hql="select de from DepartmentEntity de,ExamineEntity ex where de.departId=ex.departId and ex.exStatus=1";
        Session session = getSession();
        Query query = session.createQuery(hql);
        return query.getResultList();
    }

    @Override
    public boolean removeDepart(DepartmentEntity departmentEntity) {
        try {
            String hql = "delete from DepartmentEntity de where de.departId=" + departmentEntity.getDepartId();
            Session session = getSession();
            Transaction tx = session.beginTransaction();
            Query query = session.createQuery(hql);
            query.executeUpdate();
            tx.commit();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
