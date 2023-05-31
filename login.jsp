<%@page import="java.sql.*"%>
<%@page import="java.util.*"%>
<%
  if (request.getMethod().equals("POST")) {
    String email = request.getParameter("email");
    String pass = request.getParameter("password");
    try
        {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123456");
            String str = "select * from myusers where mail=? and password=?";
            PreparedStatement st = con.prepareStatement(str);
            st.setString(1,email);
            st.setString(2,pass);
            ResultSet rs = st.executeQuery();
            if(rs.next())
            {
                String uname = rs.getString(1);
                int myid = rs.getInt(4);
                session.setAttribute("username",uname);
                session.setAttribute("email",email);
                session.setAttribute("myid",myid);
                session.setAttribute("que_count",1);
                session.setMaxInactiveInterval(10000);
                String role = rs.getString(5);
                if(role.equals("user"))
                {
                    response.sendRedirect("index2.jsp");
                }
                else{
                    response.sendRedirect("admin.jsp");
                }
            }
            else{
                %>
                <div style="padding: 10px; color: red;background-color: cornsilk; text-align: center;">
                    <%out.println("<h5>Invalid User Details!!</div><h5>");%>
                </div>
                <jsp:include page="login.html"/>
                <%
                
            }

        }
        catch(Exception e)
        {
            System.out.println(e);
        }
    } 
%>