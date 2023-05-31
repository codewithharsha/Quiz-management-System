<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
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
    <style>
        body {
            background-image: url('https://i.ibb.co/YpYBQXv/white-img-1.jpg');
            background-position:center;
            background-size: 100%;
            background-position: fixed;
        }
        .mytab {
            margin: 80px auto;
            padding: 30px;
            width: 600px;
            border-radius: 10px;
            box-shadow: 1px 1px 8px 0 grey;

        }
    </style>
</head>

<body>
<%@page import="java.sql.*"%>
<%@page import="java.time.LocalDate"%>
<%
    String uname = (String)session.getAttribute("username");
    String host = (String)session.getAttribute("host_name");
    int id = (int)session.getAttribute("myid");
    String qname = (String)session.getAttribute("quiz_name");
    String an = request.getParameter("1");
    int question_count = (int)session.getAttribute("count");
    String answ[] = (String [])session.getAttribute("result_array");
    int i=1;
    int correct = 0,wrong=0;
    String val,he,ans;
    if(question_count < 1){%>
        <jsp:forward page="index.jsp"/>
        <%
    }
    while(i <= question_count)
    {
        ans=answ[i];
        he = Integer.toString(i);
        val = request.getParameter(he);
        if(ans.equals(val)){
            correct++;
        }
        else{
            wrong++;
        }
        i++;
    }
try 
{ 
    LocalDate myObj = LocalDate.now();
    String date = myObj.toString();
    Class.forName("oracle.jdbc.driver.OracleDriver"); 
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123456");
    String str="insert into results values(?,?,?,?,?,?)";
    String u_name = (String)session.getAttribute("username");
    String user_mail = (String)session.getAttribute("email");
    PreparedStatement st = con.prepareStatement(str);
    st.setInt(1,id);
    st.setString(2,qname);
    st.setInt(3,correct);
    st.setString(4,user_mail);
    st.setString(5,u_name);
    st.setString(6,date);
    st.executeUpdate();
} 
catch(Exception e) 
{ 
    out.println(e);
}%>


<div class="mytab">
    <h3>Report</h3>
    <table style="width:100%">
        <tr>
            <td>User Name</td>
            <td>:</td>
            <td><%=uname%></td>
        </tr>
        <tr>
            <td>User Id</td>
            <td>:</td>
            <td><%=id%></td>
        </tr>
        <tr>
            <td>Quiz Name</td>
            <td>:</td>
            <td><%=qname%></td>
        </tr>
        <tr>
            <td>Host Name</td>
            <td>:</td>
            <td><%=host%></td>
        </tr>
        <tr>
            <td>Correct Answered</td>
            <td>:</td>
            <td><%=correct%></td>
        </tr>
        <tr>
            <td>Worng Aswered</td>
            <td>:</td>
            <td><%=wrong%></td>
        </tr>
        <tr>
            <td>Total Answred</td>
            <td>:</td>
            <td><%=question_count%></td>
        </tr>
        <tr>
            <td>Total Unanswred</td>
            <td>:</td>
            <td>0</td>
        </tr>
        <tr>
            <td>Marks Obtained</td>
            <td>:</td>
            <td><%=correct%></td>
        </tr>
        <tr>
            <td><button onclick="printpage()" class="btn btn-primary">Print</button></td>
            <td></td>
            <td><form action="exit_my_quiz.jsp"><button class="btn btn-success">Home</button></form></td>
        </tr>
    </table>
    <p style="color: red;">Note:please dont reload this page!!</p>
</div>
<% session.invalidate(); %>
<script>
    function printpage() {
        window.print();
    }
</script>
</body>

</html>