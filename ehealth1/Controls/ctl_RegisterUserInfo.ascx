<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ctl_RegisterUserInfo.ascx.cs" Inherits="Controls_ctl_RegisterUserInfo" %>
<form class="form-asd" role="form">
    <h2 class="form-signin-heading">REGISTER</h2>
    <hr />
    EmailAddress:
   
    <input class="form-control" type="text" id="txtUserEmailAddress" required/>
    <br />
    Password:
    <input class="form-control" type="password" id="txtUserPassword" required /><br />
    User Type
    <input style="width: 2.2em;height:1.3em" id="ContributorRdb" type="radio" name="choose" value="Contributor" required/>Contributor
    <input style="width: 2.2em;height:1.3em"  id="CategoryRdb" type="radio" name="choose" required/>
    <select class="btn btn-default dropdown-toggle" id="CategorySelect" disabled="disabled">
        <option selected="selected" disabled="disabled">Profession</option>
        <option value="Doctor">Doctor</option>
        <option value="Nurse">Nurse</option>
        <option value="Hospital">Hospital</option>
        <option value="Pharmacist">Pharmacist</option>

    </select>
    <br />

    <button class="btn btn-lg btn-primary " id="Register">Register</button>
</form>
