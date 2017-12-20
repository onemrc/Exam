package vo;

import javax.persistence.*;

@Entity
@Table(name = "department", schema = "exam")
public class DepartmentEntity {
    private int departId;
    private int departJobNum;
    private String departUnit;
    private String departStaffName;
    private String departEmail;

    @Id
    @Column(name = "depart_id")
    public int getDepartId() {
        return departId;
    }

    public void setDepartId(int departId) {
        this.departId = departId;
    }

    @Basic
    @Column(name = "depart_jobNum")
    public int getDepartJobNum() {
        return departJobNum;
    }

    public void setDepartJobNum(int departJobNum) {
        this.departJobNum = departJobNum;
    }

    @Basic
    @Column(name = "depart_unit")
    public String getDepartUnit() {
        return departUnit;
    }

    public void setDepartUnit(String departUnit) {
        this.departUnit = departUnit;
    }

    @Basic
    @Column(name = "depart_staff_name")
    public String getDepartStaffName() {
        return departStaffName;
    }

    public void setDepartStaffName(String departStaffName) {
        this.departStaffName = departStaffName;
    }

    @Basic
    @Column(name = "depart_email")
    public String getDepartEmail() {
        return departEmail;
    }

    public void setDepartEmail(String departEmail) {
        this.departEmail = departEmail;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        DepartmentEntity that = (DepartmentEntity) o;

        if (departId != that.departId) return false;
        if (departJobNum != that.departJobNum) return false;
        if (departUnit != null ? !departUnit.equals(that.departUnit) : that.departUnit != null) return false;
        if (departStaffName != null ? !departStaffName.equals(that.departStaffName) : that.departStaffName != null)
            return false;
        return departEmail != null ? departEmail.equals(that.departEmail) : that.departEmail == null;
    }

    @Override
    public int hashCode() {
        int result = departId;
        result = 31 * result + departJobNum;
        result = 31 * result + (departUnit != null ? departUnit.hashCode() : 0);
        result = 31 * result + (departStaffName != null ? departStaffName.hashCode() : 0);
        result = 31 * result + (departEmail != null ? departEmail.hashCode() : 0);
        return result;
    }
}
