<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
<link rel="stylesheet" href="style3.css">
<!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">--->
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="script.js"></script>

<body>
    <%
    String name=(String)session.getAttribute("username"); 
    if(name == null)
    {%>
        <jsp:forward page="login.html"/>
        <%out.println("Please Log In First!!");
    }
    %>
    <form id="regForm" action="insert_ques.jsp" method="post">
        <%
            String qn = (String)session.getAttribute("quiz_name");
            out.println("Quiz Name:"+qn);
        %>
        <h1>Question : 
            <%
                int co = (int)session.getAttribute("que_count");
                out.println(co);
            %>
        </h1>
        <div class="tab">
            <h2>Question:</h2>
            <p><input placeholder="Enter Your Question" oninput="this.className = ''" name="question"></p>
        </div>
        <div class="tab">
            <h2>Options:</h2>
            <p><input placeholder="Option A" oninput="this.className = ''" name="optionA" required></p>
            <p><input placeholder="Option B" oninput="this.className = ''" name="optionB" required></p>
            <p><input placeholder="Option C" oninput="this.className = ''" name="optionC" required></p>
            <p><input placeholder="Option D" oninput="this.className = ''" name="optionD" required></p>
        </div>
        <div class="tab">
            <h2>Correct option:</h2>
            <p><select name="answer" class="myvalues" required></p>
                <option value="A">Option A</option>
                <option value="B">Option B</option>
                <option value="C">Option C</option>
                <option value="D">Option D</option>
              </select>
        </div>
        <br><br>

        <div style="overflow:auto;">
            <div style="float:right;">
                <button type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
                <button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button>
            </div>
        </div>
        <!-- Circles which indicates the steps of the form:-->
        <div style="text-align:center;margin-top:40px;">
            <span class="step"></span>
            <span class="step"></span>
            <span class="step"></span>
        </div>
    </form>
    <button class="finalsubmit"><a href="final_submit.jsp" style="text-decoration: none; color: white;">Final Submit</a></button>
</body>
<br><br>
<form action="create_back.jsp" method="post">
    <input class="finalsubmit" style="margin-left: 5%; background-color:#212529;width: 100px; color: white;" type="submit" value="Back">
</form>
<!-- popup -->
<!-- <div id="boxes">
    <div style="top: 199.5px; left: 551.5px; display: none;" id="dialog" class="window">
      <div id="lorem">
        <form>
            <h5>Enter your quiz Name:</h5>
            <input type="text" placeholder="Enter your quiz name without any spaces"  required>--->
            <!-- <button type="submit" class="close agree">Enter</button> -->
            <!--<input type="submit" class="close agree">
        </form>
      </div>
    </div>
    <div style="width: 1478px; font-size: 32pt; color:white; height: 602px; display: none; opacity: 0.8;" id="mask">
    </div>
</div> -->

<script>
    var currentTab = 0;
    showTab(currentTab);

    function showTab(n) {
        // This function will display the specified tab of the form...
        var x = document.getElementsByClassName("tab");
        x[n].style.display = "block";
        if (n == 0) {
            document.getElementById("prevBtn").style.display = "none";
        } else {
            document.getElementById("prevBtn").style.display = "inline";
        }
        if (n == (x.length - 1)) {
            document.getElementById("nextBtn").innerHTML = "Submit";
        } else {
            document.getElementById("nextBtn").innerHTML = "Next";
        }
        //... and run a function that will display the correct step indicator:
        fixStepIndicator(n)
    }

    function nextPrev(n) {
        // This function will figure out which tab to display
        var x = document.getElementsByClassName("tab");
        // Exit the function if any field in the current tab is invalid:
        if (n == 1 && !validateForm()) return false;
        // Hide the current tab:
        x[currentTab].style.display = "none";
        // Increase or decrease the current tab by 1:
        currentTab = currentTab + n;
        // if you have reached the end of the form...
        if (currentTab >= x.length) {
            // ... the form gets submitted:
            document.getElementById("regForm").submit();
            return false;
        }
        // Otherwise, display the correct tab:
        showTab(currentTab);
    }

    function validateForm() {
        // This function deals with validation of the form fields
        var x, y, i, valid = true;
        x = document.getElementsByClassName("tab");
        y = x[currentTab].getElementsByTagName("input");
        // A loop that checks every input field in the current tab:
        for (i = 0; i < y.length; i++) {
            // If a field is empty...
            if (y[i].value == "") {
                // add an "invalid" class to the field:
                y[i].className += " invalid";
                // and set the current valid status to false
                valid = false;
            }
        }
        // If the valid status is true, mark the step as finished and valid:
        if (valid) {
            document.getElementsByClassName("step")[currentTab].className += " finish";
        }
        return valid; // return the valid status
    }

    function fixStepIndicator(n) {
        // This function removes the "active" class of all steps...
        var i, x = document.getElementsByClassName("step");
        for (i = 0; i < x.length; i++) {
            x[i].className = x[i].className.replace(" active", "");
        }
        //... and adds the "active" class on the current step:
        x[n].className += " active";
    }
</script>

</body>

</html>