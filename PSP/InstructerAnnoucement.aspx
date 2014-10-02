<%@ Page Title="" Language="C#" MasterPageFile="~/SiteMasterInstructer.Master" AutoEventWireup="true" CodeBehind="InstructerAnnoucement.aspx.cs" Inherits="PSP.InstructerAnnoucement" %>
<%@ Register TagPrefix="Components" TagName="Annoucement" Src="~/Form/AnnoucementForm.ascx" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <br />
    <br />
    <asp:Button runat="server" ID="button_new" OnClick="button_new_Click" Text="New Annoucement"/>
    <asp:GridView ID="anno_grid" runat="server" DataKeyNames="id" 
        BorderWidth="0" AutoGenerateColumns="false"  Width="910px">
        <Columns>
            <asp:BoundField HeaderText="Owner" DataField="owner">
            </asp:BoundField>
            <asp:BoundField HeaderText="Deadline" DataField="deadline">
            </asp:BoundField>
            <asp:BoundField HeaderText="Level" DataField="level_name">
            </asp:BoundField>
            <asp:BoundField HeaderText="Note" DataField="note">
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

    <asp:Panel runat="server" ID="panel_anno" Visible="false">
        <Components:Annoucement ID="annoucementform" runat="server" />
    </asp:Panel>
    <br />
    <br />


</asp:Content>
