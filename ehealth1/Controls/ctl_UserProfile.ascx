<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ctl_UserProfile.ascx.cs" Inherits="Controls_ctl_UserProfile" %>
<form class="form" role="form">
    <h2 class="form-signin-heading">User Profile Form</h2>
    <hr />
    <select class="btn btn-default dropdown-toggle">
        <option selected="selected" disabled="disabled">Select the Profession You want to POST</option>
        <option value="Doctor">Doctor</option>
        <option value="Nurse">Nurse</option>
        <option value="Hospital">Hospital</option>
        <option value="Pharmacist">Pharmacist</option>
    </select>
    <div id="Hospital" style="display:none">
        Hospital :
         <input class="form-control" type="text"  />
        Established Year:
         <input class="form-control" type="text" id="" />
        Employee Information:
         <input class="form-control" type="text" id="" />

    </div>
     <div id="Pharmacy" style="display:none">
        Pharmacy :
          <input class="form-control" type="text" id="" />
        Established Year:
          <input class="form-control" type="text" />
        Employee Information:
          <input class="form-control" type="text" />
    </div>

  
    
    <div id="Working Personnel">
        <div id="Doctor">
        Doctor Name:
         <input class="form-control" type="text" />
        </div>
        <div id="Nurse">
        Nurse Name:
         <input class="form-control" type="text" />
        </div>
        Gender:
        <input style="width: 2.2em;height:1.3em" type="radio" name="choose" value="Male" />Contributor
        <input style="width: 2.2em;height:1.3em" type="radio" name="choose" value="Female"  /> Female
        Date Of Birth
        <input class="form-control" type="text" id="" />
    </div>
      <div id="Common">
        Posted By:
         <input class="form-control" type="text" id="" />
        Phone Number:
           <input class="form-control" type="text" id="" />
        Description:
           <input class="form-control" type="text" id="" />
        Address:
           <input class="form-control" type="text" id="" />
        Upload Photo:
          <input type="file" name="file" />
        Specialist:
          <input class="form-control" type="text" id="" />

    </div>
  
    <button class="btn btn-lg btn-primary " id="Post">POST</button>
</form>