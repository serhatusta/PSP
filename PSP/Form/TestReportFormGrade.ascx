<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TestReportFormGrade.ascx.cs" Inherits="PSP.Form.TestReportFormGrade" %>



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

<asp:Panel runat="server" ID="panel_form" Width="740px" BorderWidth="1px">
    <asp:Table runat="server" ID="table_data" Width="740px">
        <asp:TableRow>
            <asp:TableCell Width="590px">
                <asp:DropDownList runat="server" ID="drop_tests" Width="300px" OnSelectedIndexChanged="drop_tests_SelectedIndexChanged" DataTextField="id" DataValueField="id"></asp:DropDownList>
            </asp:TableCell>
            <asp:TableCell Width="150px">
                <asp:Button runat="server" Text="Fill Form" ID="button1" OnClick="button_fetch_Click" CssClass="fetch" Width="150px"/>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
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
<asp:Table runat="server" ID="table_buttons" Width="740">
        <asp:TableRow>
        <asp:TableCell Width="100px">
            <asp:Label ID="Label35" runat="server" Text="Grade: "></asp:Label>
            
        </asp:TableCell>
        <asp:TableCell  Width="520px">
            <asp:TextBox ID="text_grade" runat="server"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell  Width="120px">
            <asp:Button runat="server" ID="button_save" Text="Save Grade" CssClass="grade"  OnClick="button_grade_Click"  Width="120px" />
        </asp:TableCell>
    </asp:TableRow>
    </asp:Table>
</asp:Panel>


