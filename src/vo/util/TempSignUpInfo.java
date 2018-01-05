package vo.util;

/**
 * 这是一个临时用来存放报名信息和考试信息多表查询的实体类
 */
public class TempSignUpInfo {
    private int signUpId;
    private String examName;
    private String examTime;
    private String signUpPutTime;
    private String signUpStartTime;
    private String signUpEndTime;
    private String examPlace;

    public String getExamPlace() {
        return examPlace;
    }

    public void setExamPlace(String examPlace) {
        this.examPlace = examPlace;
    }

    public int getSignUpId() {
        return signUpId;
    }

    public void setSignUpId(int signUpId) {
        this.signUpId = signUpId;
    }

    public String getExamName() {
        return examName;
    }

    public void setExamName(String examName) {
        this.examName = examName;
    }

    public String getExamTime() {
        return examTime;
    }

    public void setExamTime(String examTime) {
        this.examTime = examTime;
    }

    public String getSignUpPutTime() {
        return signUpPutTime;
    }

    public void setSignUpPutTime(String signUpPutTime) {
        this.signUpPutTime = signUpPutTime;
    }

    public String getSignUpStartTime() {
        return signUpStartTime;
    }

    public void setSignUpStartTime(String signUpStartTime) {
        this.signUpStartTime = signUpStartTime;
    }

    public String getSignUpEndTime() {
        return signUpEndTime;
    }

    public void setSignUpEndTime(String signUpEndTime) {
        this.signUpEndTime = signUpEndTime;
    }
}
