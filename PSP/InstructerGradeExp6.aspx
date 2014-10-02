<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterInstructer.Master" AutoEventWireup="true" CodeBehind="InstructerGradeExp6.aspx.cs" Inherits="PSP.InstructerGradeExp6" %>

<%@ Register TagPrefix="Components" TagName="TimeRecordingLog" Src="~/Form/TimeRecordingLogFormGrade.ascx" %>
<%@ Register TagPrefix="Components" TagName="DefectRecordingLog" Src="~/Form/DefectRecordingLogFormGrade.ascx" %>
<%@ Register TagPrefix="Components" TagName="ProcessImprovementProposal" Src="~/Form/ProcessImprovementProposalFormGrade.ascx" %>
<%@ Register TagPrefix="Components" TagName="SizeEstimatingTemplateForm" Src="~/Form/SizeEstimatingTemplateFormGrade.ascx" %>
<%@ Register TagPrefix="Components" TagName="TestReportForm" Src="~/Form/TestReportFormGrade.ascx" %>
<%@ Register TagPrefix="Components" TagName="TaskAndSchedulePlanForm" Src="~/Form/TaskAndSchedulePlanFromGrade.ascx" %>
<%@ Register TagPrefix="Components" TagName="CodeReview" Src="~/Form/CodeReviewGrade.ascx" %>
<%@ Register TagPrefix="Components" TagName="DesignReview" Src="~/Form/DesignReviewGrade.ascx" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <br />
    <h3>Grade Experiments</h3>
    <asp:Label runat="server" ID="label_username" Text="Select User:"></asp:Label>
    <asp:Label runat="server" ID="label_user" Text="..."></asp:Label>
    <asp:Button runat="server" ID="finish_grading" Text ="Finish Grading" OnClick="finish_grading_Click"/>
    <asp:Panel runat="server" ID="panel_experiment">
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
                                            <asp:MenuItem Text="Experiment-1" Value="1" ToolTip="Experiment-1" NavigateUrl="~/InstructerGradeExp1.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Experiment-2" Value="2" ToolTip="Experiment-2" NavigateUrl="~/InstructerGradeExp2.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Experiment-3" Value="3" ToolTip="Experiment-3" NavigateUrl="~/InstructerGradeExp3.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Experiment-4" Value="4" ToolTip="Experiment-4" NavigateUrl="~/InstructerGradeExp4.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Experiment-5" Value="5" ToolTip="Experiment-5" NavigateUrl="~/InstructerGradeExp5.aspx"></asp:MenuItem>
                                            <asp:MenuItem Text="Experiment-6" Value="6" ToolTip="Experiment-6" NavigateUrl="~/InstructerGradeExp6.aspx" Selected="true"></asp:MenuItem>
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
                     <asp:Panel ID="Panel1" runat="server" Direction="LeftToRight" HorizontalAlign="Left">
                        <asp:Menu ID="Menu2" Width="730px" runat="server" Orientation="Horizontal"
                            StaticEnableDefaultPopOutImage="False" OnMenuItemClick="Menu1_MenuItemClick" BorderStyle="Groove" >
                            <Items>
                                <asp:MenuItem Text="TimeLog" Value="1" ToolTip="TimeLog"></asp:MenuItem>
                                <asp:MenuItem Text="DefectLog" Value="2" ToolTip="DefectLog"></asp:MenuItem>
                                <asp:MenuItem Text="PIP" Value="3" ToolTip="PIP"></asp:MenuItem>
                                <asp:MenuItem Text="SizeEstimate" Value="4" ToolTip="SizeEstimate"></asp:MenuItem>
                                <asp:MenuItem Text="Test" Value="5" ToolTip="Test"></asp:MenuItem>
                                <asp:MenuItem Text="TaskSchedule" Value="6" ToolTip="TaskSchedule"></asp:MenuItem>
                                <asp:MenuItem Text="CodeReview" Value="7" ToolTip="CodeReview"></asp:MenuItem>
                                <asp:MenuItem Text="DesignReview" Value="8" ToolTip="DesignReview"></asp:MenuItem>
                            </Items>
                            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
                            <StaticSelectedStyle Font-Bold="True" Font-Italic="True" Font-Size="Large"  />
                        </asp:Menu>
                        <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0"  >
                         <asp:View ID="Tab0" runat="server"  >
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
                        <asp:View ID="Tab7" runat="server">
                            <Components:CodeReview ID="codeReview" runat="server" />
                        </asp:View>
                        <asp:View ID="Tab8" runat="server">
                            <Components:DesignReview ID="designReview" runat="server" />
                        </asp:View>


                    </asp:MultiView>
                    </asp:Panel>                           
                 </div>
                 <br />
                 <br />                            
             </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
    </asp:Panel>
    <br />
    <br />
    <br />
</asp:Content>
