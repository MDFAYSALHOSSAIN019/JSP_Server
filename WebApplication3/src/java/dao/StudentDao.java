
 
package dao;

import com.mysql.cj.xdevapi.Result;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Student;
import util.DbCon;


public class StudentDao {
    
    public static int  saveStudent(Student s) throws SQLException{
        int status=0;
        String sql="insert into student(firstName,lastName,subject,gender) values(?,?,?,?)";
    
        PreparedStatement ps=DbCon.getCon().prepareStatement(sql);
        
        ps.setString(1, s.getFirstName());
        ps.setString(2, s.getLastName());
        ps.setString(3, s.getSubject());
        ps.setString(4, s.getGender());
    
        status=ps.executeUpdate();
        ps.close();
        DbCon.getCon().close();        
        return status;
    } 
    
    public static List<Student> getAllStudent() throws SQLException{
    
    List<Student> studentList=new ArrayList<Student>();
    
    String sql="select * from student";
    
    PreparedStatement ps=DbCon.getCon().prepareStatement(sql);
        ResultSet rs=ps.executeQuery();
        
        while(rs.next()){
         Student s=new Student(
         rs.getInt("id"),
         rs.getString("firstName"),
          rs.getString("lastName"),
          rs.getString("subject"),
          rs.getString("gender")         
         );
        
         studentList.add(s);
        }
    
    return studentList;
        
        
    }
    
}
