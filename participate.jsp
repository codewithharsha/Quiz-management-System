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
    <title>
        
    </title>
    <style>
        * {
            margin: 0%;
        }

        body {
            background-image: url('https://i.ibb.co/YpYBQXv/white-img-1.jpg');
            background-position:center;
            background-size: 100%;
            background-position: fixed;
        }

        .questions {
            /* border: 1px solid black; */
            width: 1200px;
            margin: 1% auto;
            padding: 10px;
            border-radius: 10px;
            background-color:lightyellow;
            box-shadow: 1px 1px 8px 0 grey;
        }

        .options {
            border: 1px solid skyblue;
            padding: 10px;
            margin: 4px;
            border-radius: 15px;
            background-color: lightblue;
            width: 98%;
            font-size: 20px;
        }

        .que {
            font-weight: bold;
            margin-right: 10px;
        }

        .btn {
            width: 80px;
            padding: 8px;
            margin-left: 400px;
        }

        .top-nav {
            background-color: whitesmoke;
            width: 100%;
            height: 100px;
            margin: 0%;
        }
        .uname-div{
            background-color: aquamarine;
            font-family: sans-serif;
            font-style: bold;
            padding: 10px;
            border-radius: 4px;
        }
        input[type='radio']{
        margin-top: 5px;
        width: 20px;
        height: 20px;
        }
        .reset-btn{
            width: 200px;
        }
    </style>
</head>

<body>
    <%@page import="java.sql.*"%>
    <%@page import="java.util.StringTokenizer"%>
    <%
    String name=request.getParameter("quiz"); 
    String uname = (String)session.getAttribute("username"); 
    if(name == null)
    {%>
        <jsp:forward page="join.jsp"/>
        <%
    }
    if(uname == null)
    {%>
        <jsp:forward page="index.jsp"/>
        <%
    }
    %>
    <nav class="navbar navbar-expand-lg navbar-light bg-primary sticky-top">
        <a class="navbar-brand" href="#">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <%String na = (String)session.getAttribute("username");%>
                    <div class="uname-div">User:<%=na%></div>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0" action="quit_my_quiz.jsp">
                <button class="btn btn-danger my-2 my-sm-0" type="submit">Quit</button>
            </form>
        </div>
    </nav>
    <!-- questions -->
    <%
    response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
    response.setHeader("Pragma","no-cache");
    response.setHeader("Expires","0");
    %>
    <%
    String v = request.getParameter("quiz");
    String one = request.getParameter("quiz");
    StringTokenizer stt = new StringTokenizer(one,",");
    String va = stt.nextToken();
    String va2 = stt.nextToken();
    session.setAttribute("quiz_name",va);
    session.setAttribute("host_name",va2);
    String query = "select QUESTION,OP1,OP2,OP3,OP4,ans from quiz_questions where QUIZ_TITLE=?";
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "123456");
    PreparedStatement pst = con.prepareStatement(query);
    pst.setString(1,va);
    ResultSet rs = pst.executeQuery();
    String[] answer =new String[100];
    int c=0;%>
    <form action="validate2.jsp" method="post">
        <%
        while(rs.next())
        {
        c++;
        session.setAttribute("count",c);
        String que = rs.getString(1),op1 = rs.getString(2),op2 = rs.getString(3),op3 = rs.getString(4),op4 = rs.getString(5),ans = rs.getString(6);
        answer[c] = ans;
        %>
        <div class="questions">
            <div style="text-align: center;">
            </div>
            <p>
            <h4><%=c+"."%><%=que%></h4>
            </p>
            <label class="options"><input type="radio" value="A" name="<%=c%>" required><%=op1%></label>
            <label class="options"><input type="radio" value="B" name="<%=c%>" required><%=op2%></label>
            <label class="options"><input type="radio" value="C" name="<%=c%>" required><%=op3%></label>
            <label class="options"><input type="radio" value="D" name="<%=c%>" required><%=op4%></label>
        </div>
       <%}
       session.setAttribute("result_array",answer);
       %>
       <div class="d-flex flex-row justify-content-around">
       <!-- <input type="submit" value="Reset" class="btn btn-danger reset-btn" style="margin-left: 40px;"><br><br> -->
       <input type="submit" value="submit" class="btn btn-success sub-btn" style="margin-left: 40px; width: 200px;">
      </div> <br><br>
    </form>
</body>

</html>