package vo;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name = "studentsignup", schema = "exam")
public class StudentsignupEntity {
    private int stuId;
    private int stuSignUpId;
    private int signUpId;
    private Timestamp signUpTime;

    @Basic
    @Column(name = "stu_id")
    public int getStuId() {
        return stuId;
    }

    public void setStuId(int stuId) {
        this.stuId = stuId;
    }

    @Id
    @Column(name = "stuSignUp_id")
    public int getStuSignUpId() {
        return stuSignUpId;
    }

    public void setStuSignUpId(int stuSignUpId) {
        this.stuSignUpId = stuSignUpId;
    }

    @Basic
    @Column(name = "signUp_id")
    public int getSignUpId() {
        return signUpId;
    }

    public void setSignUpId(int signUpId) {
        this.signUpId = signUpId;
    }

    @Basic
    @Column(name = "signUp_time")
    public Timestamp getSignUpTime() {
        return signUpTime;
    }

    public void setSignUpTime(Timestamp signUpTime) {
        this.signUpTime = signUpTime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        StudentsignupEntity that = (StudentsignupEntity) o;

        if (stuId != that.stuId) return false;
        if (stuSignUpId != that.stuSignUpId) return false;
        if (signUpId != that.signUpId) return false;
        return signUpTime != null ? signUpTime.equals(that.signUpTime) : that.signUpTime == null;
    }

    @Override
    public int hashCode() {
        int result = stuId;
        result = 31 * result + stuSignUpId;
        result = 31 * result + signUpId;
        result = 31 * result + (signUpTime != null ? signUpTime.hashCode() : 0);
        return result;
    }
}
