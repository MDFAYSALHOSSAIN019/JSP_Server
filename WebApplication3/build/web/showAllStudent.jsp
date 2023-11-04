<%@include  file="Hedder.jsp" %>

<%@taglib prefix="faysal" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.Student" %>
<%@page import="java.util.*" %>
<%@page import="dao.StudentDao" %>

<%
   List<Student> list=StudentDao.getAllStudent();
    request.setAttribute("list", list);
%>


<div class="container my-3 py-2">
    <div class="bg-success text-center">
        <h1 class="jumborton">Show  All Student</h1>
    </div>

    <table class="table table-striped mb-3">
        <thead>
            <tr>
                <th scope="col">ID</th>
                <th scope="col">First Name</th>
                <th scope="col">Last Name</th>
                <th scope="col">Subject</th>
                <th scope="col">Gender</th>
                <th scope="col">Action</th>
            </tr>
        </thead>

        <tbody>
            
            <faysal:forEach items="${list}" var="s">
                <tr>
                    <td>${s.getId()}</td>   
                    <td>${s.getFirstName()}</td>   
                    <td>${s.getLastName()}</td>   
                    <td>${s.getSubject()}</td>   
                    <td>${s.getGender()}</td> 
                    <td>
                        <button type="submit" class="btn btn-primary">Edit</button>
                        <button type="submit" class="btn btn-warning">Delete</button>
                        
                    </td>                    
                </tr>
        
            </faysal:forEach>> 
 
        </tbody>

    </table>

</div>

<div class="mb-3">

</div>