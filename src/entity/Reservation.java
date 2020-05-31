package entity;

public class Reservation {
    private String resOrderNo;
    private String empNo;
    private String userNo;
    private String bookDate;

    public String getResOrderNo() {
        return resOrderNo;
    }

    public void setResOrderNo(String resOrderNo) {
        this.resOrderNo = resOrderNo;
    }

    public String getEmpNo() {
        return empNo;
    }

    public void setEmpNo(String empNo) {
        this.empNo = empNo;
    }

    public String getUserNo() {
        return userNo;
    }

    public void setUserNo(String userNo) {
        this.userNo = userNo;
    }

    public String getBookDate() {
        return bookDate;
    }

    public void setBookDate(String bookDate) {
        this.bookDate = bookDate;
    }
}
