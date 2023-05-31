<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%
  int uid = Integer.parseInt(request.getParameter("ID"));
  String name = request.getParameter("name");
  String email = request.getParameter("mail");
  String mobile = request.getParameter("mobile");
try
{
      Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123456");
      String str = "update  myusers set NAME=?,MAIL=? where USER_ID=?";
      PreparedStatement pst = con.prepareStatement(str);
      pst.setString(1,name);
      pst.setString(2,email);
      pst.setInt(3,uid);
      pst.execute();
      response.sendRedirect("admin.jsp");
  }
  catch(Exception e)
  {
      out.println(e);
  }
%>