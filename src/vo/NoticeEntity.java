package vo;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name = "notice", schema = "exam")
public class NoticeEntity {
    private int noticeId;
    private String noticeTitle;
    private String noticeAbout;
    private Timestamp publishesTime;

    @Id
    @Column(name = "notice_id")
    public int getNoticeId() {
        return noticeId;
    }

    public void setNoticeId(int noticeId) {
        this.noticeId = noticeId;
    }

    @Basic
    @Column(name = "notice_title")
    public String getNoticeTitle() {
        return noticeTitle;
    }

    public void setNoticeTitle(String noticeTitle) {
        this.noticeTitle = noticeTitle;
    }

    @Basic
    @Column(name = "notice_about")
    public String getNoticeAbout() {
        return noticeAbout;
    }

    public void setNoticeAbout(String noticeAbout) {
        this.noticeAbout = noticeAbout;
    }

    @Basic
    @Column(name = "publishes_time")
    public Timestamp getPublishesTime() {
        return publishesTime;
    }

    public void setPublishesTime(Timestamp publishesTime) {
        this.publishesTime = publishesTime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        NoticeEntity that = (NoticeEntity) o;

        if (noticeId != that.noticeId) return false;
        if (noticeTitle != null ? !noticeTitle.equals(that.noticeTitle) : that.noticeTitle != null) return false;
        if (noticeAbout != null ? !noticeAbout.equals(that.noticeAbout) : that.noticeAbout != null) return false;
        return publishesTime != null ? publishesTime.equals(that.publishesTime) : that.publishesTime == null;
    }

    @Override
    public int hashCode() {
        int result = noticeId;
        result = 31 * result + (noticeTitle != null ? noticeTitle.hashCode() : 0);
        result = 31 * result + (noticeAbout != null ? noticeAbout.hashCode() : 0);
        result = 31 * result + (publishesTime != null ? publishesTime.hashCode() : 0);
        return result;
    }
}
