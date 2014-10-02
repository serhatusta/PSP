<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SizeEstimatingTemplateFormGrade.ascx.cs" Inherits="PSP.Form.SizeEstimatingTemplateFormGrade" %>

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
font-style:italic";>Size Estimating Template</h3>
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
        <asp:TableHeaderCell Width="200px">
            <asp:Label ID="Label4" runat="server" Text="Parts: Based"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="60px">
        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="60px">
        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="60px">
            <asp:Label ID="Label2" runat="server" Text="Planned"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell  Width="100px">
        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="60px">
        </asp:TableHeaderCell>
        <asp:TableHeaderCell  Width="60px">
        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="60px">
            <asp:Label ID="Label34" runat="server" Text="Actual"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="60px">

        </asp:TableHeaderCell>

    </asp:TableHeaderRow>
    <asp:TableHeaderRow HorizontalAlign="Left">
        <asp:TableHeaderCell >
            <asp:Label ID="Label6" runat="server" Text="Name"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell>
            <asp:Label ID="Label7" runat="server" Text="Base"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell>
            <asp:Label ID="Label1" runat="server" Text="Deleted"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell >
            <asp:Label ID="Label8" runat="server" Text="Modified"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell >
            <asp:Label ID="Label22" runat="server" Text="Added"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell >
            <asp:Label ID="Label3" runat="server" Text="Base"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell >
            <asp:Label ID="Label9" runat="server" Text="Deleted"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell >
            <asp:Label ID="Label10" runat="server" Text="Modified"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell  >
            <asp:Label ID="Label23" runat="server" Text="Added"></asp:Label>
        </asp:TableHeaderCell>
    </asp:TableHeaderRow>
    <asp:TableRow HorizontalAlign="Left">
        <asp:TableCell>
            <asp:TextBox ID="text_based_name" runat="server" Width="180px"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_based_planned_base" runat="server" Width="50px"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_based_planned_deleted" runat="server" Width="50px"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_based_planned_modified" runat="server" Width="50px"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_based_planned_added" runat="server" Width="50px" ></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_based_actual_base" runat="server" Width="50px"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_based_actual_deleted" runat="server" Width="50px"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_based_actual_modified" runat="server" Width="50px"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_based_actual_added" runat="server" Width="50px" ></asp:TextBox>
        </asp:TableCell>
        

    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <br />
        </asp:TableCell>
    </asp:TableRow>

    <asp:TableHeaderRow HorizontalAlign="Left">
        <asp:TableHeaderCell Width="200px">
            <asp:Label ID="Label5" runat="server" Text="Parts: Added"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="60px">
        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="60px">
        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="60px">
            <asp:Label ID="Label11" runat="server" Text="Planned"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell  Width="100px">
        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="60px">
        </asp:TableHeaderCell>
        <asp:TableHeaderCell  Width="60px">
        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="60px">
        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="60px">

        </asp:TableHeaderCell>

    </asp:TableHeaderRow>
    <asp:TableHeaderRow HorizontalAlign="Left">
        <asp:TableHeaderCell >
            <asp:Label ID="Label12" runat="server" Text="Name"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell>
            <asp:Label ID="Label13" runat="server" Text="Base"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell>
            <asp:Label ID="Label14" runat="server" Text="Deleted"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell >
            <asp:Label ID="Label15" runat="server" Text="Modified"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell >
            <asp:Label ID="Label16" runat="server" Text="Added"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell >
            <asp:Label ID="Label17" runat="server" Text="Base"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell >
            <asp:Label ID="Label18" runat="server" Text="Deleted"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell >
            <asp:Label ID="Label19" runat="server" Text="Modified"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell  >
            <asp:Label ID="Label20" runat="server" Text="Added"></asp:Label>
        </asp:TableHeaderCell>
    </asp:TableHeaderRow>
    <asp:TableRow HorizontalAlign="Left">
        <asp:TableCell>
            <asp:TextBox ID="text_added_name" runat="server" Width="180px"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_added_planned_base" runat="server" Width="50px"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_added_planned_deleted" runat="server" Width="50px"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_added_planned_modified" runat="server" Width="50px"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_added_planned_added" runat="server" Width="50px" ></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_added_actual_base" runat="server" Width="50px"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_added_actual_deleted" runat="server" Width="50px"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_added_actual_modified" runat="server" Width="50px"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_added_actual_added" runat="server" Width="50px" ></asp:TextBox>
        </asp:TableCell>
        

    </asp:TableRow>
    <asp:TableRow>
        <asp:TableCell>
            <br />
        </asp:TableCell>
    </asp:TableRow>
    

    <asp:TableHeaderRow HorizontalAlign="Left">
        <asp:TableHeaderCell Width="200px">
            <asp:Label ID="Label21" runat="server" Text="Parts: Reused"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="60px">
        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="60px">
        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="60px">
            <asp:Label ID="Label24" runat="server" Text="Planned"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell  Width="100px">
        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="60px">
        </asp:TableHeaderCell>
        <asp:TableHeaderCell  Width="60px">
        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="60px">
        </asp:TableHeaderCell>
        <asp:TableHeaderCell Width="60px">

        </asp:TableHeaderCell>

    </asp:TableHeaderRow>
    <asp:TableHeaderRow HorizontalAlign="Left">
        <asp:TableHeaderCell >
            <asp:Label ID="Label25" runat="server" Text="Name"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell>
            <asp:Label ID="Label26" runat="server" Text="Base"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell>
            <asp:Label ID="Label27" runat="server" Text="Deleted"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell >
            <asp:Label ID="Label28" runat="server" Text="Modified"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell >
            <asp:Label ID="Label29" runat="server" Text="Added"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell >
            <asp:Label ID="Label30" runat="server" Text="Base"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell >
            <asp:Label ID="Label31" runat="server" Text="Deleted"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell >
            <asp:Label ID="Label32" runat="server" Text="Modified"></asp:Label>
        </asp:TableHeaderCell>
        <asp:TableHeaderCell  >
            <asp:Label ID="Label33" runat="server" Text="Added"></asp:Label>
        </asp:TableHeaderCell>
    </asp:TableHeaderRow>
    <asp:TableRow HorizontalAlign="Left">
        <asp:TableCell>
            <asp:TextBox ID="text_reused_name" runat="server" Width="180px"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_reused_planned_base" runat="server" Width="50px"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_reused_planned_deleted" runat="server" Width="50px"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_reused_planned_modified" runat="server" Width="50px" ></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_reused_planned_added" runat="server" Width="50px"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_reused_actual_base" runat="server" Width="50px"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_reused_actual_deleted" runat="server" Width="50px"></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_reused_actual_modified" runat="server" Width="50px" ></asp:TextBox>
        </asp:TableCell>
        <asp:TableCell>
            <asp:TextBox ID="text_reused_actual_added" runat="server" Width="50px"></asp:TextBox>
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
