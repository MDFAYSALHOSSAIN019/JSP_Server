
package model;


public class Student {
    
    private int id;
    private String firstName;
    private String lastName;
    private String subject;

    public Student(int id, String firstName, String lastName, String subject, String gender) {
        this.id = id;
        this.firstName = firstName;
        this.lastName = lastName;
        this.subject = subject;
        this.gender = gender;
    }
    private String gender;

    public Student() {
    }

    public Student(String firstName, String lastName, String subject, String gender) {
        this.firstName = firstName;
        this.lastName = lastName;
        this.subject = subject;
        this.gender = gender;
    }

    public int getId() {
        return id;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public String getSubject() {
        return subject;
    }

    public String getGender() {
        return gender;
    }

    public void setId(int id) {
        this.id = id;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    @Override
    public String toString() {
        return "student{" + "id=" + id + ", firstName=" + firstName + ", lastName=" + lastName + ", subject=" + subject + ", gender=" + gender + '}';
    }
    
    
    
    
}
