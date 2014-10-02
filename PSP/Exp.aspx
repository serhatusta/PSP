<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterUser.Master" AutoEventWireup="true" CodeBehind="Exp.aspx.cs" Inherits="PSP.Exp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Table ID="Table2" runat="server" Width="950px">
        <asp:TableRow VerticalAlign="Top">
            <asp:TableCell Width="155px" >
                <div >
                    <asp:Table ID="Table3" runat="server">
                        <asp:TableRow>
                            <asp:TableCell>
                                <h3>Experiments</h3>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Panel ID="Panel3" runat="server">
                                    <asp:Menu ID="Menu1" Width="155px" runat="server" Orientation="Vertical"
                                           StaticEnableDefaultPopOutImage="False"  >
                                        <Items>
                                            <asp:MenuItem Text="Experiment-1" Value="1" ToolTip="Experiment-1" NavigateUrl="~/Exp1.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Experiment-2" Value="2" ToolTip="Experiment-2" NavigateUrl="~/Exp2.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Experiment-3" Value="3" ToolTip="Experiment-3" NavigateUrl="~/Exp3.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Experiment-4" Value="4" ToolTip="Experiment-4" NavigateUrl="~/Exp4.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Experiment-5" Value="5" ToolTip="Experiment-5" NavigateUrl="~/Exp5.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Experiment-6" Value="6" ToolTip="Experiment-6" NavigateUrl="~/Exp6.aspx"></asp:MenuItem>
                                        </Items>
                                        <StaticMenuItemStyle HorizontalPadding="10px" VerticalPadding="2px" />
                                        <StaticSelectedStyle Font-Bold="True" Font-Italic="True" Font-Size="Large"/>
                                    </asp:Menu>
                                 </asp:Panel>
                             </asp:TableCell>
                         </asp:TableRow>
                     </asp:Table>
                 </div>
             </asp:TableCell>

             <asp:TableCell Width="795px" VerticalAlign="Top">
                 <div style="border-left:solid #50647B;">
                    <asp:Table runat="server" ID="table_notes" Width="710px">
                        <asp:TableHeaderRow>
                            <asp:TableHeaderCell ColumnSpan="3">
                                <asp:Label runat="server" ID="label_header1" Text="Note of Experiment - 1"></asp:Label>
                            </asp:TableHeaderCell>
                        </asp:TableHeaderRow>
                        <asp:TableRow>
                            <asp:TableCell Width="150px">
                                <asp:Label runat="server" Text="Time Recording Log"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell Width="50px">
                                <asp:Label ID="Label36" runat="server" Text=":"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox runat="server" ID="text_exp1_time"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label1" runat="server" Text="Defect Recording Log"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label37" runat="server" Text=":"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox runat="server" ID="text_exp1_defect"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <br />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableHeaderRow>
                            <asp:TableHeaderCell ColumnSpan="3">
                                <asp:Label runat="server" ID="label2" Text="Note of Experiment - 2"></asp:Label>
                            </asp:TableHeaderCell>
                        </asp:TableHeaderRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label3" runat="server" Text="Time Recording Log"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label38" runat="server" Text=":"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox runat="server" ID="text_exp2_time"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label4" runat="server" Text="Defect Recording Log"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label39" runat="server" Text=":"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox runat="server" ID="text_exp2_defect"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label5" runat="server" Text="PIP"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label40" runat="server" Text=":"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox runat="server" ID="text_exp2_pip"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <br />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableHeaderRow>
                            <asp:TableHeaderCell ColumnSpan="3">
                                <asp:Label runat="server" ID="label6" Text="Note of Experiment - 3"></asp:Label>
                            </asp:TableHeaderCell>
                        </asp:TableHeaderRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label7" runat="server" Text="Time Recording Log"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label41" runat="server" Text=":"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox runat="server" ID="text_exp3_time"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label8" runat="server" Text="Defect Recording Log"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label42" runat="server" Text=":"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox runat="server" ID="text_exp3_defect"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label9" runat="server" Text="PIP"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label66" runat="server" Text=":"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox runat="server" ID="text_exp3_pip"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label10" runat="server" Text="Size Estimating Form"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label43" runat="server" Text=":"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox runat="server" ID="text_exp3_size"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label11" runat="server" Text="Test Reports"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label44" runat="server" Text=":"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox runat="server" ID="text_exp3_test"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <br />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableHeaderRow>
                            <asp:TableHeaderCell ColumnSpan="3">
                                <asp:Label runat="server" ID="label12" Text="Note of Experiment - 4"></asp:Label>
                            </asp:TableHeaderCell>
                        </asp:TableHeaderRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label13" runat="server" Text="Time Recording Log"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label65" runat="server" Text=":"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox runat="server" ID="text_exp4_time"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label14" runat="server" Text="Defect Recording Log"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label64" runat="server" Text=":"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox runat="server" ID="text_exp4_defect"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label15" runat="server" Text="PIP"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label63" runat="server" Text=":"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox runat="server" ID="text_exp4_pip"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label16" runat="server" Text="Size Estimating Form"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label62" runat="server" Text=":"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox runat="server" ID="text_exp4_size"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label17" runat="server" Text="Test Reports"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label61" runat="server" Text=":"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox runat="server" ID="text_exp4_test"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label18" runat="server" Text="Task and Schedule Form"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label60" runat="server" Text=":"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox runat="server" ID="text_exp4_task"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <br />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableHeaderRow>
                            <asp:TableHeaderCell ColumnSpan="3">
                                <asp:Label runat="server" ID="label19" Text="Note of Experiment - 5"></asp:Label>
                            </asp:TableHeaderCell>
                        </asp:TableHeaderRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label20" runat="server" Text="Time Recording Log"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label59" runat="server" Text=":"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox runat="server" ID="text_exp5_time"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label21" runat="server" Text="Defect Recording Log"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label58" runat="server" Text=":"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                 <asp:TextBox runat="server" ID="text_exp5_defect"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label22" runat="server" Text="PIP"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label57" runat="server" Text=":"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox runat="server" ID="text_exp5_pip"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label23" runat="server" Text="Size Estimating Form"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label56" runat="server" Text=":"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox runat="server" ID="text_exp5_size"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label24" runat="server" Text="Test Reports"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label55" runat="server" Text=":"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox runat="server" ID="text_exp5_test"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label25" runat="server" Text="Task and Schedule Form"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label54" runat="server" Text=":"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox runat="server" ID="text_exp5_task"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label26" runat="server" Text="Code Review"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label53" runat="server" Text=":"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox runat="server" ID="text_exp5_code"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <br />
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableHeaderRow>
                            <asp:TableHeaderCell ColumnSpan="3">
                                <asp:Label runat="server" ID="label27" Text="Note of Experiment - 6"></asp:Label>
                            </asp:TableHeaderCell>
                        </asp:TableHeaderRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label28" runat="server" Text="Time Recording Log"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label52" runat="server" Text=":"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox runat="server" ID="text_exp6_time"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label29" runat="server" Text="Defect Recording Log"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label51" runat="server" Text=":"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox runat="server" ID="text_exp6_defect"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label30" runat="server" Text="PIP"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label50" runat="server" Text=":"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox runat="server" ID="text_exp6_pip"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label31" runat="server" Text="Size Estimating Form"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label49" runat="server" Text=":"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox runat="server" ID="text_exp6_size"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label32" runat="server" Text="Test Reports"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label48" runat="server" Text=":"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox runat="server" ID="text_exp6_test"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label33" runat="server" Text="Task and Schedule Form"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label47" runat="server" Text=":"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox runat="server" ID="text_exp6_task"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label34" runat="server" Text="Code Review"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label46" runat="server" Text=":"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox runat="server" ID="text_exp6_code"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                        <asp:TableRow>
                            <asp:TableCell>
                                <asp:Label ID="Label35" runat="server" Text="Design Review"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:Label ID="Label45" runat="server" Text=":"></asp:Label>
                            </asp:TableCell>
                            <asp:TableCell>
                                <asp:TextBox runat="server" ID="text_exp6_design"></asp:TextBox>
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>           
                 </div>
                 <br />
                 <br />                            
             </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    <br />
                 <br />  <br />
</asp:Content>
