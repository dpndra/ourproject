using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Controls_ctl_EntryForm : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        PageLoadPart();
    }

    private void PageLoadPart()
    {
        try
        {
            if (!IsPostBack)
            {
                HideAll();
                BindGrid();
                divList.Visible = true;
            }
        }
        catch (Exception ex)
        {
            ShowError("Error Occured: " + ex.Message);
        }
    }

    
    private void BindGrid()
    {
        try
        {
            gdvList.DataSource = GetDataSource();
            gdvList.DataBind();
        }
        catch (Exception ex)
        {
            ShowError("Error Occured: " + ex.Message);
        }
    }

    private List<DataFormInfo1> GetDataSource()
    {
        DataFormController1 objFormController = new DataFormController1();
        List<DataFormInfo1> objList = objFormController.GetListOfAllFormData();
        return objList;
    }

    private void HideAll()
    {
        divForm.Visible = false;
        divList.Visible = false;
    }

    private void ShowError(string ErrorMessage)
    {
        lblMessage.Text = ErrorMessage;
        lblMessage.CssClass = "Error";
        lblMessage.Visible = true;
    }

    private void ShowMessage(string Message)
    {
        lblMessage.Text = Message;
        lblMessage.CssClass = "Message";
        lblMessage.Visible = true;
    }


    protected void imbAdd_Click(object sender, ImageClickEventArgs e)
    {
        AddNewDataForm();
    }

    private void AddNewDataForm()
    {
        ClearFormFields();
        HideAll();
        divForm.Visible = true;
    }
    private void SaveFormData()
    {
        try
        {
            DataFormInfo1 objFormInfo = new DataFormInfo1();
            objFormInfo.UserName = txtName.Text.Trim();
            objFormInfo.UserAddress = txtAddress.Text;
            DataFormController1 objFormController = new DataFormController1();
            if (Session["frmUsersID"] != null && Session["frmUsersID"].ToString() != string.Empty)
            {
                objFormInfo.UsersID = Int32.Parse(Session["frmUsersID"].ToString());
                objFormController.UpdateFormData(objFormInfo);
                ShowMessage("Data updated sucessfully!!!!");
            }
            else
            {
                objFormController.AddFormData(objFormInfo);
                ShowMessage("Data saved sucessfully!!!!");
            }
            ClearFormFields();
            BindGrid();
        }
        catch (Exception ex)
        {
            ShowError("Error Occured: " + ex.Message);
        }
    }

    private void CancelForm()
    {
        ClearFormFields();
    }

    private void ClearFormFields()
    {
        txtAddress.Text = string.Empty;
        txtName.Text = string.Empty;
        HideAll();
        divList.Visible = true;
        Session.Remove("frmUsersID");
        //Not Good
        //Session["frmUsersID"] = null;
    }

    private void EditForDataByID(int UsersID)
    {
        DataFormController1 objFormController = new DataFormController1();
        DataFormInfo1 objFormInfo = objFormController.GetListObjectOfFormDataByUserID(UsersID);
        if (objFormInfo != null)
        {
            txtName.Text = objFormInfo.UserName;
            txtAddress.Text = objFormInfo.UserAddress;
            Session["frmUsersID"] = UsersID;
        }
        HideAll();
        divForm.Visible = true;
    }

    private void DeleteDataByID(int UsersID)
    {
        DataFormController1 objFormController = new DataFormController1();
        objFormController.DeleteFormDataByID(UsersID);
        BindGrid();
        ShowMessage("Row deleted sucessfully");
    }

    protected void imbSave_Click(object sender, ImageClickEventArgs e)
    {
        SaveFormData();
    }

    protected void imbCancel_Click(object sender, ImageClickEventArgs e)
    {
        CancelForm();
    }


    protected void gdvList_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        try
        {
            int UsersID;
            switch (e.CommandName.ToString())
            {
                case "Delete":
                    UsersID = Int32.Parse(e.CommandArgument.ToString());
                    DeleteDataByID(UsersID);
                    break;
                case "Edit":
                    UsersID = Int32.Parse(e.CommandArgument.ToString());
                    EditForDataByID(UsersID);
                    break;
            }
        }
        catch (Exception ex)
        {
            ShowError("Error Occured: " + ex.Message);
        }
    }

    
    protected void gdvList_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }
    protected void gdvList_RowEditing(object sender, GridViewEditEventArgs e)
    {

    }

    protected void gdvList_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

    }
    protected void gdvList_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        gdvList.DataSource = GetDataSource();
        gdvList.PageIndex = e.NewPageIndex;
        gdvList.DataBind();
    }

    protected void gdvList_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            ImageButton btnDelete = (ImageButton)e.Row.FindControl("imgDelete");
            if (btnDelete != null)
            {
                btnDelete.Attributes.Add("onclick", "javascript:return " +
                    "confirm('Are you sure to delete?')");
            }
        }
    }
    
}