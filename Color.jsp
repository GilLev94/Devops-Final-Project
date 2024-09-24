<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>My Simple Web App</title>
</head>
<body style="background-color: pink;">
    <h1>What Is The Best Color?</h1>

    <%
        String color = request.getParameter("color");
        String result = "";
        
        // בודק אם יש ערך לצבע ומחזיר תוצאה בהתאם
        if (color != null && !color.trim().isEmpty()) {
            if (color.equalsIgnoreCase("pink")) {
                result = "You Are Right!";
            } else {
                result = "Sorry, Try Again.";
            }
        }
    %>

    <form action="Color.jsp" method="post">
        <input type="text" name="color" placeholder="Enter Your Answer Here" />
        <button type="submit">Send</button>
    </form>

    <h2><%= result %></h2>
</body>
</html>
