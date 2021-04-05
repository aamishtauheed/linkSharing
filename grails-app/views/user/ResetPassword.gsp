<%--
  Created by IntelliJ IDEA.
  User: aamish
  Date: 18/03/21
  Time: 12:27 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<div class="message">${flash.result}</div>
<div>
<g:form controller="user" action="resetPassword">
    <h1>Hi </h1>
%{--<label>Email:</label>--}%
%{--<input type="email" placeholder="enter email" name="email">--}%
<label>Password:</label>
<input type="password" placeholder="password" name="pass"><br>
<label>Confirm Password:</label>
<input type="password" placeholder="confirm password" name="confirm">
<button controller="user" action="reset">Done</button>

</g:form>
</div>
</body>
</html>