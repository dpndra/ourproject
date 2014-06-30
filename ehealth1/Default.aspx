<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register src="Controls/ctl_EntryForm.ascx" tagname="ctl_EntryForm" tagprefix="uc1" %>
<%@ Register Src="~/Controls/ctl_RegisterUserInfo.ascx" TagName="ctl_RegisterUserInfo" TagPrefix="uc_Register" %>
<%@ Register Src="~/Controls/ctl_LoginForm.ascx" TagName="ctl_LoginForm" TagPrefix="uc_Login" %>
<%@ Register Src="~/Controls/ctl_Homepage.ascx" TagName="Homepage" TagPrefix="uc_Homepage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Ehealth Library</title>
      
    
    <script src="Js/jquery-1.10.2.js" type="text/javascript"></script>
    <script src="Js/jquery-1.10.2.min.js" type="text/javascript" ></script>
    <script src="Js/jquery.json-2.2.min.js" type="text/javascript" ></script>
    <script src="Js/EhealthJquery.js" type="text/javascript" ></script>
    <script src="bscripts/popover+tooltip.js" type="text/javascript"></script>
    <script src="bscripts/jquery-1.9.1.js" type="text/javascript"></script>
    <script src="bscripts/bootstrap.min.js" type="text/javascript"></script>
    <link href="Styles/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="Styles/mystyle.css" rel="stylesheet" type="text/css" />
</head>
<uc_Homepage:Homepage runat="server" />

</html>
