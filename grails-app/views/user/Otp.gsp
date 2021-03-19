<%--
  Created by IntelliJ IDEA.
  User: aamish
  Date: 18/03/21
  Time: 11:50 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<g:form controller="user" action="compare">
    <div class="message" style="color: #a60000">${flash.otp}</div>
<label>Enter Otp:</label>
<input type="text" placeholder="enter otp" name="otp">
<button controller="user" action="compare">Done</button>
</g:form>
</body>
</html>