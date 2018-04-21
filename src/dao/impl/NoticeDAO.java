package dao.impl;

import dao.BaseDAO;
import dao.INoticeDAO;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;
import vo.NoticeEntity;

import java.util.List;

public class NoticeDAO extends BaseDAO implements INoticeDAO {
    @Override
    public boolean addNotice(NoticeEntity noticeEntity) {
        return saveEntity(noticeEntity);
    }

    @Override
    public List queryAllNotice(NoticeEntity noticeEntity) {

        return queryEntity(noticeEntity);
    }

    @Override
    public boolean removeNotice(NoticeEntity noticeEntity) {
        try{
            String hql="delete from NoticeEntity noti where noti.noticeId="+noticeEntity.getNoticeId();
            Session session = getSession();
            Transaction tx = session.beginTransaction();
            Query query = session.createQuery(hql);
            query.executeUpdate();
            tx.commit();
            return true;
        }catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public List queryNoticeAbout(NoticeEntity noticeEntity) {
        String hql="from NoticeEntity noti where noti.noticeId="+noticeEntity.getNoticeId();
        Session session=getSession();
        Query query=session.createQuery(hql);

        return query.getResultList();
    }
}
