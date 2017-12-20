package dao.impl;

import dao.BaseDAO;
import dao.IDepartmentDAO;
import org.hibernate.Session;
import org.hibernate.query.Query;
import vo.DepartmentEntity;

import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public class DepartMentDAO extends BaseDAO implements IDepartmentDAO {

    @Override
    public boolean addDepartment(DepartmentEntity departmentEntity) {
        return saveEntity(departmentEntity);
    }

    @Override
    public int findIdByDepartReg(DepartmentEntity departmentEntity) {
        String hql="select de.departId from DepartmentEntity de where de.departStaffName=? and de.departJobNum=?";
        Session session=getSession();
        Query query= session.createQuery(hql);
        query.setParameter(0,departmentEntity.getDepartStaffName());
        query.setParameter(1,departmentEntity.getDepartJobNum());
        List resultList=query.getResultList();
        AtomicInteger departId= new AtomicInteger((int) resultList.get(0));
        return departId.get();
    }
}
