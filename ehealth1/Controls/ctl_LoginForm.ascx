<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ctl_LoginForm.ascx.cs" Inherits="Controls_ctl_LoginForm" %>
<div>
<form class="login-form" role="form"action="#">
<h2>Login</h2>

    EmailAddress:
    <input  class="form-control"type="email" id="txtlgnUserEmailAddress" required oninvalid="this.setCustomValidity('enter the valid email')" />
    <br />
    Password:
    <input type="password" id="txtlgnUserPassword" />
    <br />
   
  
    <input type="submit" id="btnLogin" value="Login" />
    </form>
</div>
