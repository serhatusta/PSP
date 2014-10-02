<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProcessImprovementProposalFormGrade.ascx.cs" Inherits="PSP.Form.ProcessImprovementProposalFormGrade" %>


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
font-style:italic";>Process Improvement Proposal Form</h3>
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
    <asp:Table ID="Table3" runat="server" Width="730px">
    <asp:TableHeaderRow>
        <asp:TableHeaderCell>
            <asp:Label runat="server" Text="Problem Description" ID="label2"></asp:Label>
        </asp:TableHeaderCell>
    </asp:TableHeaderRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="label3" runat="server" Text="Briefly describe the problems you encountered."></asp:Label>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:TextBox ID="text_problem" runat="server"  Width="730px" Height="70px" TextMode="MultiLine" Rows="5"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableHeaderRow>
        <asp:TableHeaderCell>
            <asp:Label ID="label4" runat="server" Text="Proposal Description"></asp:Label>
        </asp:TableHeaderCell>
    </asp:TableHeaderRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="label5" runat="server" Text="Briefly describe the process improvements that you propose."></asp:Label>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:TextBox ID="text_proposal" runat="server"  Width="730px" Height="70px" TextMode="MultiLine" Rows="5"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableHeaderRow>
        <asp:TableHeaderCell>
            <asp:Label ID="label6" runat="server" Text="Other Notes and Comments"></asp:Label>
        </asp:TableHeaderCell>
    </asp:TableHeaderRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="label7" runat="server" Text="Note any other comments or observations that describe your experiences or improvement ideas."></asp:Label>
        </asp:TableCell>
    </asp:TableRow>
     <asp:TableRow>
        <asp:TableCell>
            <asp:TextBox ID="text_notes" runat="server"  Width="730px" Height="70px" TextMode="MultiLine" Rows="5"></asp:TextBox>
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
            <asp:Label ID="Label10" runat="server" Text="Grade: "></asp:Label>
            
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




