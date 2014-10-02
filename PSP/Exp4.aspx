<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterUser.Master" AutoEventWireup="true" CodeBehind="Exp4.aspx.cs" Inherits="PSP.Exp4" %>


<%@ Register TagPrefix="Components" TagName="TimeRecordingLog" Src="~/Form/TimeRecordingLogForm.ascx" %>
<%@ Register TagPrefix="Components" TagName="DefectRecordingLog" Src="~/Form/DefectRecordingLogForm.ascx" %>
<%@ Register TagPrefix="Components" TagName="ProcessImprovementProposal" Src="~/Form/ProcessImprovementProposalForm.ascx" %>
<%@ Register TagPrefix="Components" TagName="SizeEstimatingTemplateForm" Src="~/Form/SizeEstimatingTemplateForm.ascx" %>
<%@ Register TagPrefix="Components" TagName="TestReportForm" Src="~/Form/TestReportForm.ascx" %>
<%@ Register TagPrefix="Components" TagName="TaskAndSchedulePlanForm" Src="~/Form/TaskAndSchedulePlanFrom.ascx" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
<style type="text/css">
    .finish {
          background-image: url('Images/sicon.png'); 
          background-repeat:no-repeat; 
          height:32px;
          width:125px;
          text-align:right;
          background-color:white;
           
    }
    
    .item {
        border-bottom:1px solid #7E9CC1;
        color:#440000;
        font-family:Arial;
        font-size:18px;
        width:740px;
        font-style:italic
    }
    </style>
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
                                    <asp:Menu ID="Menu2" Width="155px" runat="server" Orientation="Vertical"
                                          StaticEnableDefaultPopOutImage="False"  >
                                        <Items>
                                            <asp:MenuItem Text="Experiment-1" Value="1" ToolTip="Experiment-1" NavigateUrl="~/Exp1.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Experiment-2" Value="2" ToolTip="Experiment-2" NavigateUrl="~/Exp2.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Experiment-3" Value="3" ToolTip="Experiment-3" NavigateUrl="~/Exp3.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Experiment-4" Value="4" ToolTip="Experiment-4" NavigateUrl="~/Exp4.aspx" Selected="true"></asp:MenuItem>
                                            <asp:MenuItem Text="Experiment-5" Value="5" ToolTip="Experiment-5" NavigateUrl="~/Exp5.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Experiment-6" Value="6" ToolTip="Experiment-6" NavigateUrl="~/Exp6.aspx"></asp:MenuItem>
                                        </Items>
                                        <StaticMenuItemStyle HorizontalPadding="10px" VerticalPadding="2px" />
                                        <StaticSelectedStyle Font-Bold="True" Font-Italic="True" Font-Size="Large"  ForeColor="#440000"/>
                                    </asp:Menu>
                                 </asp:Panel>
                             </asp:TableCell>
                         </asp:TableRow>
                     </asp:Table>
                 </div>
             </asp:TableCell>

             <asp:TableCell Width="795px" VerticalAlign="Top">
                 <div style="border-left:solid #50647B;" >
                      <asp:Panel ID="panel_forms" runat="server">
                          <asp:Table ID="Table1" runat="server">
                             <asp:TableRow>
                                 <asp:TableCell Width="610px" >
                                     <asp:Menu ID="menu_forms" Width="600px" runat="server" Orientation="Horizontal"
                                        StaticEnableDefaultPopOutImage="False" OnMenuItemClick="Menu1_MenuItemClick" BorderStyle="Groove" >
                                        <Items>
                                            <asp:MenuItem Text="TimeLog" Value="1" ToolTip="TimeLog"></asp:MenuItem>
                                            <asp:MenuItem Text="DefectLog" Value="2" ToolTip="DefectLog"></asp:MenuItem>
                                            <asp:MenuItem Text="PIP" Value="3" ToolTip="PIP"></asp:MenuItem><asp:MenuItem Text="SizeEstimate" Value="4" ToolTip="SizeEstimate"></asp:MenuItem>
                                            <asp:MenuItem Text="Test" Value="5" ToolTip="Test"></asp:MenuItem>
                                            <asp:MenuItem Text="TaskSchedule" Value="6" ToolTip="TaskSchedule"></asp:MenuItem>
                                        </Items>
                                        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                                        <StaticSelectedStyle Font-Bold="True" Font-Italic="True" Font-Size="Large"  ForeColor="#440000"/>
                                    </asp:Menu>
                                 </asp:TableCell>
                                 <asp:TableCell Width="120px" >
                                     <asp:Button runat="server" ID="button_finish" Text="Finish Exp." CssClass="finish"  OnClick="button_finish_Click"/>
                                 </asp:TableCell>
                             </asp:TableRow>
                              <asp:TableRow>
                                 <asp:TableCell>
                                     <asp:Label ID="header" runat="server"></asp:Label>
                                 </asp:TableCell>
                             </asp:TableRow>
                         </asp:Table>
                      
                        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0"  >
                         <asp:View ID="Tab0" runat="server"  >
                             <asp:Label ForeColor="#440000" Font-Size="18px" Font-Italic="true" runat="server" ID="header_date"></asp:Label>
                        </asp:View>
                        <asp:View ID="Tab1" runat="server"  >
                            <Components:TimeRecordingLog ID="timeRecordingLog" runat="server" />
                        </asp:View>
                        <asp:View ID="Tab2" runat="server">
                            <Components:DefectRecordingLog ID="defectRecordingLog" runat="server" />
                        </asp:View>
                        <asp:View ID="Tab3" runat="server">
                            <Components:ProcessImprovementProposal ID="processImprovementProposal" runat="server" />
                        </asp:View>
                        <asp:View ID="Tab4" runat="server">
                            <Components:SizeEstimatingTemplateForm ID="sizeEstimatingTemplateForm" runat="server" />
                        </asp:View>
                        <asp:View ID="Tab5" runat="server">
                            <Components:TestReportForm ID="testReportForm" runat="server" />
                        </asp:View>
                            <asp:View ID="Tab6" runat="server">
                            <Components:TaskAndSchedulePlanForm ID="taskAndSchedulePlanForm" runat="server" />
                        </asp:View>

                    </asp:MultiView>
                    </asp:Panel>                           
                 </div>
                                             
             </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</asp:Content>

