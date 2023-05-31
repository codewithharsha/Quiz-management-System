<%@page import="java.sql.*"%>
<%
try{
    String quiz_name = (String)session.getAttribute("quiz_name");
    String query = "delete from quiz_questions where QUIZ_TITLE=?";
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "123456");
    PreparedStatement pst = con.prepareStatement(query);
    pst.setString(1,quiz_name);
    pst.executeQuery();
    response.sendRedirect("index2.jsp");
}
catch(Exception e)
{
    out.println(e);
}

%>