<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="TimeRecordingLogFormGrade.ascx.cs" Inherits="PSP.Form.TimeRecordingLogFormGrade" %>

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
        font-style:italic";>Time Recording Log</h3>

<br />
<asp:Panel runat="server" ID="panel_form" Width="740px" BorderWidth="1px">
    <asp:Table runat="server" ID="table_data">
        <asp:TableRow>
            <asp:TableCell Width="590px">
            </asp:TableCell>
            <asp:TableCell Width="150px">
                <asp:Button runat="server" Text="Fill Form" ID="button1" OnClick="button_fetch_Click" CssClass="fetch" Width="150px"/>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <asp:Table ID="Table1" runat="server" Width="740px">
        <asp:TableHeaderRow HorizontalAlign="Left">
            <asp:TableHeaderCell Width="160px">
                <asp:Label ID="label_info_phase" runat="server" >Phase</asp:Label>
            </asp:TableHeaderCell>
        <asp:TableHeaderCell  Width="120px">
            <asp:Label ID="label_info_stime" runat="server"  ToolTip="Başlangıç Zamanı">Start Time</asp:Label >
        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="80px">

        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="120px">
            <asp:Label ID="label_info_ftime" runat="server">Finish Time</asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="80px">

        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="70px">
            <asp:Label ID="label_info_inter" runat="server" Width="50px">İnter.</asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="70px">
            <asp:Label ID="label_info_delta" runat="server" Width="50px">Delta</asp:Label >
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
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_plan_ftime" runat="server" Text="00.00.0000 00:00:00"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_plan_inter" runat="server" Width="50px"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_plan_delta" runat="server" Width="50px"></asp:TextBox>
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
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_design_ftime" runat="server" Text="00.00.0000 00:00:00"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_design_inter" runat="server" Width="50px"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_design_delta" runat="server" Width="50px"></asp:TextBox>
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
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_code_ftime" runat="server" Text="00.00.0000 00:00:00"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_code_inter" runat="server" Width="50px"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_code_delta" runat="server" Width="50px"></asp:TextBox>
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
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_compile_ftime" runat="server" Text="00.00.0000 00:00:00"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_compile_inter" runat="server" Width="50px"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_compile_delta" runat="server" Width="50px"></asp:TextBox>
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
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_test_ftime" runat="server" Text="00.00.0000 00:00:00"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_test_inter" runat="server" Width="50px"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_test_delta" runat="server" Width="50px"></asp:TextBox>
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
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_pm_ftime" runat="server" Text="00.00.0000 00:00:00"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_pm_inter" runat="server" Width="50px"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_pm_delta" runat="server" Width="50px"></asp:TextBox>
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


