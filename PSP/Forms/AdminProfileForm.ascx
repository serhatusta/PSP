<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AdminProfileForm.ascx.cs" Inherits="PSP.Form.AdminProfileFrom" %>

<asp:Table ID="Table1" runat="server">
    <asp:TableRow>
        <asp:TableCell>
            <asp:HiddenField runat="server" ID="hidden_id" Value="0"/>
        </asp:TableCell>
        <asp:TableCell>
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
            <asp:Label runat="server" ID="label_email" Text="e-mail: "></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox runat="server" ID="text_email"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    
    <asp:TableRow>
        <asp:TableCell>
            <asp:Button runat="server" ID="button_save" Text="Save" Width="70px" OnClick="button_save_Click"/>
        </asp:TableCell>
        <asp:TableCell HorizontalAlign="Right">
            <asp:Button runat="server" ID="button_cancel" Text="Cancel" Width="70px" OnClick="button_cancel_Click"/>
        </asp:TableCell>
    </asp:TableRow>
</asp:Table>
