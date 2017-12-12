package vo;

import javax.persistence.*;

@Entity
@Table(name = "student", schema = "exam")
public class StudentEntity {
    private int stuId;
    private String stuName;
    private String stuIdNum;
    private int stuPhone;
    private String stuEmail;

    @Id
    @Column(name = "stu_id", nullable = false)
    public int getStuId() {
        return stuId;
    }

    public void setStuId(int stuId) {
        this.stuId = stuId;
    }

    @Basic
    @Column(name = "stu_name", nullable = false, length = 32)
    public String getStuName() {
        return stuName;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName;
    }

    @Basic
    @Column(name = "stu_IdNum", nullable = false)
    public String getStuIdNum() {
        return stuIdNum;
    }

    public void setStuIdNum(String stuIdNum) {
        this.stuIdNum = stuIdNum;
    }

    @Basic
    @Column(name = "stu_phone", nullable = false)
    public int getStuPhone() {
        return stuPhone;
    }

    public void setStuPhone(int stuPhone) {
        this.stuPhone = stuPhone;
    }


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        StudentEntity that = (StudentEntity) o;

        if (stuId != that.stuId) return false;
        if (stuPhone != that.stuPhone) return false;
        if (stuName != null ? !stuName.equals(that.stuName) : that.stuName != null) return false;
        if (stuIdNum != null ? !stuIdNum.equals(that.stuIdNum) : that.stuIdNum != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = stuId;
        result = 31 * result + (stuName != null ? stuName.hashCode() : 0);
        result = 31 * result + (stuIdNum != null ? stuIdNum.hashCode() : 0);
        result = 31 * result + stuPhone;
        return result;
    }

    @Basic
    @Column(name = "stu_email", nullable = false, length = 32)
    public String getStuEmail() {
        return stuEmail;
    }

    public void setStuEmail(String stuEmail) {
        this.stuEmail = stuEmail;
    }
}
