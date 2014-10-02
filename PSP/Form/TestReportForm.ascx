<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TestReportForm.ascx.cs" Inherits="PSP.Form.TestReportForm" %>




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
width:740px;
font-style:italic";>Test Report Form</h3>
<br />
<asp:Label ForeColor="#440000" Font-Size="18px" Font-Italic="true" runat="server" ID="header"></asp:Label>

<asp:Panel runat="server" ID="panel_form" Width="740px" BorderWidth="1px">
    <asp:Table ID="Table1" runat="server" Width="740px">
    <asp:TableRow>
        <asp:TableCell Width="140px" VerticalAlign="Top">
            <asp:Label ID="Label1" runat="server" Text="Test Number: "></asp:Label>
        </asp:TableCell>
        <asp:TableCell Width="600px">
            <asp:TextBox runat="server"  Width="600px" ID="text_testnumber"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow VerticalAlign="Top">
        <asp:TableCell>
            <asp:Label ID="Label2" runat="server" Text="Test Name: "></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_testname" runat="server"  Width="600px"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow VerticalAlign="Top">
        <asp:TableCell>
            <asp:Label ID="Label3" runat="server" Text="Objective: "></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_objective" runat="server"  Width="600px" Height="50px" TextMode="MultiLine" Rows="3"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow VerticalAlign="Top">
        <asp:TableCell>
            <asp:Label ID="Label4" runat="server" Text="Conditions: "></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_condition" runat="server"  Width="600px" Height="50px" TextMode="MultiLine" Rows="3"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow VerticalAlign="Top">
        <asp:TableCell>
            <asp:Label ID="Label5" runat="server" Text="Expected Results: "></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_expected" runat="server"  Width="600px" Height="50px" TextMode="MultiLine" Rows="3"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow VerticalAlign="Top">
        <asp:TableCell>
            <asp:Label ID="Label6" runat="server" Text="Actual Results: "></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_actual" runat="server"  Width="600px" Height="50px" TextMode="MultiLine" Rows="3"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <br />
        </asp:TableCell>
    </asp:TableRow>
</asp:Table>
<asp:Table runat="server" ID="table_buttons">
        <asp:TableRow>
            <asp:TableCell Width="640px">
                <asp:Button runat="server" ID="button1" Text="Save" CssClass="save"  OnClick="button_save_Click"/>
            </asp:TableCell>
            <asp:TableCell Width="100px">
                <asp:Button runat="server" ID="button2" Text="Clear" CssClass="clear" OnClick="button_clear_Click" OnClientClick="return confirmDelete();" />
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</asp:Panel>


