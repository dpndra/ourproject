<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Src="Controls/ctl_EntryForm.ascx" TagName="ctl_EntryForm" TagPrefix="uc1" %>
<%@ Register Src="~/Controls/ctl_RegisterUserInfo.ascx" TagName="ctl_RegisterUserInfo" TagPrefix="uc_Register" %>
<%@ Register Src="~/Controls/ctl_LoginForm.ascx" TagName="ctl_LoginForm" TagPrefix="uc_Login" %>
<%@ Register Src="~/Controls/ctl_UserProfile.ascx" TagName="ctl_UserProfile" TagPrefix="uc_UserProfile" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ehealth Library</title>
    <script src="Js/jquery-1.10.2.js"></script>
    <script src="Js/jquery-1.10.2.min.js"></script>
    <script src="Js/jquery.json-2.2.min.js"></script>
    <script src="Js/EhealthJquery.js"></script>


    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="bscripts/jquery-1.9.1.js" type="text/javascript"></script>
    <script src="bscripts/bootstrap.js" type="text/javascript"></script>
    <link href="Styles/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="Styles/mystyle.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
           
          <asp:HiddenField ID="txtSessionID" runat="server" ClientIDMode="Static" />

      <!--navbar bgins -->



     
    <nav class="navbar navbar-inverse navbar-fixed-top my-header" > 
    
    <div class="navbar-header">
    
  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
    <span class="sr-only "> Toggle navigation</span>
    <span class="icon-bar "></span>
    <span class="icon-bar "></span>
    <span class="icon-bar "></span>
   </button>
    
    <a class="navbar-brand" href="#"><b >e-health library</b></a>
    </div>
    <div id="registerLogin" class="active-inactive" runat="server">
    <ul class ="nav navbar-nav pull-right">
 
   
                                     
    <li class="login-nav" style="float:right ; "> <a data-toggle="modal" href="#loginmodal" class="btn  ">Login</a></li>
     <li class="registration-nav"style="float:right;" > <a data-toggle="modal" href="#regmodal" class="btn ">Registration</a></li></ul>
    <!-------------<li><a href="#"  data-toggle="popover" title=""data-placement="bottom" data-content="#dropdown-menu" role="button" data-trigger="click" data-original-title="A Title"><b>welcome user</b> <i class="glyphicon glyphicon-user"></i></a></li>--->
       
         </div>

     <div id="welcomeLogin" class="welcome-note" runat="server">
     <ul class ="nav navbar-nav  pull-right">

     <li class="dropdown"> <a href="#" class="dropdown-toggle " data-toggle="dropdown" ><b>welcome</b> <label id="lblUserEmailAddress" runat="server"></label> <i class="glyphicon glyphicon-user"></i></a> 
     <ul class="dropdown-menu "id ="dropdown-menu">
                                    <li><a href="#"> Account Setting <i class="glyphicon glyphicon-cog"></i></a></li>
                                    <li><a href="#">Posts <i class="glyphicon glyphicon-list-alt" style="margin-left:62px;"></i></a></li>
                                    <li><a href="../Default.aspx"><button id="btnlogout">Logout</button> <i class="glyphicon glyphicon-off" style="margin-left:51px;"></i></a></li>
                                     
                                    </ul></li>
    
                             
</ul>
</div>
    
   
</nav>
           <!--end nevigation-->
                                                                     <!-- registration modal  begins -->

 <div class="modal fade " id="regmodal" role="dialog" aria-labelledby="mymodalLabel" aria-hidden="true">
    <div class="modal-dialog ">
   <div class="modal-content ">
   
   <div class="modal-header">
   <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times; </button>
   
   </div>
   <div class="modal-body ">
        <uc_Register:ctl_RegisterUserInfo ID="ctl_RegisterUserInfo" runat="server" />
   
   
   </div>
   <div class="footer">
   
   this is footer
   </div>
   
   
   
   </div>
    
    
    </div>
</div>
<!-----------------------------login modal-------------------------------------------------------------------------->
<div class="modal fade " id="loginmodal" role="dialog" aria-labelledby="mymodalLabel" aria-hidden="true">
    <div class="modal-dialog ">
   <div class="modal-content ">
   
   <div class="modal-header">
   <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times; </button>
   
   </div>
   <div class="modal-body ">
        <uc_Login:ctl_LoginForm ID="ctl_LoginForm" runat="server" />
   
   
   </div>
   <div class="footer">
   
   this is footer
   </div>
   
   
   
   </div>
    
    
    </div>
</div>



<!--end nevigation-->



    <!-- navbar ends-->
            <div style="margin-top: 15px">
                <!--search begins-->
                <div class="my-search" style="background-color: #EBF0FA;">

                    <div class="container">

                        <div class="row">


                            <div class="col-sm-12 col-sm-offset-3">

                                <section style="padding: 29px;">



                                    <form class="navbar-form my-border" role="search">

                                        <div class="input-group my-textbox ">

                                            <input type="text " class="form-control" style="padding-right: 10px; border-style: solid; border-width: 2px; border-radius: 10px;" placeholder="Search" name="srch-term" id="srch-term">
                                        </div>
                                        <div class="input-group my-textbox   ">
                                            <input type="text " class="form-control  my-textbox " placeholder="location" name="srch-term" style="border-width: 2px; border-radius: 10px;" id="srch-location">
                                        </div>
                                        <div class="input-group-btn">
                                            <button class="btn  btn-primary" type="button" style="border-radius: 10px;">Go!</button>

                                        </div>
                                    </form>

                                </section>


                            </div>

                        </div>


                    </div>
                </div>
                <!--search ends-->


            </div>

            <!--belodiv navbar 3 div -->


            <div class="belonav">

                <div class="row">
                    <div class="col-md-3" style="background-color: #F8F8FF;">
                        <b>categores</b>


                        <ul>

                            <li>Dermatology </li>
                            <li>Arthopadics </li>
                            <li>Cardeology </li>
                            <li>Homopathy </li>
                            <li>Ophthalmology </li>
                            <li>Iridology</li>
                            <li>Dermatology </li>
                            <li>Arthopadics </li>
                            <li>Cardeology </li>
                            <li>Homopathy </li>
                            <li>Ophthalmology </li>
                            <li>Iridology</li>
                            <li>Homopathy </li>
                            <li>Ophthalmology </li>

                        </ul>

                    </div>
                    <div class="col-md-6" style="background-color: #ECF8F6;">
                        <b>posts</b>

                        <ul>

                            <li>...............................</li>
                            <li>...............................</li>
                            <li>...............................</li>
                            <li>...............................</li>
                            <li>...............................</li>
                            <li>...............................</li>
                            <li>...............................</li>
                            <li>...............................</li>
                            <li>...............................</li>
                            <li>...............................</li>
                            <li>...............................</li>
                            <li>...............................</li>
                            <li>...............................</li>
                            <li>...............................</li>

                        </ul>

                    </div>

                    <div class="col-md-3 " style="background-color: #F8F8FF;">
                        <b>quotes</b>


                        <blockquote>
                            <p>&ldquo; Rest when you're weary. Refresh and renew yourself, your body, your mind, your spirit. Then get back to work. &rdquo; </p>
                            <small>Ralph Marston<cite title="source">  quotes.com</cite></small><hr />
                            <p>&ldquo; Healing is a matter of time, but it is sometimes also a matter of opportunity. &rdquo; </p>
                            <small>Hippocrates<cite title="source">  quotes.com</cite></small>

                        </blockquote>
                    </div>


                </div>
            </div>







        </div>
    </form>
</body>
</html>
