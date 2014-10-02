<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DefectRecordingLogFormGrade.ascx.cs" Inherits="PSP.Form.DefectRecordingLogFormGrade" %>





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
font-style:italic";>Defect Recording Log</h3>
<br />


<asp:Panel runat="server" ID="panel_form" Width="740px" BorderWidth="1px">
    <asp:Table runat="server" ID="table_data" Width="740px">
        <asp:TableRow>
            <asp:TableCell Width="590px">
                <asp:DropDownList runat="server" ID="drop_defects" Width="300px" DataTextField="id" DataValueField="id" OnSelectedIndexChanged="drop_defects_SelectedIndexChanged"></asp:DropDownList>
            </asp:TableCell>
            <asp:TableCell Width="150px">
                <asp:Button runat="server" Text="Fill Form" ID="button1" OnClick="button_fetch_Click" CssClass="fetch" Width="150px"/>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <br />
    <asp:Table ID="table_form" runat="server" Width="740px">
    <asp:TableHeaderRow HorizontalAlign="Left">
        <asp:TableHeaderCell Width="80px">
            <asp:Label runat="server" Text="Number" ID="label_number_info"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="60px">
            <asp:Label ID="label_date_info" runat="server" Text="Date"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="50px">

        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="170px">
            <asp:Label ID="label_type_info" runat="server" Text="Type"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="120px">
            <asp:Label ID="label_injected_info" runat="server" Text="Phase-Injected"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="120px">
            <asp:Label ID="label_removed_info" runat="server" Text="Phase-Removed"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell  Width="50px">
            <asp:Label ID="label_fix_info" runat="server" Text="Fix Time"></asp:Label>
        </asp:TableHeaderCell>
    </asp:TableHeaderRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label runat="server" Text="1" ID="label_number"></asp:Label>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_date" runat="server" Width="70px" ></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
        </asp:TableCell>
        <asp:TableCell>
            <asp:DropDownList runat="server" Width="160px" ID="drop_type">
                <asp:ListItem Value="1" Text="10-Documentation"></asp:ListItem>
                <asp:ListItem Value="2" Text="20-Syntax"></asp:ListItem>
                <asp:ListItem Value="3" Text="30-Build, Package"></asp:ListItem>
                <asp:ListItem Value="4" Text="40-Assignment"></asp:ListItem>
                <asp:ListItem Value="5" Text="50-Interface"></asp:ListItem>
                <asp:ListItem Value="6" Text="60-Checking"></asp:ListItem>
                <asp:ListItem Value="7" Text="70-Data"></asp:ListItem>
                <asp:ListItem Value="8" Text="80-Function"></asp:ListItem>
                <asp:ListItem Value="9" Text="90-System"></asp:ListItem>
                <asp:ListItem Value="10" Text="100-Enviroment"></asp:ListItem>
            </asp:DropDownList>
        </asp:TableCell>
        <asp:TableCell>
            <asp:DropDownList ID="drop_injected" runat="server" Width="110px">
                <asp:ListItem Value="1" Text="Plan"></asp:ListItem>
                <asp:ListItem Value="2" Text="Design"></asp:ListItem>
                <asp:ListItem Value="3" Text="Code"></asp:ListItem>
                <asp:ListItem Value="4" Text="Compile"></asp:ListItem>
                <asp:ListItem Value="5" Text="Test"></asp:ListItem>
                <asp:ListItem Value="6" Text="P.M."></asp:ListItem>
            </asp:DropDownList>
        </asp:TableCell>
        <asp:TableCell>
            <asp:DropDownList ID="drop_removed" runat="server" Width="110px">
                <asp:ListItem Value="1" Text="Plan"></asp:ListItem>
                <asp:ListItem Value="2" Text="Design"></asp:ListItem>
                <asp:ListItem Value="3" Text="Code"></asp:ListItem>
                <asp:ListItem Value="4" Text="Compile"></asp:ListItem>
                <asp:ListItem Value="5" Text="Test"></asp:ListItem>
                <asp:ListItem Value="6" Text="P.M."></asp:ListItem>
            </asp:DropDownList>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_fix" runat="server" Width="30px"></asp:TextBox>
        </asp:TableCell>
    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <asp:Label ID="label_description_info" runat="server" Text="Defect Description" Width="80px"></asp:Label>
        </asp:TableCell>
        <asp:TableCell ColumnSpan="6">
            <asp:TextBox ID="text_description" runat="server"  Width="635px" Height="50px" TextMode="MultiLine" Rows="3"></asp:TextBox>
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

