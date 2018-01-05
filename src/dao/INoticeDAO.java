package dao;

import vo.NoticeEntity;

import java.util.List;

public interface INoticeDAO {
//    发布公告
    boolean addNotice(NoticeEntity noticeEntity);

//    删除公告
    boolean removeNotice(NoticeEntity noticeEntity);

//    查询全部
    List queryAllNotice(NoticeEntity noticeEntity);

//    查询公告具体内容
    List queryNoticeAbout(NoticeEntity noticeEntity);
}
