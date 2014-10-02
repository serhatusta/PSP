<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TaskAndSchedulePlanFrom.ascx.cs" Inherits="PSP.Form.TaskAndSchedulePlanFrom" %>




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
font-style:italic";>Task and Schedule Plan</h3>
<br />
<asp:Label ForeColor="#440000" Font-Size="18px" Font-Italic="true" runat="server" ID="header"></asp:Label>

<asp:Panel runat="server" ID="panel_form" Width="740px" BorderWidth="1px">
    <asp:Table ID="Table1" runat="server" Width="740px">
    <asp:TableHeaderRow HorizontalAlign="Left">
        <asp:TableHeaderCell Width="80px">
        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="160px">
        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="30px">
            
        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="70px">
            <asp:Label ID="Label2" runat="server" Text="Planned"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell  Width="30px">

        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="90px">

        </asp:TableHeaderCell>
        <asp:TableHeaderCell  Width="30px">

        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="70px">
            <asp:Label ID="Label22" runat="server" Text="Actual"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="30px">

        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="40px">

        </asp:TableHeaderCell>
    </asp:TableHeaderRow>
    <asp:TableHeaderRow HorizontalAlign="Left">
        <asp:TableHeaderCell Width="80px">
            <asp:Label ID="Label6" runat="server" Text="Phase"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="160px">
            <asp:Label ID="Label7" runat="server" Text="Task Name"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="30px">
            <asp:Label ID="Label1" runat="server" Text="Minute"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="70px">
            <asp:Label ID="Label8" runat="server" Text="Date"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell  Width="30px">

        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="90px">
            <asp:Label ID="Label3" runat="server" Text="PV"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell  Width="30px">
            <asp:Label ID="Label10" runat="server" Text="Minute"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="70px">
            <asp:Label ID="Label9" runat="server" Text="Date"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="30px">

        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="40px">
            <asp:Label ID="Label11" runat="server" Text="EV"></asp:Label>
        </asp:TableHeaderCell>
    </asp:TableHeaderRow>
    <asp:TableRow HorizontalAlign="Left">
        <asp:TableCell>
            <asp:Label ID="Label4" runat="server" Text="PLAN"></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:Label ID="Label5" runat="server" Text="PLAN"></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox runat="server" Width="30px" ID="text_plan_planned_minute"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_plan_planned_date" runat="server" Width="70px" Text="00/00/0000"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:ImageButton ID="plan_planned_date" runat="server"  OnClick="plan_planned_date_Click" ImageUrl="~/Images/time-icon.png"/>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_plan_planned_pv" runat="server" Width="40px" Text="12.22"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_plan_actual_minute" runat="server" Width="30px"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_plan_actual_date" runat="server" Width="70px" Text="00/00/0000"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:ImageButton ID="plan_actual_date" runat="server" OnClick="plan_planned_date_Click" ImageUrl="~/Images/time-icon.png"/>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_plan_actual_ev" runat="server" Width="40px" Text="12.22"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow HorizontalAlign="Left">
        <asp:TableCell>
            <asp:Label ID="Label12" runat="server" Text="DESIGN"></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:Label ID="Label13" runat="server" Text="DESIGN"></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_design_planned_minute" runat="server" Width="30px"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_design_planned_date" runat="server" Width="70px" Text="00/00/0000"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:ImageButton ID="design_planned_date" runat="server" OnClick="plan_planned_date_Click" ImageUrl="~/Images/time-icon.png"/>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_design_planned_pv" runat="server" Width="40px" Text="12.22"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_design_actual_minute" runat="server" Width="30px"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_design_actual_date" runat="server" Width="70px" Text="00/00/0000"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:ImageButton ID="design_actual_date" runat="server" OnClick="plan_planned_date_Click" ImageUrl="~/Images/time-icon.png"/>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_design_actual_ev" runat="server" Width="40px" Text="12.22"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow HorizontalAlign="Left">
        <asp:TableCell>
            <asp:Label ID="Label14" runat="server" Text="CODE"></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:Label ID="Label15" runat="server" Text="CODE"></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_code_planned_minute" runat="server" Width="30px"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_code_planned_date" runat="server" Width="70px" Text="00/00/0000"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:ImageButton ID="code_planned_date" runat="server" OnClick="plan_planned_date_Click" ImageUrl="~/Images/time-icon.png"/>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_code_planned_pv" runat="server" Width="40px" Text="12.22"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_code_actual_minute" runat="server" Width="30px"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_code_actual_date" runat="server" Width="70px" Text="00/00/0000"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:ImageButton ID="code_actual_date" runat="server" OnClick="plan_planned_date_Click" ImageUrl="~/Images/time-icon.png"/>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_code_actual_ev" runat="server" Width="40px" Text="12.22"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow HorizontalAlign="Left">
        <asp:TableCell>
            <asp:Label ID="Label16" runat="server" Text="COMPILE"></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:Label ID="Label17" runat="server" Text="COMPILE"></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_compile_planned_minute" runat="server" Width="30px"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_compile_planned_date" runat="server" Width="70px" Text="00/00/0000"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:ImageButton ID="compile_planned_date" runat="server" OnClick="plan_planned_date_Click" ImageUrl="~/Images/time-icon.png"/>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_compile_planned_pv" runat="server" Width="40px" Text="12.22"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_compile_actual_minute" runat="server" Width="30px"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_compile_actual_date" runat="server" Width="70px" Text="00/00/0000"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:ImageButton ID="compile_actual_date" runat="server" OnClick="plan_planned_date_Click" ImageUrl="~/Images/time-icon.png"/>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_compile_actual_ev" runat="server" Width="40px" Text="12.22"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow HorizontalAlign="Left">
        <asp:TableCell>
            <asp:Label ID="Label18" runat="server" Text="TEST"></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:Label ID="Label19" runat="server" Text="TEST"></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_test_planned_minute" runat="server" Width="30px"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_test_planned_date" runat="server" Width="70px" Text="00/00/0000"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:ImageButton ID="test_planned_date" runat="server" OnClick="plan_planned_date_Click" ImageUrl="~/Images/time-icon.png"/>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_test_planned_pv" runat="server" Width="40px" Text="12.22"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_test_actual_minute" runat="server" Width="30px"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_test_actual_date" runat="server" Width="70px" Text="00/00/0000"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:ImageButton ID="test_actual_date" runat="server" OnClick="plan_planned_date_Click" ImageUrl="~/Images/time-icon.png"/>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_test_actual_ev" runat="server" Width="40px" Text="12.22"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow HorizontalAlign="Left">
        <asp:TableCell>
            <asp:Label ID="Label20" runat="server" Text="P.M."></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:Label ID="Label21" runat="server" Text="P.M."></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_pm_planned_minute" runat="server" Width="30px"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_pm_planned_date" runat="server" Width="70px" Text="00/00/0000"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:ImageButton ID="pm_planned_date" runat="server" OnClick="plan_planned_date_Click" ImageUrl="~/Images/time-icon.png"/>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_pm_planned_pv" runat="server" Width="40px" Text="12.22"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_pm_actual_minute" runat="server" Width="30px"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_pm_actual_date" runat="server" Width="70px" Text="00/00/0000"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:ImageButton ID="pm_actual_date" runat="server" OnClick="plan_planned_date_Click" ImageUrl="~/Images/time-icon.png"/>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_pm_actual_ev" runat="server" Width="40px" Text="12.22"></asp:TextBox>
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
