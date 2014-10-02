<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="DesignReviewGrade.ascx.cs" Inherits="PSP.Form.DesignReviewGrade" %>



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
font-style:italic";>Design Review</h3>
<br />


<asp:Panel runat="server" ID="panel_form" Width="740px" BorderWidth="1px">
    <asp:Table runat="server" ID="table_data">
        <asp:TableRow>
            <asp:TableCell Width="590px">
                <asp:DropDownList runat="server" ID="drop_defects" Width="300px" DataTextField="id" DataValueField="id" OnSelectedIndexChanged="drop_defects_SelectedIndexChanged"></asp:DropDownList>
            </asp:TableCell>
            <asp:TableCell Width="150px">
                <asp:Button runat="server" Text="Fill Form" ID="button_fetch" OnClick="button_fetch_Click" CssClass="fetch" Width="150px"/>
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <br />
    <asp:Table ID="Table5" runat="server" Width="740px">
    <asp:TableRow >
        <asp:TableCell Width="200px" HorizontalAlign="Left"  >
            <asp:Table ID="Table6" runat="server" Width="200px">
                <asp:TableRow HorizontalAlign="Left">
                    <asp:TableCell>
                        <asp:Label runat="server" Text="Program Name " ID="label5"></asp:Label>
                    </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow HorizontalAlign="Left">
                        <asp:TableCell>
                            <asp:TextBox runat="server" ID="text_name"  Width="200px"></asp:TextBox>
                        </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow HorizontalAlign="Left">
                        <asp:TableCell>
                            <asp:Label ID="label6" runat="server" Text="Review Item"></asp:Label>
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
             <asp:Table ID="Table7" runat="server" Width="350px">
                <asp:TableRow HorizontalAlign="Left">
                        <asp:TableCell>
                            <asp:Label ID="label7" runat="server" Text="Note"  Width="350px" ></asp:Label>
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
            <asp:Table ID="Table8" runat="server" Width="100px">
                <asp:TableRow HorizontalAlign="Left">
                        <asp:TableCell>
                            <asp:Label ID="label8" runat="server" Text="Status"  Width="70px" ></asp:Label>
                        </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow HorizontalAlign="Left">
                        <asp:TableCell>
                            <asp:CheckBox ID="check_status" runat="server"/>
                        </asp:TableCell>
                </asp:TableRow>

                <asp:TableRow HorizontalAlign="Left">
                        <asp:TableCell>
                            <asp:Label ID="label9" runat="server" Text="Due Date"  Width="70px" ></asp:Label>
                        </asp:TableCell>
                </asp:TableRow>
                <asp:TableRow HorizontalAlign="Left">
                        <asp:TableCell>
                            <asp:TextBox runat="server" ID="text_date" Width="70px"></asp:TextBox>
                        </asp:TableCell>
                    <asp:TableCell>
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
