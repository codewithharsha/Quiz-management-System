<html>
    <script language="javascript" type="text/javascript">
        function call(){
            var name = prompt("Enter quiz name:")
            window.location.replace("takename.jsp?name="+name);
        }
    </script>
    <body onload='call()'>
        <%
        String name1=(String)session.getAttribute("username"); 
        if(name1 == null)
        {%>
            <jsp:forward page="login.html"/>
            <%out.println("Please Log In First!!");
        }
        %>
    <%
        String name=request.getParameter("name");
        if(name!=null){
            session.setAttribute("quiz_name",name);
            response.sendRedirect("create.jsp");
        }
    %>
</body>
</html>