<%@page import="java.sql.*" %>
    <% try { 
        Class.forName("oracle.jdbc.driver.OracleDriver"); 
        Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","123456");
        String str="delete from quiz_questions where quiz_title=?";
        String my_quiz = request.getParameter("delete"); 
        PreparedStatement st = con.prepareStatement(str);
        st.setString(1,my_quiz);
        st.executeUpdate();
        response.sendRedirect("profile.jsp");
    } 
    catch(Exception e) 
    { 
        out.println(e);
    }%>