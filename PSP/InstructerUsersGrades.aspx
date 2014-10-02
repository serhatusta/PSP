<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterInstructer.Master" AutoEventWireup="true" CodeBehind="InstructerUsersGrades.aspx.cs" Inherits="PSP.InstructerUsersGrades" %>
<%@ Register TagPrefix="Components" TagName="UserForm" Src="~/Form/UserForm.ascx" %>


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
                <asp:MenuItem Text="User Management" Value="1" ToolTip="User Management"></asp:MenuItem>
                <asp:MenuItem Text="Grades" Value="2" ToolTip="Grades"></asp:MenuItem>
            </Items>
            <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
            <StaticSelectedStyle Font-Bold="True" Font-Italic="True" Font-Size="Large"  ForeColor="#440000"/>
       </asp:Menu>
       <asp:MultiView ID="MultiView1" runat="server" ActiveViewIndex="0"  >
            <asp:View ID="Tab0" runat="server"  >
            </asp:View>
            <asp:View ID="Tab1" runat="server"  >
                <asp:Table runat="server" ID="table_data">
                    <asp:TableRow>
                        <asp:TableCell Width="760px">
                            <h3 style="border-bottom:1px solid #7E9CC1;
                                color:#440000;
                                font-family:Arial;
                                font-size:18px;
                                width:760px;
                                font-style:italic";>User Management</h3>
                        </asp:TableCell>
                        <asp:TableCell Width="150px">
                            <asp:Button runat="server" Text="Add New User" ID="button_add" OnClick="button_add_Click" CssClass="fetch" Width="150px" ToolTip="Use this button to add new user"/>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                <asp:GridView ID="user_grid" runat="server" DataKeyNames="id" BorderWidth="0"  
                    AutoGenerateColumns="False"  Width="910px">
                    <Columns>
                        <asp:BoundField HeaderText="User ID" DataField="id">
                        </asp:BoundField>
                        <asp:BoundField HeaderText="username" DataField="username">
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Last login" DataField="last_login">
                        </asp:BoundField>
                        <asp:BoundField HeaderText="Name" DataField="name">
                        </asp:BoundField>
                        <asp:BoundField HeaderText="e-mail" DataField="email">
                        </asp:BoundField>
                        <asp:TemplateField  FooterStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:LinkButton runat="server" ID="button_update" OnClick="button_update_Click" CommandArgument='<%# Eval("ID") %>'>Update</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField  FooterStyle-HorizontalAlign="Center" HeaderStyle-HorizontalAlign="Center" ItemStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <asp:LinkButton runat="server" ID="button_delete" OnClick="button_delete_Click" OnClientClick="return confirmDelete();">Delete</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>

                    </Columns>
                </asp:GridView>
    
                <br />
                <br />

                <asp:Panel runat="server" ID ="panel_group" Visible ="false" Width="910px">
                    <Components:UserForm ID="userform" runat="server" />
                </asp:Panel>
                <br />
                <br />        
            </asp:View>
            <asp:View ID="Tab2" runat="server">
                <h3 style="border-bottom:1px solid #7E9CC1;
                                color:#440000;
                                font-family:Arial;
                                font-size:18px;
                                width:760px;
                                font-style:italic";>Grades</h3>

                <asp:Table runat="server" ID="table1">
                    <asp:TableRow>
                        <asp:TableCell Width="100px">
                            <asp:DropDownList ID="drop_exp" runat="server" Width="110px">
                                <asp:ListItem Value="1" Text="Exp1"></asp:ListItem>
                                <asp:ListItem Value="2" Text="Exp2"></asp:ListItem>
                                <asp:ListItem Value="3" Text="Exp3"></asp:ListItem>
                                <asp:ListItem Value="4" Text="Exp4"></asp:ListItem>
                                <asp:ListItem Value="5" Text="Exp5"></asp:ListItem>
                                <asp:ListItem Value="6" Text="Exp6"></asp:ListItem>
                            </asp:DropDownList>
                        </asp:TableCell>
                        <asp:TableCell Width="150px">
                            <asp:Button runat="server" Text="Fill Grades" ID="button_grade" OnClick="button_grade_Click" CssClass="fetch" Width="150px"/>
                        </asp:TableCell>
                    </asp:TableRow>
                </asp:Table>
                   <asp:GridView ID="grade_grid" runat="server" DataKeyNames="id" BorderWidth="0"  
                    AutoGenerateColumns="False"  Width="910px" Enabled="false">
                    <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" Visible="false"/>
                        <asp:BoundField DataField="Username" HeaderText="username" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="experiment_no" HeaderText="Exp" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="time_form_grade" HeaderText="Time Form Grade" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="defect_form_grade" HeaderText="Defect Form Grade" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="pip_form_grade" HeaderText="PIP Form Grade" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="test_form_grade" HeaderText="Test Form Grade" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="size_form_grade" HeaderText="Size Form Grade" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="task_form_grade" HeaderText="Task Form Grade" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="code_review_grade" HeaderText="Code Review Grade" ReadOnly="True" SortExpression="id" />
                        <asp:BoundField DataField="design_review_grade" HeaderText="Design Review Grade" ReadOnly="True" SortExpression="id" />
                    </Columns>
                </asp:GridView>
            </asp:View>
           
        </asp:MultiView>
    </asp:Panel>     

    <br />
    <br />
    <br />
    <br />
    <br />
    
</asp:Content>
