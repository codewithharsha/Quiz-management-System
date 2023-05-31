<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        .outer-border{
    width:800px; height:650px; padding:20px; text-align:center; border: 10px solid #673AB7;    margin-left: 21%;
}

.inner-dotted-border{
    width:750px; height:600px; padding:20px; text-align:center; border: 5px solid #673AB7;border-style: dotted;
}

.certification{
    font-size:50px; font-weight:bold;    color: #663ab7;
}

.certify{
    font-size:25px;
}

.name{
    font-size:30px;    color: green;
}

.fs-30{
    font-size:30px;
}

.fs-20{
    font-size:20px;
}
    </style>
</head>

<body>
    <%@page import="java.util.StringTokenizer"%>
    <%@page import="java.sql.*"%>
    <%
    String name1=(String)session.getAttribute("username"); 
    if(name1 == null)
    {%>
        <jsp:forward page="index.jsp"/>
        <%
    }%>
<%
    String name = (String)session.getAttribute("username");
    String quiz = request.getParameter("quiz_data");
    StringTokenizer stt = new StringTokenizer(quiz,",");
    String qn = stt.nextToken();
    int marks = Integer.parseInt(stt.nextToken());
    int per;
    String date = stt.nextToken();

%>

    <div class="outer-border">
        <div class="inner-dotted-border">
            <span class="certification">Certificate of Completion</span>
            <br><br>
            <span class="certify"><i>This is to certify that</i></span>
            <br><br>
            <span class="name"><b><%=name%></b></span><br /><br />
            <span class="certify"><i>has successfully participated in the quiz</i></span> <br /><br />
            <span class="fs-30"><%=qn%></span> <br /><br />
            <span class="fs-20">with score of <b><%=marks%></b></span> <br /><br /><br /><br />
            <span class="certify"><i>On</i></span><br>

            <span class="fs-30"><%=date%></span>
            
            <div><img src="https://i.ibb.co/hKRSHRw/Screenshot-2023-05-15-230543.png" style="margin-top: 0px;"width="100px"/></div>
        </div>
    </div>
    <button onclick="printpage()" class="btn btn-primary" style="margin-left: 700px; margin-top: 50px;">Print</button>

    <script>
        function printpage() {
            window.print();
        }
    </script>   

</body>

</html>
