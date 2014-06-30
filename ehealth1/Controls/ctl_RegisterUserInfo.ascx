<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ctl_RegisterUserInfo.ascx.cs" Inherits="Controls_ctl_RegisterUserInfo" %>






<form class= "register-form" role = "form">
<h2 class="form-signin-heading">REGISTER</h2><hr />
    EmailAddress:
   
    <input  class="form-control"  type="text" id="txtUserEmailAddress" required oninvalid="this.setCustomValidity('kkkkkkkkkkkkkkkkkkk')"/>
    <br />
    Password:
    <input  class="form-control"  type="password" id="txtUserPassword" /><br />
    User Type
    <input class="btn btn-primary" id="ContributorRdb"type="radio" name="choose" value="Contributor"/>Contributor
    <input  id="CategoryRdb" type="radio" name="choose" />
    <select  id="CategorySelect" disabled="disabled">
        <option selected="selected" disabled="disabled">Profession</option>
        <option value="Doctor">Doctor</option>
        <option value="Nurse">Nurse</option>
        <option value="Hospital">Hospital</option>
            <option value="Phamacist">Pharmacist</option>
    </select>
    <br />
    <hr >
    
    <input  class="btn btn-lg btn-primary "  type="submit" id="Register" value="Register" />
    </form>
