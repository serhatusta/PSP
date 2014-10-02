<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TimeRecordingLogForm.ascx.cs" Inherits="PSP.Form.TimeRecordingLogForm" %>

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
        font-style:italic";>Time Recording Log</h3>

<br />
<asp:Label ForeColor="#440000" Font-Size="18px" Font-Italic="true" runat="server" ID="header"></asp:Label>
<asp:Panel runat="server" ID="panel_form" Width="740px" BorderWidth="1px">
    <asp:Table ID="Table1" runat="server" Width="740px">
        <asp:TableHeaderRow HorizontalAlign="Left">
            <asp:TableHeaderCell Width="160px">
                <asp:Label ID="label_info_phase" runat="server" >Phase</asp:Label>
            </asp:TableHeaderCell>
        <asp:TableHeaderCell  Width="120px">
            <asp:Label ID="label_info_stime" runat="server"  ToolTip="Start Time">Start Time</asp:Label >
        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="80px">

        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="120px">
            <asp:Label ID="label_info_ftime" runat="server"  ToolTip="Finish Time">Finish Time</asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="80px">

        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="70px">
            <asp:Label ID="label_info_inter" runat="server" Width="50px"  ToolTip="Interrupt in second">İnter.</asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="70px">
            <asp:Label ID="label_info_delta" runat="server" Width="50px"   ToolTip="Delta in second">Delta</asp:Label >
        </asp:TableHeaderCell>
    </asp:TableHeaderRow>
    <asp:TableRow>
        <asp:TableCell>
            <br />
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow HorizontalAlign="Left">
        <asp:TableCell>
            <asp:Label ID="label_info_plan" runat="server" >PLAN</asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox runat="server" ID="text_plan_stime" Text="00.00.0000 00:00:00" ></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell HorizontalAlign="left">
            <asp:ImageButton OnClick="button_plan_stime_Click"  runat="server" ImageUrl="~/Images/time-icon.png" ID="button_plan_stime"/>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_plan_ftime" runat="server" Text="00.00.0000 00:00:00"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:ImageButton OnClick="button_plan_stime_Click" runat="server" ImageUrl="~/Images/time-icon.png" ID="button_plan_ftime"/>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_plan_inter" runat="server" Width="50px" ToolTip="in second"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_plan_delta" runat="server" Width="50px" ToolTip="in second"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label runat="server" ID="label_plan_comment">Comment</asp:Label  >
        </asp:TableCell>
        <asp:TableCell ColumnSpan="7">
            <asp:TextBox runat="server" ID="text_plan_comment" Width="580px"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <br />
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="label_info_design" runat="server" >DESIGN</asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox runat="server" ID="text_design_stime" Text="00.00.0000 00:00:00"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:ImageButton OnClick="button_plan_stime_Click" ID="button_design_stime" runat="server" ImageUrl="~/Images/time-icon.png"/>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_design_ftime" runat="server" Text="00.00.0000 00:00:00"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:ImageButton OnClick="button_plan_stime_Click" ID="button_design_ftime" runat="server" ImageUrl="~/Images/time-icon.png"/>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_design_inter" runat="server" Width="50px" ToolTip="in second"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_design_delta" runat="server" Width="50px" ToolTip="in second"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="label_design_comment" runat="server">Comment</asp:Label  >
        </asp:TableCell>
        <asp:TableCell ColumnSpan="7">
            <asp:TextBox runat="server" ID="text_design_comment" Width="580px"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <br />
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="label_info_code" runat="server" >CODE</asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox runat="server" ID="text_code_stime" Text="00.00.0000 00:00:00"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:ImageButton OnClick="button_plan_stime_Click" ID="button_code_stime" runat="server" ImageUrl="~/Images/time-icon.png"/>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_code_ftime" runat="server" Text="00.00.0000 00:00:00"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:ImageButton OnClick="button_plan_stime_Click" ID="button_code_ftime" runat="server" ImageUrl="~/Images/time-icon.png"/>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_code_inter" runat="server" Width="50px" ToolTip="in second"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_code_delta" runat="server" Width="50px" ToolTip="in second"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="label_code_comment" runat="server">Comment</asp:Label  >
        </asp:TableCell>
        <asp:TableCell ColumnSpan="7">
            <asp:TextBox runat="server" ID="text_code_comment" Width="580px"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <br />
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="label_info_compile" runat="server" >COMPILE</asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox runat="server" ID="text_compile_stime" Text="00.00.0000 00:00:00"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:ImageButton OnClick="button_plan_stime_Click" ID="button_compile_stime" runat="server" ImageUrl="~/Images/time-icon.png"/>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_compile_ftime" runat="server" Text="00.00.0000 00:00:00"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:ImageButton OnClick="button_plan_stime_Click" ID="button_compile_ftime" runat="server" ImageUrl="~/Images/time-icon.png"/>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_compile_inter" runat="server" Width="50px" ToolTip="in second"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_compile_delta" runat="server" Width="50px" ToolTip="in second"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="label_compile_comment" runat="server">compile</asp:Label  >
        </asp:TableCell>
        <asp:TableCell ColumnSpan="7">
            <asp:TextBox runat="server" ID="text_compile_comment" Width="580px"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <br />
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="label_info_test" runat="server" >TEST</asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox runat="server" ID="text_test_stime" Text="00.00.0000 00:00:00"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:ImageButton OnClick="button_plan_stime_Click" ID="button_test_stime" runat="server" ImageUrl="~/Images/time-icon.png"/>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_test_ftime" runat="server" Text="00.00.0000 00:00:00"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:ImageButton OnClick="button_plan_stime_Click" ID="button_test_ftime" runat="server" ImageUrl="~/Images/time-icon.png"/>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_test_inter" runat="server" Width="50px" ToolTip="in second"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_test_delta" runat="server" Width="50px" ToolTip="in second"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="label_test_test" runat="server">test</asp:Label  >
        </asp:TableCell>
        <asp:TableCell ColumnSpan="7">
            <asp:TextBox runat="server" ID="text_test_comment" Width="580px"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <br />
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="label_info_pm" runat="server" >P.M.</asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox runat="server" ID="text_pm_stime" Text="00.00.0000 00:00:00"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:ImageButton OnClick="button_plan_stime_Click" ID="button_pm_stime" runat="server" ImageUrl="~/Images/time-icon.png"/>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_pm_ftime" runat="server" Text="00.00.0000 00:00:00"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:ImageButton OnClick="button_plan_stime_Click" ID="button_pm_ftime" runat="server" ImageUrl="~/Images/time-icon.png"/>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_pm_inter" runat="server" Width="50px" ToolTip="in second"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_pm_delta" runat="server" Width="50px" ToolTip="in second"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="label_pm_pm" runat="server">Comment</asp:Label  >
        </asp:TableCell>
        <asp:TableCell ColumnSpan="7">
            <asp:TextBox runat="server" ID="text_pm_comment" Width="580px"></asp:TextBox>
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
            <asp:TableCell Width="320px">
                <asp:Button runat="server" ID="button_save" Text="Save" CssClass="save"  OnClick="button_save_Click"/>
            </asp:TableCell>
            <asp:TableCell Width="320px">
                <asp:Button runat="server" ID="button2" Text="Clear" CssClass="clear" OnClick="button_clear_Click" OnClientClick="return confirmDelete();" />
            </asp:TableCell>
            <asp:TableCell>
                <asp:Button runat="server" ID="button6" Text="Calculate" CssClass="cal" OnClick="button_calculate_Click" />
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</asp:Panel>


