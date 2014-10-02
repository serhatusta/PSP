<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="PSP.LoginPage" %>

<!DOCTYPE html>

<html>
    <body>
        <form runat="server" id="form1" >
            <div style="position:absolute; height:200px; width:350px; margin:-100px 0 0 -175px; top:50%; left:50%">
            <asp:Login ID="login_manager" runat="server" OnAuthenticate="Login1_Authenticate" 
                BackColor="#F7F6F3" BorderColor="#5D7B9D" BorderPadding="4" 
                BorderStyle="Solid" BorderWidth="1px" FailureText="Uppps! Please try again." 
                Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" Height="200px" 
                PasswordLabelText="Password:" PasswordRequiredErrorMessage="Please enter your password!" 
                TitleText="User LoginPage" UserNameLabelText="Username:" RememberMeSet="false"
                UserNameRequiredErrorMessage="Please enter your username!" Width="350px">
            <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
            <LabelStyle HorizontalAlign="Left" />
            <LoginButtonStyle BackColor="#FFFBFF" BorderColor="#CCCCCC" BorderStyle="Solid" 
                BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284775" Height="25px" Width="100%" />
            <TextBoxStyle BorderColor="#336699" BorderStyle="Solid" BorderWidth="1px" Font-Size="0.8em" Height="20px" Width="250px" />
            <TitleTextStyle BackColor="#5D7B9D" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
            </asp:Login>
            <asp:LinkButton runat="server" ID="lnkBtn_WindowsAuth" Text="Contact with the provider" 
                Font-Underline="false" OnClick="lnkBtn_WindowsAuth_Click">
            </asp:LinkButton>
            </div>
        </form>
    </body>

</html>