package vo;

import javax.persistence.*;

@Entity
@Table(name = "examine", schema = "exam")
public class ExamineEntity {
    private int exId;
    private Integer stuId;
    private int exStatus;
    private Integer departId;

    @Id
    @Column(name = "ex_id")
    public int getExId() {
        return exId;
    }

    public void setExId(int exId) {
        this.exId = exId;
    }

    @Basic
    @Column(name = "stu_id")
    public Integer getStuId() {
        return stuId;
    }

    public void setStuId(Integer stuId) {
        this.stuId = stuId;
    }

    @Basic
    @Column(name = "ex_status")
    public int getExStatus() {
        return exStatus;
    }

    public void setExStatus(int exStatus) {
        this.exStatus = exStatus;
    }

    @Basic
    @Column(name = "depart_id")
    public Integer getDepartId() {
        return departId;
    }

    public void setDepartId(Integer departId) {
        this.departId = departId;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ExamineEntity that = (ExamineEntity) o;

        if (exId != that.exId) return false;
        if (exStatus != that.exStatus) return false;
        if (stuId != null ? !stuId.equals(that.stuId) : that.stuId != null) return false;
        return departId != null ? departId.equals(that.departId) : that.departId == null;
    }

    @Override
    public int hashCode() {
        int result = exId;
        result = 31 * result + (stuId != null ? stuId.hashCode() : 0);
        result = 31 * result + exStatus;
        result = 31 * result + (departId != null ? departId.hashCode() : 0);
        return result;
    }
}
