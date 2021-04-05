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
%{--<g:form controller="user" action="compare">--}%
%{--    <div class="message" style="color: #a60000">${flash.otp}</div>--}%
%{--<label>Enter Otp:</label>--}%
%{--<input type="text" placeholder="enter otp" name="otp">--}%
%{--    <g:hiddenField name="uid" value="${user.id}" ></g:hiddenField>--}%
%{--<g:actionSubmit controller="user" action="compare" value="Done" ></g:actionSubmit>--}%
%{--</g:form>--}%

<g:form  controller="user" action="otpVerify">
    <h1>${user.email}</h1>
%{--    <div class="icon">--}%
%{--        <div class="postImage" style="width: 150px; height: 150px; margin-right: 10px; margin-top: 10px;">--}%
%{--            <g:img dir="images/profilePic" class="pImage" file='${user.photo}' alt="Missing Image" />--}%
%{--        </div>--}%
%{--    </div>--}%
    <div class="formcontainer">
        <div class="container">
            <label for="otp"><strong>OTP</strong></label>
            <input type="number" placeholder="Enter OTP" name="otp" id="otp"  min="1000" max="9999" autocomplete="off" required><br>
            <label for="password"><strong>Password</strong></label>
            <input type="password" placeholder="Enter password" name="password" id="password" autocomplete="off"  required><br>
            <label for="confirmPassword"><strong>Confirm Password</strong></label>
            <input type="password" placeholder="Confirm Password" name="confirmPassword" id="confirmPassword" autocomplete="off" required>
    <g:hiddenField name="email" value="${user.email}"></g:hiddenField>
    </div>
    <strong><g:actionSubmit value="Reset Password" action="otpVerify" class="button"/></strong>
</g:form>

</body>
</html>