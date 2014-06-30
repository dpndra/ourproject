<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ctl_Homepage.ascx.cs" Inherits="Controls_ctl_Homepage" %>
<%@ Register src="~/Controls/ctl_RegisterUserInfo.ascx" Tagname="ctl_RegisterUserInfo" TagPrefix ="uc_Register" %>
<%@ Register  Src="~/Controls/ctl_LoginForm.ascx"  TagName = "ctl_LoginForm"  TagPrefix="uc_Login"%>
<body>

    <form id="form1" runat="server">

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
    <div class="active-inactive">
    <ul class ="nav navbar-nav pull-right">
 
   
                                     
    <li class="login-nav" style="float:right ; "> <a data-toggle="modal" href="#loginmodal" class="btn  ">Login</a></li>
     <li class="registration-nav"style="float:right;" > <a data-toggle="modal" href="#regmodal" class="btn ">Registration</a></li></ul>
   <li><a href="#"  data-toggle="popover" title=""data-placement="bottom" data-content="" role="button" data-trigger="hover" data-original-title="A Title"><b>welcome user</b> <i class="glyphicon glyphicon-user"></i></a></li>
       
         </div>

     <div class="welcome-note">
     <ul class ="nav navbar-nav  pull-right">

     <li class="dropdown"> <a href="#" class="dropdown-toggle " data-toggle="dropdown" ><b>welcome user</b> <i class="glyphicon glyphicon-user"></i></a> 
     <ul class="dropdown-menu "id ="dropdown-menu">
                                    <li><a href="#"> Account Setting <i class="glyphicon glyphicon-cog"></i></a></li>
                                    <li><a href="#">Posts <i class="glyphicon glyphicon-list-alt" style="margin-left:62px;"></i></a></li>
                                    <li><a href="#"> Logout <i class="glyphicon glyphicon-off" style="margin-left:51px;"></i></a></li>
                                     
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
    <div style="margin-top:15px">
                                                                    <!--search begins-->
<div class="my-search" style="background-color:#EBF0FA; ">

<div class="container">

<div class="row">

 
 <div class="col-sm-12 col-sm-offset-3">  

<section style="padding :29px;">   
                                     
                                     
                                   
    <form class="navbar-form my-border" role="search">
  
    <div class="input-group my-textbox ">

        <input type="text " class="form-control" style=" padding-right:100px;border-style:solid;border-width:2px;border-radius:10px;"placeholder="search">
        </div>
        <div class="input-group my-textbox   ">
        <input type="text " class="form-control  my-textbox " placeholder="location" name="srch-term"style=" border-width:2px; border-radius:10px;" id="srch-location">
        </div>
        <div class="input-group-btn">
            <button class="btn  btn-primary" type="button" style="border-radius:10px;">Go!</button>
        
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


        <div class="belonav" style="height:100vh;margin:0 auto; width:100%">

<div class="row" style="width:100%">
<div class="col-lg-3 trythis" style="background-color:#F8F8FF;height:100vh;display:inline;">
<b>categores</b>


<ul>



 <li> <a href="#" data-toggle="tooltip" title="click to expand">hover to see message</a> </li>
 <a href="#" class="btn btn-lg btn-danger" data-toggle="popover" title="" data-content="And here's some amazing content. It's very engaging. right?" role="button" data-original-title="A Title">Hover to toggle popover</a>

<li>Dermatology </li>
<li>Arthopadics </li>
<li>Cardeology </li>
<li>Homopathy </li>
<li>Ophthalmology </li>
<li> Iridology</li>
<li>Dermatology </li>
<li>Arthopadics </li>
<li>Cardeology </li>
<li>Homopathy </li>
<li>Ophthalmology </li>
<li> Iridology</li>
<li>Homopathy </li>
<li>Ophthalmology </li>

</ul>

</div>
<div class="col-lg-6"style="background-color:#ECF8F6;height:100vh;display:inline;">
<b>posts</b>
<!--------collapse begins here--------------------------------------------------------------------------------------------------------->
<div class="panel-group" id="collapseid">

<div class="panel panel-default">
<div class="panel-heading">
<h4><a class="collapseid-toggle" data-toggle="collapse" data-parent="collapseid" href="#collapse-this"> click to see more</a></h4>
</div>
<div id="collapse-this" class="panel-collapse collapse">

<div class="panel-body">

England have had some bad sessions over the last eight months but that one between lunch and tea here at Headingley yesterday was as poor as it gets. They simply lost the plot.

The body language of the England players was as bad as I’ve seen for a long, long time and when they went off for tea, with some members of the Yorkshire crowd letting them know what they thought, they looked in a bedraggled state. We have all been there but this was a real low point for this England side.

Yes, it looked a flat pitch for the seamers — at least when England bowled on it — and you cannot fault the bowlers for effort. But they looked dead on their feet and in those situations the captain has to take responsibility.


</div>

</div>




</div>


<div class="panel-heading">
<h4><a class="collapseid-toggle1" data-toggle="collapse" data-parent="collapseid" href="#collapse-this1"> click to see more</a></h4>
</div>
<div id="collapse-this1" class="panel-collapse collapse">

<div class="panel-body">

England have had some bad sessions over the last eight months but that one between lunch and tea here at Headingley yesterday was as poor as it gets. They simply lost the plot.

The body language of the England players was as bad as I’ve seen for a long, long time and when they went off for tea, with some members of the Yorkshire crowd letting them know what they thought, they looked in a bedraggled state. We have all been there but this was a real low point for this England side.

Yes, it looked a flat pitch for the seamers — at least when England bowled on it — and you cannot fault the bowlers for effort. But they looked dead on their feet and in those situations the captain has to take responsibility.


</div>

</div>





</div>




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

<div class="col-lg-3 " style="background-color:#F8F8FF;height:100vh;display:inline"> 
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

<!-- this is foooter-->
<div class="footer" style="height:15vh;width:100%;background-color:#94AB9B;">

<div class="row">
<div class="col-md-12">

this is gfooter


</div>

</div>




</div>





</form>

</body>
polymor
google.com/design
material design