<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="GroupForm.ascx.cs" Inherits="PSP.Form.GroupForm" %>



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
width:910px;
font-style:italic";>Group Form</h3>
<br />

<asp:Panel runat="server" ID="panel_form" Width="440px" BorderWidth="1px">
    <asp:Table ID="table_group" runat="server" Width="310px">
                    
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:HiddenField runat="server" ID="hidden_groupid" Value="0"/>
                        </asp:TableCell>
                        <asp:TableCell>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label runat="server" ID="label_group_info" Text="Group name: "  Width="120px" ></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox runat="server" ID="text_group_name" Width="300px"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label runat="server" ID="label_note" Text="Note: " ></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:TextBox runat="server" ID="text_note"  Width="300px"></asp:TextBox>
                        </asp:TableCell>
                    </asp:TableRow>
                    <asp:TableRow>
                        <asp:TableCell>
                            <asp:Label runat="server" ID="label_type" Text="Group Type: " ToolTip="Select the available group type. Otherwise select other option."></asp:Label>
                        </asp:TableCell>
                        <asp:TableCell>
                            <asp:DropDownList runat="server" ID="drop_type"  Width="300px">
                                <asp:ListItem Text="University" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Company" Value="2"></asp:ListItem>
                                <asp:ListItem Text="Other" Value="3"></asp:ListItem>
                            </asp:DropDownList>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
    <asp:Table runat="server" ID="table_buttons" HorizontalAlign="Center">
        <asp:TableRow>
            <asp:TableCell Width="340px" HorizontalAlign="Left">
                <asp:Button runat="server" ID="button1" Text="Save" CssClass="save"  OnClick="button_save_Click"/>
            </asp:TableCell>
            <asp:TableCell Width="100px">
                <asp:Button runat="server" ID="button2" Text="Cancel" CssClass="clear" OnClick="button_clear_Click" OnClientClick="return confirmDelete();" />
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>

</asp:Panel>
