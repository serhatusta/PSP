<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="AnnoucementForm.ascx.cs" Inherits="PSP.Form.AnnouncementForm" %>



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

<h3 style="border-bottom:1px solid #7E9CC1;
color:#440000;
font-family:Arial;
font-size:18px;
width:910px;
font-style:italic";>Annoucement Form</h3>
<br />

<asp:Panel runat="server" ID="panel_form" Width="490px" BorderWidth="1px">
    <asp:Table ID="table_group" runat="server">
        <asp:TableRow>
             <asp:TableCell>
                <asp:HiddenField runat="server" ID="hidden_annoid" Value="0"/>
             </asp:TableCell>
             <asp:TableCell>
             </asp:TableCell>
         </asp:TableRow>
         <asp:TableRow>
             <asp:TableCell>
                 <asp:Label runat="server" ID="label_group" Text="Group"  Width="150px"></asp:Label>
             </asp:TableCell>
             <asp:TableCell>
                 <asp:Label runat="server" ID="label1" Text=":" ></asp:Label>
             </asp:TableCell>
             <asp:TableCell>
                <asp:Label runat="server" ID="text_group" Width="300px" Text="New Annoucement"></asp:Label>
             </asp:TableCell>
          </asp:TableRow>
          <asp:TableRow>
              <asp:TableCell>
                   <asp:Label runat="server" ID="label_date" Text="Deadline"  Width="120px"></asp:Label>
               </asp:TableCell>
               <asp:TableCell>
                  <asp:Label runat="server" ID="label3" Text=":" ></asp:Label>
             </asp:TableCell>
             <asp:TableCell>
                  <asp:Calendar ID="dead_line" runat="server" Width="300px"></asp:Calendar>
             </asp:TableCell>
           </asp:TableRow>
           <asp:TableRow>
                <asp:TableCell>
                     <asp:Label runat="server" ID="label_level" Text="Level"  ToolTip="Select the best available level"></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:Label runat="server" ID="label4" Text=":" ></asp:Label>
                </asp:TableCell>
                <asp:TableCell>
                    <asp:DropDownList runat="server" ID="drop_level"  Width="300px">
                                <asp:ListItem Text="Trivial" Value="1"></asp:ListItem>
                                <asp:ListItem Text="Recall" Value="2"></asp:ListItem>
                                <asp:ListItem Text="Annoucement" Value="3"></asp:ListItem>
                                <asp:ListItem Text="Elucidating" Value="4"></asp:ListItem>
                                <asp:ListItem Text="Important" Value="5"></asp:ListItem>
                     </asp:DropDownList>
                 </asp:TableCell>
            </asp:TableRow>
            <asp:TableRow>
                 <asp:TableCell>
                     <asp:Label runat="server" ID="label_note" Text="Note"  Width="120px"></asp:Label>
                  </asp:TableCell>
                  <asp:TableCell>
                     <asp:Label runat="server" ID="label2" Text=":" ></asp:Label>
                  </asp:TableCell>
                  <asp:TableCell>
                      <asp:TextBox runat="server" ID="text_note" Width="295px" Height="70px" Rows="5" TextMode="MultiLine"></asp:TextBox>
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
            <asp:TableCell Width="390px">
                <asp:Button runat="server" ID="button1" Text="Save" CssClass="save"  OnClick="button_save_Click"/>
            </asp:TableCell>
            <asp:TableCell Width="100px">
                <asp:Button runat="server" ID="button2" Text="Clear" CssClass="clear" OnClick="button_clear_Click" OnClientClick="return confirmDelete();" />
            </asp:TableCell>
        </asp:TableRow>
    </asp:Table>
</asp:Panel>
