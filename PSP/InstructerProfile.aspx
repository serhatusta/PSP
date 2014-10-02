<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterInstructer.Master" AutoEventWireup="true" CodeBehind="InstructerProfile.aspx.cs" Inherits="PSP.InstructerProfile" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
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
    .cal {
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
width:940px;
font-style:italic";>Instructer Profile</h3>
<br />

<asp:Panel runat="server" ID="panel_form" Width="300px" BorderWidth="1px">
    <asp:Table ID="Table1" runat="server" Width="300px"   HorizontalAlign="Center">
        <asp:TableRow>
            <asp:TableCell Width="100px">
                <asp:Label runat="server" ID="label_name_info" Text="Name"></asp:Label>
            </asp:TableCell>
            <asp:TableCell Width="10px">
                <asp:Label runat="server" ID="label6" Text=":"></asp:Label>
            </asp:TableCell>
            <asp:TableCell Width="190px">
                <asp:TextBox runat="server" ID="text_name" Width="190px"></asp:TextBox>
            </asp:TableCell>

        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label runat="server" ID="label_username" Text="User name"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label runat="server" ID="label1" Text=":"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox runat="server" ID="text_username" Enabled="false" Width="190px"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
            <asp:TableCell>
                <asp:Label runat="server" ID="label_password" Text="Password"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label runat="server" ID="label2" Text=":"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox runat="server" ID="text_password" Width="190px"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>
        <asp:TableRow>
             <asp:TableCell>
                <asp:Label runat="server" ID="label_email" Text="e-mail"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:Label runat="server" ID="label4" Text=":"></asp:Label>
            </asp:TableCell>
            <asp:TableCell>
                <asp:TextBox runat="server" ID="text_email" Width="190px"></asp:TextBox>
            </asp:TableCell>
        </asp:TableRow>

        <asp:TableRow>
        <asp:TableCell>
            <br />
        </asp:TableCell>
    </asp:TableRow>
</asp:Table>
<asp:Table runat="server" ID="table_buttons" HorizontalAlign="Center">
        <asp:TableRow>
            <asp:TableCell Width="200px" HorizontalAlign="Left">
                <asp:Button runat="server" ID="button1" Text="Save" CssClass="save"  OnClick="button_save_Click"/>
            </asp:TableCell>
            <asp:TableCell Width="100px">
                <asp:Button runat="server" ID="button2" Text="Cancel" CssClass="clear" OnClick="button_clear_Click" OnClientClick="return confirmDelete();" />
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</asp:Panel>

    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>


