package service.impl;

import dao.INoticeDAO;
import service.INoticeService;
import vo.NoticeEntity;

import java.util.List;

public class NoticeService implements INoticeService {
    private INoticeDAO noticeDAO;

    public INoticeDAO getNoticeDAO() {
        return noticeDAO;
    }

    public void setNoticeDAO(INoticeDAO noticeDAO) {
        this.noticeDAO = noticeDAO;
    }

    @Override
    public boolean addNotice(NoticeEntity noticeEntity) {
        return noticeDAO.addNotice(noticeEntity);
    }

    @Override
    public boolean removeNotice(NoticeEntity noticeEntity) {
        return noticeDAO.removeNotice(noticeEntity);
    }

    @Override
    public List queryAllNotice(NoticeEntity noticeEntity) {
        return noticeDAO.queryAllNotice(noticeEntity);
    }

    @Override
    public List queryNoticeAbout(NoticeEntity noticeEntity) {
        return noticeDAO.queryNoticeAbout(noticeEntity);
    }
}
