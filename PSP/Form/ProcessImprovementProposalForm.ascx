<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ProcessImprovementProposalForm.ascx.cs" Inherits="PSP.Form.ProcessImprovementProposalForm" %>



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
font-style:italic";>Process Improvement Proposal Form</h3>
<br />

<asp:Label ForeColor="#440000" Font-Size="18px" Font-Italic="true" runat="server" ID="header"></asp:Label>

<asp:Panel runat="server" ID="panel_form" Width="740px" BorderWidth="1px">
    <asp:Table ID="Table1" runat="server" Width="730px">
    <asp:TableHeaderRow>
        <asp:TableHeaderCell>
            <asp:Label runat="server" Text="Problem Description" ID="label_problem_info"></asp:Label>
        </asp:TableHeaderCell>
    </asp:TableHeaderRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="label_info1" runat="server" Text="Briefly describe the problems you encountered."></asp:Label>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:TextBox ID="text_problem" runat="server"  Width="730px" Height="70px" TextMode="MultiLine" Rows="5"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableHeaderRow>
        <asp:TableHeaderCell>
            <asp:Label ID="label_proposal_info" runat="server" Text="Proposal Description"></asp:Label>
        </asp:TableHeaderCell>
    </asp:TableHeaderRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="label_info2" runat="server" Text="Briefly describe the process improvements that you propose."></asp:Label>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:TextBox ID="text_proposal" runat="server"  Width="730px" Height="70px" TextMode="MultiLine" Rows="5"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableHeaderRow>
        <asp:TableHeaderCell>
            <asp:Label ID="label_other_info" runat="server" Text="Other Notes and Comments"></asp:Label>
        </asp:TableHeaderCell>
    </asp:TableHeaderRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="label_info3" runat="server" Text="Note any other comments or observations that describe your experiences or improvement ideas."></asp:Label>
        </asp:TableCell>
    </asp:TableRow>
     <asp:TableRow>
        <asp:TableCell>
            <asp:TextBox ID="text_other" runat="server"  Width="730px" Height="70px" TextMode="MultiLine" Rows="5"></asp:TextBox>
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
                <asp:Button runat="server" ID="button_save" Text="Save" CssClass="save"  OnClick="button_save_Click"/>
            </asp:TableCell>
            <asp:TableCell Width="100px">
                <asp:Button runat="server" ID="button2" Text="Clear" CssClass="clear" OnClick="button_clear_Click" OnClientClick="return confirmDelete();" />
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</asp:Panel>


