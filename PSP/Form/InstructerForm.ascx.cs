using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSP.Entity;
using PSP.Controller;


namespace PSP.Form
{
    public partial class InstructerForm : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack){
                loadGroups();
            }
        }

        public void loadGroups() {
            drop_group.DataSource = new Group().Obj_Listele_All();
            drop_group.DataBind();
        }

        public void load(User user)
        {
            text_name.Text = user.name;
            text_password.Text = "";
            text_email.Text = user.email;
            text_company.Text = user.company;
            text_username.Text = user.username;
            hidden_groupid.Value = user.group_id.ToString();
            hidden_instructerid.Value = user.id.ToString();
            string gname = new Group(user.group_id).group_name;
            label_group_name.Text = gname;

            try {
                drop_group.SelectedValue = user.group_id.ToString(); 
            }
            catch (Exception ee) { }
            

        }

        protected void button_save_Click(object sender, EventArgs e)
        {
            User user;
            if (hidden_groupid.Value.Equals("0")){
                user = new User();

            }
            else{
                user = new User(Convert.ToInt32(hidden_instructerid.Value));
            }

            user.name = text_name.Text;
            user.password = Toolkit.CalculateMD5Hash(text_password.Text);
            user.email = text_email.Text;
            user.company = text_company.Text;
            user.username = text_username.Text;
            user.type = 2;
            user.group_id = Convert.ToInt32(drop_group.SelectedValue);
            user.Save();

            label_group_name.Text = "selected: " + drop_group.SelectedValue ;

            hidden_groupid.Value = "0";
            clear();
            Response.Redirect(Request.RawUrl);

        }

        public void clear()
        {
            text_name.Text = "";
            text_password.Text = "";
            text_email.Text = "";
            text_company.Text = "";
            text_username.Text = "";
            hidden_groupid.Value = "0";
            hidden_instructerid.Value = "0";
            label_group_name.Text = "";
        }

        protected void button_clear_Click(object sender, EventArgs e)
        {
            clear();
        }

    }
}