<!DOCTYPE html>
<html>
<style>
body {
  font-family: Arial;
}

input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #04AA6D;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
  width: 60%;
  margin: auto;
  margin-top: 100px;
}
</style>
<body>
  <%@page import="java.util.*"%>
  <%
  String val = request.getParameter("update");
  StringTokenizer stk = new StringTokenizer(val,",");
  int uid = Integer.parseInt(stk.nextToken());
  String name = stk.nextToken();
  String email = stk.nextToken();
  %>

<div class="container">
  <h3 style="text-align: center;">Update Details</h3>
  <form action="update_det_by_admin.jsp">
    <label for="fname">User Id</label>
    <input type="text" id="fname" name="ID" value="<%=uid%>"readonly>

    <label>Name</label>
    <input type="text" name="name" value="<%=name%>">

    <label>Mail Id</label>
    <input type="text" name="mail" value="<%=email%>">
  
    <input type="submit" value="Save Changes">
  </form>
</div>

</body>
</html>
