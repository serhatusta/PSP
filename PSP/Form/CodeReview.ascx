<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CodeReview.ascx.cs" Inherits="PSP.Form.CodeReview" %>

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
font-style:italic";>Code Review</h3>
<br />

<asp:Label ForeColor="#440000" Font-Size="18px" Font-Italic="true" runat="server" ID="header"></asp:Label>

<asp:Panel runat="server" ID="panel_form" Width="740px" BorderWidth="1px">
    <asp:Table ID="Table1" runat="server" Width="740px">

    <asp:TableRow >
        <asp:TableCell Width="200px" HorizontalAlign="Left"  >
            <asp:Table ID="Table2" runat="server" Width="200px">
                <asp:TableRow HorizontalAlign="Left">
                    <asp:TableCell>
                        <asp:Label runat="server" Text="Program Name: " ID="label_name_info"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow HorizontalAlign="Left">
                        <asp:TableCell>
                            <asp:TextBox runat="server" ID="text_name"  Width="200px"></asp:TextBox>
                        </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow HorizontalAlign="Left">
                        <asp:TableCell>
                            <asp:Label ID="label_item_info" runat="server" Text="Review Item"></asp:Label>
                        </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow HorizontalAlign="Left">
                        <asp:TableCell>
                            <asp:TextBox runat="server" ID="text_item" Width="200px"></asp:TextBox>
                        </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </asp:TableCell>

        <asp:TableCell HorizontalAlign="Left">
             <asp:Table ID="Table3" runat="server" Width="350px">
                <asp:TableRow HorizontalAlign="Left">
                        <asp:TableCell>
                            <asp:Label ID="label1" runat="server" Text="Note"  Width="350px" ></asp:Label>
                        </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow HorizontalAlign="Left">
                        <asp:TableCell>
                            <asp:TextBox ID="text_note" runat="server"  Width="350px" Height="70px" TextMode="MultiLine" Rows="3"></asp:TextBox>
                        </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </asp:TableCell>

        <asp:TableCell>
            <asp:Table ID="Table4" runat="server" Width="100px">
                <asp:TableRow HorizontalAlign="Left">
                        <asp:TableCell>
                            <asp:Label ID="label2" runat="server" Text="Status"  Width="70px" ></asp:Label>
                        </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow HorizontalAlign="Left">
                        <asp:TableCell>
                            <asp:CheckBox ID="status" runat="server"/>
                        </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow HorizontalAlign="Left">
                        <asp:TableCell>
                            <asp:Label ID="label3" runat="server" Text="Due Date"  Width="70px" ></asp:Label>
                        </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow HorizontalAlign="Left">
                        <asp:TableCell>
                            <asp:TextBox runat="server" ID="text_duedate" Width="70px"></asp:TextBox>
                        </asp:TableCell>
                    <asp:TableCell>
                        <asp:ImageButton ID="button_date" runat="server" ImageUrl="~/Images/time-icon.png" OnClick="button_date_Click"/>
                    </asp:TableCell>
                </asp:TableRow>
                
                
            </asp:Table>
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
