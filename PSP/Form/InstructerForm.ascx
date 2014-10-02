<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="InstructerForm.ascx.cs" Inherits="PSP.Form.InstructerForm" %>




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
width:910px;
font-style:italic";>Instucter Form</h3>
<br />

<asp:Panel runat="server" ID="panel_form" Width="440px" BorderWidth="1px">
    <asp:Table runat="server" ID="Table1">
    <asp:TableRow>
        <asp:TableCell>
            <asp:HiddenField runat="server" ID="hidden_groupid" Value="0"/>
        </asp:TableCell>
        <asp:TableCell>
            <asp:HiddenField runat="server" ID="hidden_instructerid" Value="0"/>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label runat="server" ID="label_group_info" Text="Group name: "></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:Label runat="server" ID="label_group_name" Text="New Instructer"></asp:Label>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label runat="server" ID="label_username" Text="Username: " Width="120px"></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox runat="server" ID="text_username"   Width="300px"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label runat="server" ID="label_password" Text="Password: "></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox runat="server" ID="text_password" Text="12345"   Width="300px"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label runat="server" ID="label_name" Text="Name: "></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox runat="server" ID="text_name"   Width="300px"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label runat="server" ID="label_company" Text="Company: "></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox runat="server" ID="text_company"   Width="300px"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label runat="server" ID="label_email" Text="e-mail: "></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox runat="server" ID="text_email"   Width="300px"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label runat="server" ID="label_group" Text="Group: "></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:DropDownList runat="server" ID="drop_group" DataTextField="group_name" 
                DataValueField="id"   Width="300px" ></asp:DropDownList>
        </asp:TableCell>
    </asp:TableRow>

</asp:Table>
    <asp:Table runat="server" ID="table_buttons" HorizontalAlign="Center">
        <asp:TableRow>
            <asp:TableCell Width="340px" HorizontalAlign="Left">
                <asp:Button runat="server" ID="button1" Text="Save" CssClass="save"  OnClick="button_save_Click"/>
            </asp:TableCell>
            <asp:TableCell Width="100px">
                <asp:Button runat="server" ID="button2" Text="Cancel" CssClass="clear" OnClick="button_clear_Click" OnClientClick="return confirmDelete();" />
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>

</asp:Panel>









