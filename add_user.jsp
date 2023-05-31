<%@page import="java.sql.*"%>
<%
try
{
            String name = request.getParameter("uname");
            String email = request.getParameter("mail");
            String pass = request.getParameter("pass1");
            String pass2 = request.getParameter("pass2");
            String role = request.getParameter("role");
            if(pass.equals(pass2)){
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123456");
                String str = "insert into myusers values(?,?,?,uid_inc.NEXTVAL,?)";
                PreparedStatement pst = con.prepareStatement(str);
                pst.setString(1,name);
                pst.setString(2,email);
                pst.setString(3,pass);
                pst.setString(4,role);
                pst.executeQuery();
                response.sendRedirect("admin.jsp");
            }
            else{
                    out.println("Password doesn't match!!");%>
                    <jsp:include page="add_user.jsp"/>
                <%
            }
        }
        catch(Exception e)
        {
            out.println(e);
        }
%>