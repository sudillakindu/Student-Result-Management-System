public class Result {

    private Double rt;
    private String grade;

    //Constructor
    public Result(Double result) {
        this.rt = result;

        if (rt <= 24) {
            grade = "E" ;
        } else if (rt <= 29) {
            grade = "D" ;
        } else if (rt <= 34) {
            grade = "D+" ;
        } else if (rt <= 39) {
            grade = "C-" ;
        } else if (rt <= 44) {
            grade = "C" ;
        } else if (rt <= 49) {
            grade = "C+" ;
        } else if (rt <= 54) {
            grade = "B-" ;
        } else if (rt <= 59) {
            grade = "B" ;
        } else if (rt <= 64) {
            grade = "B+" ;
        } else if (rt <= 69) {
            grade = "A-" ;
        } else if (rt <= 84) {
            grade = "A" ;
        } else {
            grade = "A+" ;
        }

    }

    //Getter
    public Double getResult() {
        return rt;
    }
    public String getGrade() {
        return grade;
    }

}
