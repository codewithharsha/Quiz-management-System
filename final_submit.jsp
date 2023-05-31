<%@page import="java.sql.*"%>
<%
try{
    session.setAttribute("que_count",1);
    int myid = (int)session.getAttribute("myid");
    String uname = (String)session.getAttribute("username");
    String qn = (String)session.getAttribute("quiz_name");
    int qc = (int)session.getAttribute("que_count");
    String query = "insert into quizzes values(?,?,?,?)";
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "123456");
    PreparedStatement pst = con.prepareStatement(query);
    pst.setInt(1,myid);
    pst.setString(2,uname);
    pst.setString(3,qn);
    pst.setInt(4,qc);
    pst.executeQuery();
    response.sendRedirect("create_sucess_msg.jsp");
}
catch(Exception e)
{
    out.println(e);
}

%>