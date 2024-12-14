public class Course  {

    private int cId;
    private String suName;
    private String CName;

    //Constructor
    public Course(int courseId, String  subjectName) {
        this.cId = courseId;
        this.suName = subjectName;

        if (cId == 0) {
            CName = "CSE101" ;
        } else if (cId == 1) {
            CName = "CSE102" ;
        } else if (cId == 2) {
            CName = "CSE103" ;
        }

    }

    //Getter
    public String getCourseName() {
        return CName;
    }
    public String getSubjectName() {
        return suName;
    }

}
