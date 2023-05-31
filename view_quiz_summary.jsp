<html>
<head>
    <title>
        <%String qname = request.getParameter("quiz_name");
        out.println(qname);%>
    </title>
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
    <div class="container quiz_div">
        <h2><%
            String q_n_ame = request.getParameter("quiz_name");
            out.println(q_n_ame+" report:");%></h2>
        <table class="avail m-auto">
            <tr>
            <th>S.No</th>
            <th>User Id</th>
            <th>User Name</th>
            <th>User Mail</th>
            <th>Score</th>
            <th>Date</th>
            </tr>
            <%@page import="java.sql.*"%>
            <%
             try{
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "123456");
                String query = "select * from results where QUIZ_NAME=?";
                PreparedStatement st = con.prepareStatement(query);
                st.setString(1,q_n_ame);
                ResultSet rs = st.executeQuery();
                int i=0;
                while(rs.next())
                {
                    i++;
                    int uid=rs.getInt(1);
                    String uname=rs.getString(5);
                    String umail=rs.getString(4);
                    String date=rs.getString(6);
                    int marks=rs.getInt(3);
                    %>
                    <tr>
                        <td><%=i%></td>
                        <td><%=uid%></td>
                        <td><%=uname%></td>
                        <td><%=umail%></td>
                        <td><%=marks%></td>
                        <td><%=date%></td>
                    </tr>
                <%}
             }
             catch(Exception e)
             {
                out.println(e);
             }
             %>
            </table><br>
            <button onclick="printpage()" class="btn btn-primary" style="margin-left: 500px;">Print</button>
        </div>
        <script>
            function printpage() {
                window.print();
            }
        </script>    
    </body>
</html>