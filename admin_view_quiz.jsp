<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Quizzes</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
        integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous"><script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script><script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script><script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"
        integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV"

        crossorigin="anonymous"></script>
        <style>
        .mytab {
            margin: 30px auto;
            padding: 30px;
            width: 800px;
            border-radius: 10px;
            box-shadow: 1px 1px 8px 0 grey;
        }
    </style>
</head>
<body>
    <%@page import="java.sql.*"%>
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
                        <a class="nav-link active" href="profile.jsp">Dashboard</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="takename.jsp">Host A Quiz</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" href="join.jsp">Join A Quiz</a>
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
    <div class="mytab">
        <h3>Active Quizzes</h3>
            <table style="width: 100%;">
                <% 
                try
                {
                    Class.forName("oracle.jdbc.driver.OracleDriver");
                    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123456");
                    String str = "select unique quiz_title from quiz_questions";
                    PreparedStatement st = con.prepareStatement(str);
                    ResultSet rs = st.executeQuery();
                    while(rs.next())
                    {
                        String title = rs.getString(1);%>
                    <tr>
                        <td>
                            <%out.println(title);%>
                        </td>
                        <td style="text-align: right;">
                            <form action="view_quiz_summary.jsp">
                                <button class="btn btn-success" value="<%=title%>" name="quiz_name">View Report</button>
                            </form>
                        </td>
                        <td>
                            <form action="delete_quiz.jsp" method="post">
                                <button class="btn btn-danger" value="<%=title%>" name="delete">Delete</button>
                            </form>
                        </td>
                    </tr>
                    <%
                    }
                }
                catch(Exception e)
                {
                    out.println(e);
                }%>
            </table>
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