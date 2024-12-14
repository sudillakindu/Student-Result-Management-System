import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.Objects;

public class StudentResultManagementSystemGui extends JFrame {

    private DefaultListModel<String> listModel;
    private JList<String> studentList;

    private JPasswordField loginPenalPasswordField;
    private JFrame frameMain,frameView,frameLogin;
    private JLabel studentIdLabel,studentNameLabel,courseIdLabel,subjectNameLabel,resultLabel,loginPenalUserNameLabel,loginPenalPasswordLabel;
    private JTextField studentIdField,studentNameField,subjectNameField,resultField,loginPenalUserNameField;
    private JComboBox<String> courseIdComboBox;
    private JButton addButton,viewAllStudentsButton,deleteStudentsButton,loginButton;
    private ImageIcon titleImageMain,titleImageView,image;

    public StudentResultManagementSystemGui() {

//Login Frame
        frameLogin = new JFrame("Login Penal");
        //frameLogin.setBackground(Color.GREEN);
        frameLogin.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frameLogin.setSize(300, 250);
        frameLogin.setLayout(new GridLayout(5, 1, 5, 5));

        titleImageMain = new ImageIcon("student.png");
        frameLogin.setIconImage(titleImageMain.getImage());
        //frameLogin.getContentPane().setBackground(Color.YELLOW);

//Main Frame
        frameMain = new JFrame("Student Result Management System");
        //frameMain.setBackground(Color.GREEN);
        frameMain.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        frameMain.setSize(500, 375);
        frameMain.setLayout(new GridLayout(6, 2, 5, 5));

        titleImageMain = new ImageIcon("student.png");
        frameMain.setIconImage(titleImageMain.getImage());
        //frameMain.getContentPane().setBackground(Color.YELLOW);

//View All Frame (Action Button)
        frameView = new JFrame("Displaying all students");
        frameView.setSize(800, 300);
        frameView.setLayout(new BorderLayout());

        titleImageView = new ImageIcon("student.png");
        frameView.setIconImage(titleImageView.getImage());
        //frameView.getContentPane().setBackground(Color.YELLOW);

//Initialize List Model
        listModel = new DefaultListModel<>();
        studentList = new JList<>(listModel);

//Login Penal
        loginPenalUserNameLabel = new JLabel("Username :");
        loginPenalUserNameField = new JTextField();

        loginPenalPasswordLabel = new JLabel("Password :");
        loginPenalPasswordField = new JPasswordField();

//Student ID
        studentIdLabel = new JLabel("             Student ID                 :");
        studentIdField = new JTextField();

//Student Name
        studentNameLabel = new JLabel("             Student Name          :");
        studentNameField = new JTextField();

//Course ID (With Combo Box)
        courseIdLabel = new JLabel("             Course ID                  :");
        String[] courses = {"CSE101", "CSE102", "CSE103"};
        courseIdComboBox = new JComboBox<>(courses);

//Subject Name
        subjectNameLabel = new JLabel("             Subject Name          :");
        subjectNameField = new JTextField();

//Result
        resultLabel = new JLabel("              Result                       :");
        resultField = new JTextField();

//Button (Add student / View all students)
        addButton = new JButton("Add student");
        viewAllStudentsButton = new JButton("View all students");
        deleteStudentsButton = new JButton("Delete student");

        //Login Penal
        loginButton = new JButton("Login");

//Main Frame Functions
        frameMain.add(studentIdLabel);
        frameMain.add(studentIdField);
        frameMain.add(studentNameLabel);
        frameMain.add(studentNameField);
        frameMain.add(courseIdLabel);
        frameMain.add(courseIdComboBox);
        frameMain.add(subjectNameLabel);
        frameMain.add(subjectNameField);
        frameMain.add(resultLabel);
        frameMain.add(resultField);

        frameMain.add(addButton);
        frameMain.add(viewAllStudentsButton);

        frameMain.setLocationRelativeTo(null);
        //frameMain.setVisible(true);

//Login Frame Functions
        frameLogin.add(loginPenalUserNameLabel);
        frameLogin.add(loginPenalUserNameField);
        frameLogin.add(loginPenalPasswordLabel);
        frameLogin.add(loginPenalPasswordField);

        frameLogin.add(loginButton);

        frameLogin.setLocationRelativeTo(null);
        frameLogin.setVisible(true);

//View All Button Functions
        frameView.add(new JScrollPane(studentList),BorderLayout.CENTER);
        frameView.add(deleteStudentsButton, BorderLayout.SOUTH);

//Check Login Button
        loginButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {

                String userName = loginPenalUserNameField.getText();
                String password = loginPenalPasswordField.getText();

                if (Objects.equals(userName, "123") && Objects.equals(password, "123")) {
                    frameLogin.setVisible(false);
                    frameMain.setVisible(true);
                } else {
                    JOptionPane.showMessageDialog(frameMain, "Invalid Username or Password!", "Warning", JOptionPane.WARNING_MESSAGE);
                    loginPenalUserNameField.setText("");
                    loginPenalPasswordField.setText("");
                }

            }
        });

//Check Add Button
        addButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {

//Handle adding a student
                String studentId = studentIdField.getText();
                String studentName = studentNameField.getText();
                int courseId = courseIdComboBox.getSelectedIndex();
                String subjectName = subjectNameField.getText();
                double resultId;

                try {
                    resultId = Double.parseDouble(resultField.getText());
                    if (resultId < 0 || resultId > 100){
                        JOptionPane.showMessageDialog(frameMain, "Invalid result!", "Warning", JOptionPane.WARNING_MESSAGE);
                        return;
                    }

                    Student student = new Student(studentId,studentName);
                    Course course = new Course(courseId,subjectName);
                    Result result = new Result(resultId);

                    listModel.addElement("Student Id : " + student.getsId() + " || Student Name : " + student.getsName() + " || Course Name : " + course.getCourseName() + " || Subject Name : " + course.getSubjectName() + " || Result : " + result.getResult() + " || Grade : " + result.getGrade());

                } catch (NumberFormatException E) {
                    JOptionPane.showMessageDialog(frameMain, "Invalid result format!", "Error", JOptionPane.ERROR_MESSAGE);
                    return;
                }

                JOptionPane.showMessageDialog(frameMain, "Student added successfully!", "Successful", JOptionPane.INFORMATION_MESSAGE);

                studentIdField.setText("");
                studentNameField.setText("");
                courseIdComboBox.setSelectedIndex(0);
                subjectNameField.setText("");
                resultField.setText("");

            }
        });

//Check View All Students Button
        viewAllStudentsButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                frameView.setVisible(true);
            }
        });

//Check Delete Students Button
        deleteStudentsButton.addActionListener(new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                int deleteStudent = studentList.getSelectedIndex();

                if (deleteStudent != -1) {
                    listModel.remove(deleteStudent);
                }

            }
        });

    }

}

