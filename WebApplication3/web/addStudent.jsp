<%@include  file="Hedder.jsp" %>
<div class="container-fluid mt-3">
    <div class="bg-info text-light text-center"><h3><b>Student's Regestation Form</b></h3> </div>

    <form action="addStudentDoaClass.jsp" mathod="post">
        <div class="row">
            <div class="col-md-6">
                <label for="exampleInputEmail1" class="form-label"><h4><b>First Name</b></h4></label><br>
                <input type="text" class="form-control" id="firstName" name="firstName" placeholder="First Name">

            </div>
            <div class="col-md-6">
                <label for="exampleInputEmail1" class="form-label"><h4><b>Last Name</b></h4></label><br>
                <input type="text" class="form-control" id="lastName" name="lastName" placeholder="Last Name">

            </div>

        </div>
        <div class="row mt-3">
            <div class="col-md-6">
                <label for="exampleInputEmail1" class="form-label"><h4><b>Subject</b></h4></label><br>
                <select class="form-select" name="subject" aria-label="Default select example">
                    <option selected>select one</option>
                    <option value="JEE">JEE</option>
                    <option value="GAVE">GAVE</option>
                    <option value="C#">C#</option>
                    <option value="HTML">HTML</option>
                </select>

            </div>
            <div class="col-md-6">
                <label for="exampleInputEmail1" class="form-label"><h4><b>Gender</b></h4></label><br>
                <div class="form-check">
                    <input class="form-check-input" type="radio" value="Male" name="gender" id="gender">
                        <label class="form-check-label" for="flexRadioDefault1">
                        Male
                    </label>                   
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" value="Female" name="gender" id="gender">
                        <label class="form-check-label" for="flexRadioDefault1">
                        Female
                    </label>                   
                </div>

            </div>
            <div class="text-center">
                <button type="submit" class="btn btn-success text-center m-5" >save</button>
                 <button type="reset" class="btn btn-danger text-center" >Reset</button>
            </div>
         

        </div>



    </form>



</div>



