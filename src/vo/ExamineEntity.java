package vo;

import javax.persistence.*;

@Entity
@Table(name = "examine", schema = "exam")
public class ExamineEntity {
    private int exId;
    private int stuId;
    private int exStatus;

    @Id
    @Column(name = "ex_id", nullable = false)
    public int getExId() {
        return exId;
    }

    public void setExId(int exId) {
        this.exId = exId;
    }

    @Basic
    @Column(name = "stu_id", nullable = false)
    public int getStuId() {
        return stuId;
    }

    public void setStuId(int stuId) {
        this.stuId = stuId;
    }

    @Basic
    @Column(name = "ex_status", nullable = false)
    public int getExStatus() {
        return exStatus;
    }

    public void setExStatus(int exStatus) {
        this.exStatus = exStatus;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ExamineEntity that = (ExamineEntity) o;

        if (exId != that.exId) return false;
        return stuId == that.stuId && exStatus == that.exStatus;
    }

    @Override
    public int hashCode() {
        int result = exId;
        result = 31 * result + stuId;
        result = 31 * result + exStatus;
        return result;
    }
}
