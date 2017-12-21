package vo;

import javax.persistence.*;
import java.sql.Timestamp;

@Entity
@Table(name = "signup", schema = "exam")
public class SignupEntity {
    private int signUpId;
    private int stuId;
    private int examId;
    private Timestamp signUpStartTime;
    private Timestamp signUpEndTime;

    @Id
    @Column(name = "signUp_id")
    public int getSignUpId() {
        return signUpId;
    }

    public void setSignUpId(int signUpId) {
        this.signUpId = signUpId;
    }

    @Basic
    @Column(name = "stu_id")
    public int getStuId() {
        return stuId;
    }

    public void setStuId(int stuId) {
        this.stuId = stuId;
    }

    @Basic
    @Column(name = "exam_id")
    public int getExamId() {
        return examId;
    }

    public void setExamId(int examId) {
        this.examId = examId;
    }

    @Basic
    @Column(name = "signUp_startTime")
    public Timestamp getSignUpStartTime() {
        return signUpStartTime;
    }

    public void setSignUpStartTime(Timestamp signUpStartTime) {
        this.signUpStartTime = signUpStartTime;
    }

    @Basic
    @Column(name = "signUp_endTime")
    public Timestamp getSignUpEndTime() {
        return signUpEndTime;
    }

    public void setSignUpEndTime(Timestamp signUpEndTime) {
        this.signUpEndTime = signUpEndTime;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        SignupEntity that = (SignupEntity) o;

        if (signUpId != that.signUpId) return false;
        if (stuId != that.stuId) return false;
        if (examId != that.examId) return false;
        if (signUpStartTime != null ? !signUpStartTime.equals(that.signUpStartTime) : that.signUpStartTime != null)
            return false;
        return signUpEndTime != null ? signUpEndTime.equals(that.signUpEndTime) : that.signUpEndTime == null;
    }

    @Override
    public int hashCode() {
        int result = signUpId;
        result = 31 * result + stuId;
        result = 31 * result + examId;
        result = 31 * result + (signUpStartTime != null ? signUpStartTime.hashCode() : 0);
        result = 31 * result + (signUpEndTime != null ? signUpEndTime.hashCode() : 0);
        return result;
    }
}
