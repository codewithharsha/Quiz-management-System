<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
    <title>lbrcequiz.in</title>
    <style>
        th,
        td {
            padding-top: 10px;
            padding-bottom: 20px;
            padding-left: 30px;
            padding-right: 40px;
        }
        .avail{
            width: 100%;
        }
        table,th,td {
            border: 1px solid black;
            border-collapse: collapse;
            text-align: center;
            margin-top: 50px;
            margin-bottom: 50px;
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
    <%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
    response.setHeader("Pragma","no-cache");
    response.setHeader("Expires","0");
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
                    <a class="nav-link" href="index2.jsp">Home <span class="sr-only">(current)</span></a>
                </li>
                <li>
                    <a class="nav-link active" href="profile.jsp">Dashboard</a>
                </li>
                <li>
                    <a class="nav-link active" href="takename.jsp">Host A Quiz</a>
                </li>
                <li>
                    <a class="nav-link active" href="">Join A Quiz</a>
                </li>
            </ul>
            <div class="form-inline my-2 my-lg-0">
                <form action="logout.jsp">
                    <input class="btn btn-danger my-2 my-sm-0 m-2" type="submit" value="Log Out">
                </form>
                <img src="https://cdn-icons-png.flaticon.com/512/709/709722.png" height="30px" class="" />
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
<div class="container quiz_div">
    <h2>Available Quizzes right now are..</h2>
    <table class="avail m-auto">
        <%@page import="java.sql.*"%>
        <%
         try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "123456");
            String query = "select quiz_name,host_name from quizzes where quiz_name not in(select quiz_name from results where user_id=?)";
            PreparedStatement st = con.prepareStatement(query);
            int p = (int)session.getAttribute("myid");
            st.setInt(1,p);
            ResultSet rs = st.executeQuery();
            while(rs.next())
            {%>
                <tr>
                    <td>
                    <%
                        String an = rs.getString(1);
                        out.println(an);
                        %>
                    </td>
                    <td>
                        <%
                        String hn = rs.getString(2);
                        out.println("By: "+hn);
                        %>
                    </td>
                    <td><form action="participate.jsp"><button class="btn btn-success" value="<%=an%>,<%=hn%>" name="quiz">Start now</button></td></form>
                </tr>
            <%}
         }
         catch(Exception e)
         {
            out.println(e);
         }
         %>
        </table>
    </div><br><br>


    <!-- footer -->
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
        <h4>Created by <img
                src="https://www.freepnglogos.com/uploads/copyright/copyright-symbol-intellectual-vector-graphic-pixabay-34.png"
                height="25px" width="25px" /> <a
                href="https://www.linkedin.com/in/harsha-vardhan-reddy-munnangi-378879230"
                style="text-decoration: none;">M.Harsha Vardhan Reddy</a></h4>
    </div>
</body>

</html>