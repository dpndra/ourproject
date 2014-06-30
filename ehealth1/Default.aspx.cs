using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (HttpContext.Current.Session["ID"] == null)
       {
           registerLogin.Visible = true;
           welcomeLogin.Visible = false;
       }
        else
        {
            string value = HttpContext.Current.Session["ID"].ToString();
            Response.Write(value);
            lblUserEmailAddress.InnerText = HttpContext.Current.Session["EmailAddress"].ToString();
            registerLogin.Visible = false;
            welcomeLogin.Visible = true;
        }

     /*   if(txtSessionID.Value== string.Empty)
        {
            registerLogin.Visible = true;
            welcomeLogin.Visible = false;
        }
        else
        {
            if (Session["ID"] == null)
            {
                Session["ID"] = txtSessionID.Value;
                Response.Write(Session["ID"]);
                welcomeLogin.Visible = true;
                registerLogin.Visible = false;
            }
            else
            {
                welcomeLogin.Visible = true;
                registerLogin.Visible = false;
            }
          
        }*/
     
    }
}