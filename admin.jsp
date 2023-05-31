<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Contact Us</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"
        crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://demo.voidcoders.com/htmldemo/fitgear/main-files/assets/css/animate.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

        <style>
           .checked {
            color: orange;
        }
        .white{
          color:rgb(240, 205, 205);
          
        }
          .left{
            left:0;
          }
          .nava:hover{
            background-color: rgb(243, 41, 41);
            background-position: 10;
          }
          .parev{
            /* padding: 2px -100px; */
            background-color: rgb(102, 253, 102);
            position:absolute !important;
          }
          .map-container-3{
  overflow:hidden;
  padding-bottom:56.25%;
  position:relative;
  height:0;
}
.map-container-3 iframe{
  left:0;
  top:0;
  height:100%;
  width:100%;
  position:absolute;
}
        </style>
  </head>
<body>
    <%
    String name=(String)session.getAttribute("username"); 
    if(name == null)
    {%>
        <jsp:forward page="index.jsp"/>
        <%
    }
    %>
    <nav class="navbar navbar-expand-lg navbar-dark bg-primary sticky-top p-2">
        <div class="container">
            <a class="navbar-brand" href="#">lbrcequiz.in</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="admin.jsp">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="dashboard_admin.jsp">Dashboard</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="takename.jsp">Host A Quiz</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="join_admin.jsp">Join A Quiz</a>
                    </li>
                </ul>
                <div class="form-inline my-2 my-lg-0">
                    <form action="logout.jsp">
                    <input class="btn btn-danger my-2 my-sm-0 m-2" type="submit" value="Log Out">
                    </form>
                    <img src="https://cdn-icons-png.flaticon.com/512/709/709722.png" height="30px" class=""/>
                    <h5 class="m-1">
                        <%
                            String na = (String)session.getAttribute("username");
                            out.println(na);
                        %>
                    </h5>
                </div>
            </div>
        </div>
    </nav>
  <div class="container  pt-5">
    <div class="row text-center  mt-5  pt-4">
      <div class="col-12  col-md-6 ">
        <h4 class="">
          <img height="300px" width="500px" src="https://static.vecteezy.com/system/resources/previews/003/523/410/original/illustration-business-finance-ecommerce-admin-customer-service-calling-consumers-complain-people-character-flat-design-style-vector.jpg">
          <a href="manage.jsp">Customer Management</a></h4>
        </div>
        
        <div class="col-12  mt-4  col-md-6 ">
          <img height="280px" width="500px" src="https://img.freepik.com/free-vector/business-people-working-giving-tasks_1262-19728.jpg?size=626&ext=jpg&ga=GA1.1.760075994.1685332858&semt=sph">
          
          <h4 class="pt-1"><a href="manageadmins.jsp">Administration Management</a></h4>
        </div>
      </div>
      <div class="row text-center pt-4">
        <div class="col-12 col-md-6 ">
    <img height="300px"  width="400px" src="https://icons.iconarchive.com/icons/custom-icon-design/pretty-office-3/256/Add-Male-User-icon.png" alt="image">
    <h4 class=""><a href="add_user.html">Add User/Admin</a></h4>
  </div>
  
  <div class="col-12 col-md-6 ">
    <img height="300px"  width="400px" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjOWvP3ok1k3eBNP8FCrBelPSKUhr_gp1N3-AymTbgiRu3m_c&s" alt="image">
    <h4 class=""><a href="admin_view_quiz.jsp">View All Quizzes</a></h4>
  </div>
</div>
</div>
</div>
</div>
<div class="d-flex flex-row justify-content-around pt-5 bg-secondary">
  <div class="d-flex flex-column justify-content-start">
      <h4>Contac Us</h4>
      <p>lbrcequiz.in office,<br>YSR,Complex<br>NTR District<br>Vijayawada<br>Andhra Pradesh<br>India.</p>
  </div>
  <div class="d-flex flex-column justify-content-start">
      <h4>Quick Links</h4>
      <a>Home</a>
      <a>Sign In</a>
      <a>Login</a>
  </div>
  <div class="d-flex flex-column justify-content-start">
      <h4>Quick Links</h4>
      <a>Facebook</a>
      <a>Instagram</a>
      <a>Twitter</a>
      <a>LinkedIn</a>
  </div>

</div>
<div class="d-flex flex-row justify-content-center bg-secondary">
  <h4>Created by <img src="https://www.freepnglogos.com/uploads/copyright/copyright-symbol-intellectual-vector-graphic-pixabay-34.png" height="25px" width="25px"/> <a href="https://www.linkedin.com/in/harsha-vardhan-reddy-munnangi-378879230" style="text-decoration: none;">M.Harsha Vardhan Reddy</a></h4>
</div>

</body>
</html>