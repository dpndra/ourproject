<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ctl_EntryForm.ascx.cs" Inherits="Controls_ctl_EntryForm" %>
<div id="divMessage">
    <asp:Label ID="lblMessage" runat="server" Visible="false" EnableViewState="false"></asp:Label>
</div>
<div id="divList" runat="server" visible="false">
    <div id="Buttonwrapper">
        <asp:ImageButton ID="imbAdd" runat="server" ImageUrl="~/Controls/Images/btnadd.png" ToolTip="Click to add New Data" OnClick="imbAdd_Click" />
        <asp:Label ID="lblImbText" CssClass="ActionLabel" AssociatedControlID="imbAdd" runat="server" Text="Add New"></asp:Label>
    </div>
    <asp:GridView ID="gdvList" runat="server" AutoGenerateColumns="False" CssClass="gridStyle"
                EmptyDataText="No Record to Show..." EmptyDataRowStyle-CssClass="emptyList" Width="100%" AllowPaging="True" PageSize="10" OnPageIndexChanging="gdvList_PageIndexChanging" OnRowCommand="gdvList_RowCommand" OnRowDeleting="gdvList_RowDeleting" OnRowEditing="gdvList_RowEditing" OnRowUpdating="gdvList_RowUpdating" OnRowDataBound="gdvList_RowDataBound">
                <Columns>                    
                    <asp:TemplateField ShowHeader="False">
                        <ItemStyle HorizontalAlign="Center" VerticalAlign="Top" />
                        <ItemTemplate>                            
                            <asp:ImageButton ID="imgEdit" runat="server" CausesValidation="False" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"UsersID") %>'
                                CommandName="Edit" ImageUrl="~/Controls/Images/edit-icon.png" ToolTip="Edit" />                            
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField ShowHeader="False">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" />
                        <ItemTemplate>
                            <asp:ImageButton ID="imgDelete" runat="server" CausesValidation="False" CommandArgument='<%#DataBinder.Eval(Container.DataItem,"UsersID") %>'
                                CommandName="Delete" ImageUrl="~/Controls/Images/delete.png" ToolTip="Delete" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Name">
                        <ItemTemplate>
                            <asp:Label ID="lblgdvName" runat="server" Text='<%#DataBinder.Eval(Container.DataItem,"UserName") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" />
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:TemplateField>                    
                    <asp:TemplateField HeaderText="Address">
                        <ItemStyle HorizontalAlign="Left" VerticalAlign="Top" />
                        <ItemTemplate>
                            <asp:Label ID="lblgdvAddress" runat="server" Text='<%# Bind("UserAddress") %>'></asp:Label>
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Left" />
                    </asp:TemplateField>                    
                </Columns>
                <AlternatingRowStyle CssClass="gridAlternatingColor" />
                <HeaderStyle CssClass="gridHeaderStyle" />
                <EmptyDataRowStyle BorderWidth="0px" />
                <PagerSettings Position="TopAndBottom" />
                <PagerStyle HorizontalAlign="Center" />
            </asp:GridView>
</div>
<div id="divForm" runat="server" visible="false">
     <div class="Buttonwrapper">
        <asp:ImageButton ID="imbSave" runat="server" ImageUrl="~/Controls/Images/imgsave.png" ToolTip="Click to Save" OnClick="imbSave_Click" />
        <asp:Label ID="lblImbTextSave" CssClass="ActionLabel" AssociatedControlID="imbSave" runat="server" Text="Save"></asp:Label>
        <asp:ImageButton ID="imbCancel" runat="server" ImageUrl="~/Controls/Images/btncancel.png" ToolTip="Click to Cancel" OnClick="imbCancel_Click" />
        <asp:Label ID="lblImbCancel" CssClass="ActionLabel" AssociatedControlID="imbCancel" runat="server" Text="Cancel"></asp:Label>
    </div>
    <table class="tblFrmSave">
        <tr>
            <td>
                <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtName" runat="server"></asp:TextBox></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblAddress" runat="server" Text="Address"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox></td>
        </tr>
    </table>   
</div>
