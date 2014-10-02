<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserForm.ascx.cs" Inherits="PSP.Form.UserForm" %>



<style type="text/css">
    .save {
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
          background-image: url('Images/calicon.png'); 
          background-repeat:no-repeat; 
          height:32px;
          width:100px;
          text-align:right;
          background-color:white;
    }
</style>

<script type = "text/javascript">

    function confirmDelete() {
        return confirm("Are you sure you want to clear this form?");
    }
        </script>


<h3 style="border-bottom:1px solid #7E9CC1;
color:#440000;
font-family:Arial;
font-size:18px;
width:740px;
font-style:italic";>User Management</h3>
<br />

<asp:Panel runat="server" ID="panel_form" Width="240px" BorderWidth="1px">
    <asp:Table ID="Table1" runat="server" Width="240">
    <asp:TableRow>
        <asp:TableCell>
            <asp:HiddenField runat="server" ID="hidden_id" Value="0"/>
        </asp:TableCell>
        <asp:TableCell>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label runat="server" ID="label_group_info" Text="Group name: "></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:Label runat="server" ID="label_group" Text="..."></asp:Label>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label runat="server" ID="label_username" Text="Username: "></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox runat="server" ID="text_username"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label runat="server" ID="label_password" Text="Password: "></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox runat="server" ID="text_password" Text="12345"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label runat="server" ID="label_name" Text="Name: "></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox runat="server" ID="text_name"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label runat="server" ID="label_company" Text="Company: "></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox runat="server" ID="text_company"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label runat="server" ID="label_email" Text="e-mail: "></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox runat="server" ID="text_email"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label runat="server" ID="label_language" Text="P. Language: "></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox runat="server" ID="text_language"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>

</asp:Table>

    <asp:Table runat="server" ID="table_buttons" HorizontalAlign="Center">
        <asp:TableRow>
            <asp:TableCell Width="140px" HorizontalAlign="Left">
                <asp:Button runat="server" ID="button1" Text="Save" CssClass="save"  OnClick="button_save_Click"/>
            </asp:TableCell>
            <asp:TableCell Width="100px">
                <asp:Button runat="server" ID="button2" Text="Cancel" CssClass="clear" OnClick="button_clear_Click" OnClientClick="return confirmDelete();" />
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>

</asp:Panel>


