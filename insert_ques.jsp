<%@page import="java.sql.*"%>
<%
try
{
            String ques = request.getParameter("question");
            String opta = request.getParameter("optionA");
            String optb = request.getParameter("optionB");
            String optc = request.getParameter("optionC");
            String optd = request.getParameter("optionD");
            String ans = request.getParameter("answer");
            int uid = (int)session.getAttribute("myid");
            String quiz_name = (String)session.getAttribute("quiz_name");
            int c = (int)session.getAttribute("que_count");
            c = c + 1;
            session.setAttribute("que_count",c);
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "123456");
            String str = "insert into quiz_questions values(?,?,?,?,?,?,?,?)";
            PreparedStatement pst = con.prepareStatement(str);
            pst.setString(1,quiz_name);
            pst.setString(2,ques);
            pst.setString(3,opta);
            pst.setString(4,optb);
            pst.setString(5,optc);
            pst.setString(6,optd);
            pst.setString(7,ans);
            pst.setInt(8,uid);
            pst.executeQuery();
            response.sendRedirect("create.jsp");
            }
        catch(Exception e)
        {
            out.println(e);
        }
%>