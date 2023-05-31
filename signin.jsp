<%@page import="java.sql.*"%>
<%
try
{
            String name = request.getParameter("username");
            String email = request.getParameter("email");
            String pass = request.getParameter("password_1");
            String pass2 = request.getParameter("password_2");
            String role = "user";
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
                response.sendRedirect("login.html");
            }
            else{%>
                <div style="padding: 10px; color: red;background-color: cornsilk; text-align: center;">
                    <%out.println("<h5>Password doesn't match!!</div><h5>");%>
                </div>
                <jsp:include page="signin.html"/>
            <%}
        }
        catch(Exception e)
        {
            out.println(e);
        }
%>