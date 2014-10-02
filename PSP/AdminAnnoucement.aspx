<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterAdmin.Master" AutoEventWireup="true" CodeBehind="AdminAnnoucement.aspx.cs" Inherits="PSP.AdminAnnoucement" %>
<%@ Register TagPrefix="Components" TagName="Annoucement" Src="~/Form/AnnoucementForm.ascx" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style type="text/css">
    .grade {
          background-image: url('Images/sicon.png'); 
          background-repeat:no-repeat; 
          height:32px;
          width:100px;
          text-align:right;
          background-color:white;
           
    }
    .clear {
          background-image: url('Images/cicon.png'); 
          background-repeat:no-repeat; 
          height:32px;
          width:100px;
          text-align:right;
          background-color:white;
    }
    .fetch {
          background-image: url('Images/annoicon.png'); 
          background-repeat:no-repeat; 
          height:32px;
          width:100px;
          text-align:right;
          background-color:white;
    }
</style>

    <script type = "text/javascript">
        function confirmDelete() {
            return confirm("Are you sure you want to delete this?");
        }
    </script>
    <br />

    

    <asp:Table runat="server" ID="table_data">
        <asp:TableRow>
            <asp:TableCell Width="760px">
                <h3 style="border-bottom:1px solid #7E9CC1;
                color:#440000;
                font-family:Arial;
                font-size:18px;
                width:760px;
                font-style:italic";>Annoucement Management</h3>
            </asp:TableCell>
            <asp:TableCell Width="150px">
                <asp:Button runat="server" Text="New Annoucement" ID="button_new" OnClick="button_new_Click" CssClass="fetch" Width="150px" ToolTip="Use this button to add new annocuement"/>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <asp:GridView ID="anno_grid" runat="server" DataKeyNames="id" 
        BorderWidth="0" AutoGenerateColumns="false"  Width="910px">
        <Columns>
            <asp:BoundField HeaderText="Owner" DataField="owner">
            </asp:BoundField>
            <asp:BoundField HeaderText="Deadline" DataField="deadline">
            </asp:BoundField>
            <asp:BoundField HeaderText="Level" DataField="level_name">
            </asp:BoundField>
            <asp:BoundField HeaderText="Note" DataField="note">
            </asp:BoundField>
            <asp:TemplateField  FooterStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:LinkButton runat="server" ID="button_update" OnClick="button_update_Click" CommandArgument='<%# Eval("ID") %>'>Update</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField  FooterStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                <ItemTemplate>
                    <asp:LinkButton runat="server" ID="button_delete" OnClick="button_delete_Click" OnClientClick="return confirmDelete();">Delete</asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
    
    <br />
    <br />

    <asp:Panel runat="server" ID="panel_anno" Visible="false">
        <Components:Annoucement ID="annoucementform" runat="server" />
    </asp:Panel>
    <br />
    <br />


</asp:Content>
