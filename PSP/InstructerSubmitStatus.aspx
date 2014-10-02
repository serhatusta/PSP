<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterInstructer.Master" AutoEventWireup="true" CodeBehind="InstructerSubmitStatus.aspx.cs" Inherits="PSP.InstructerSubmitStatus" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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
   
    <asp:Panel ID="Panel1" runat="server">
        <asp:Menu ID="Menu1" Width="940px" runat="server" Orientation="Horizontal"
        StaticEnableDefaultPopOutImage="False" OnMenuItemClick="Menu1_MenuItemClick" BorderStyle="Groove" >
            <Items>
                <asp:MenuItem Text="Submit Status" Value="1" ToolTip="Submit Status"></asp:MenuItem>
                <asp:MenuItem Text="Experiment Status" Value="2" ToolTip="Experiment Status"></asp:MenuItem>
            </Items>
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle Font-Bold="True" Font-Italic="True" Font-Size="Large"  ForeColor="#440000"/>
       </asp:Menu>
       <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0"  >
            <asp:View ID="Tab0" runat="server"  >
            </asp:View>
            <asp:View ID="Tab1" runat="server"  >
                <h3 style="border-bottom:1px solid #7E9CC1;
                color:#440000;
                font-family:Arial;
                font-size:18px;
                width:740px;
                font-style:italic";>Submit Status</h3>
                <br />
                 <asp:GridView ID="submit_grid" runat="server" DataKeyNames="id" BorderWidth="0"  
                    AutoGenerateColumns="False"  Width="910px" Enabled="false">
                    <Columns>
                        <asp:BoundField DataField="owner" HeaderText="User" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="username" HeaderText="username" ReadOnly="True" SortExpression="id" />
                        <asp:TemplateField  FooterStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="Exp-1">
                            <ItemTemplate>
                                <asp:CheckBox runat="server" ID="exp1" Checked="false"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField  FooterStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center"  HeaderText="Exp-2">
                            <ItemTemplate>
                                <asp:CheckBox runat="server" ID="exp2" Checked="false"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField  FooterStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="Exp-3">
                            <ItemTemplate>
                                <asp:CheckBox runat="server" ID="exp3" Checked="false"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField  FooterStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="Exp-4">
                            <ItemTemplate>
                                <asp:CheckBox runat="server" ID="exp4" Checked="false"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField  FooterStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="Exp-5">
                            <ItemTemplate>
                                <asp:CheckBox runat="server" ID="exp5" Checked="false"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField  FooterStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center" HeaderText="Exp-6">
                            <ItemTemplate>
                                <asp:CheckBox runat="server" ID="exp6" Checked="false"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>           
            </asp:View>
            <asp:View ID="Tab2" runat="server">
                <h3 style="border-bottom:1px solid #7E9CC1;
                color:#440000;
                font-family:Arial;
                font-size:18px;
                width:740px;
                font-style:italic";>Experiments Status</h3>
                <br />
                <asp:Panel runat="server" ID="panel_form" Width="650px" BorderWidth="1px">
                    <asp:Table runat="server" ID="table_experiments">
                       <asp:TableFooterRow>
                           <asp:TableHeaderCell Width="100px">
                               <asp:Label ID="Label1" runat="server" Text="Experiments"></asp:Label>
                           </asp:TableHeaderCell>
                           <asp:TableHeaderCell Width="50px">
                               <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                           </asp:TableHeaderCell>
                           <asp:TableHeaderCell  Width="250px">
                               <asp:Label ID="Label3" runat="server" Text="Start Date"></asp:Label>
                           </asp:TableHeaderCell>
                           <asp:TableHeaderCell  Width="250px">
                               <asp:Label ID="Label4" runat="server" Text="Finish Date"></asp:Label>
                           </asp:TableHeaderCell>
                       </asp:TableFooterRow>
                       <asp:TableRow>
                           <asp:TableCell>
                               <br />
                           </asp:TableCell>
                       </asp:TableRow>
                       <asp:TableRow>
                           <asp:TableCell>
                               <asp:Label ID="Label5" runat="server" Text="Experiment - 1"></asp:Label>
                           </asp:TableCell>
                           <asp:TableCell>
                               <br />
                           </asp:TableCell>
                           <asp:TableCell>
                               <asp:TextBox runat="server" Width="200px" ID="text_exp1_start"></asp:TextBox>
                           </asp:TableCell>
                           <asp:TableCell>
                               <asp:TextBox runat="server" Width="200px" ID="text_exp1_finish"></asp:TextBox>
                           </asp:TableCell>
                       </asp:TableRow>
                       <asp:TableRow>
                           <asp:TableCell>
                               <asp:Label ID="Label6" runat="server" Text="Experiment - 2"></asp:Label>
                           </asp:TableCell>
                           <asp:TableCell>
                               <br />
                           </asp:TableCell>
                           <asp:TableCell>
                               <asp:TextBox runat="server" Width="200px" ID="text_exp2_start"></asp:TextBox>
                           </asp:TableCell>
                           <asp:TableCell>
                               <asp:TextBox runat="server" Width="200px" ID="text_exp2_finish"></asp:TextBox>
                           </asp:TableCell>
                       </asp:TableRow>
                       <asp:TableRow>
                           <asp:TableCell>
                               <asp:Label ID="Label7" runat="server" Text="Experiment - 3"></asp:Label>
                           </asp:TableCell>
                           <asp:TableCell>
                               <br />
                           </asp:TableCell>
                           <asp:TableCell>
                               <asp:TextBox runat="server" Width="200px" ID="text_exp3_start"></asp:TextBox>
                           </asp:TableCell>
                           <asp:TableCell>
                               <asp:TextBox runat="server" Width="200px" ID="text_exp3_finish"></asp:TextBox>
                           </asp:TableCell>
                       </asp:TableRow>
                       <asp:TableRow>
                           <asp:TableCell>
                               <asp:Label ID="Label8" runat="server" Text="Experiment - 4"></asp:Label>
                           </asp:TableCell>
                           <asp:TableCell>
                               <br />
                           </asp:TableCell>
                           <asp:TableCell>
                               <asp:TextBox runat="server" Width="200px" ID="text_exp4_start"></asp:TextBox>
                           </asp:TableCell>
                           <asp:TableCell>
                               <asp:TextBox runat="server" Width="200px" ID="text_exp4_finish"></asp:TextBox>
                           </asp:TableCell>
                       </asp:TableRow>
                       <asp:TableRow>
                           <asp:TableCell>
                               <asp:Label ID="Label9" runat="server" Text="Experiment - 5"></asp:Label>
                           </asp:TableCell>
                           <asp:TableCell>
                               <br />
                           </asp:TableCell>
                           <asp:TableCell>
                               <asp:TextBox runat="server" Width="200px" ID="text_exp5_start"></asp:TextBox>
                           </asp:TableCell>
                           <asp:TableCell>
                               <asp:TextBox runat="server" Width="200px" ID="text_exp5_finish"></asp:TextBox>
                           </asp:TableCell>
                       </asp:TableRow>
                       <asp:TableRow>
                           <asp:TableCell>
                               <asp:Label ID="Label10" runat="server" Text="Experiment - 6"></asp:Label>
                           </asp:TableCell>
                           <asp:TableCell>
                               <br />
                           </asp:TableCell>
                           <asp:TableCell>
                               <asp:TextBox runat="server" Width="200px" ID="text_exp6_start"></asp:TextBox>
                           </asp:TableCell>
                           <asp:TableCell>
                               <asp:TextBox runat="server" Width="200px" ID="text_exp6_finish"></asp:TextBox>
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
                            <asp:TableCell Width="550px">
                                <asp:Button runat="server" ID="button_save" Text="Save" CssClass="save"  OnClick="button_save_Click"/>
                            </asp:TableCell>
                            <asp:TableCell Width="100px">
                                <asp:Button runat="server" ID="button_clear" Text="Clear" CssClass="clear" OnClick="button_clear_Click" OnClientClick="return confirmDelete();" />
                            </asp:TableCell>
                        </asp:TableRow>
                    </asp:Table>    
                </asp:Panel>
                   
            </asp:View>
           
        </asp:MultiView>
    </asp:Panel>     

    <br />
    <br />
    <br />
    <br />
    <br />
    
</asp:Content>
