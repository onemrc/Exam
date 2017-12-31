package vo;

import javax.persistence.*;

@Entity
@Table(name = "exam", schema = "exam")
public class ExamEntity {
    private int examId;
    private String examName;
    private int categoryId;
    private String examTime;
    private String examPlace;

    @Id
    @Column(name = "exam_id")
    public int getExamId() {
        return examId;
    }

    public void setExamId(int examId) {
        this.examId = examId;
    }

    @Basic
    @Column(name = "exam_name")
    public String getExamName() {
        return examName;
    }

    public void setExamName(String examName) {
        this.examName = examName;
    }

    @Basic
    @Column(name = "category_id")
    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    @Basic
    @Column(name = "exam_time")
    public String getExamTime() {
        return examTime;
    }

    public void setExamTime(String examTime) {
        this.examTime = examTime;
    }

    @Basic
    @Column(name = "exam_place")
    public String getExamPlace() {
        return examPlace;
    }

    public void setExamPlace(String examPlace) {
        this.examPlace = examPlace;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ExamEntity that = (ExamEntity) o;

        if (examId != that.examId) return false;
        if (categoryId != that.categoryId) return false;
        if (examName != null ? !examName.equals(that.examName) : that.examName != null) return false;
        if (examTime != null ? !examTime.equals(that.examTime) : that.examTime != null) return false;
        return examPlace != null ? examPlace.equals(that.examPlace) : that.examPlace == null;
    }

    @Override
    public int hashCode() {
        int result = examId;
        result = 31 * result + (examName != null ? examName.hashCode() : 0);
        result = 31 * result + categoryId;
        result = 31 * result + (examTime != null ? examTime.hashCode() : 0);
        result = 31 * result + (examPlace != null ? examPlace.hashCode() : 0);
        return result;
    }
}
