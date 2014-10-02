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
    public partial class UserForm : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void load(User user) 
        {
            text_name.Text = user.name;
            text_password.Text = "";
            text_email.Text = user.email;
            text_company.Text = user.company;
            text_username.Text = user.username;
            hidden_id.Value = user.id.ToString() ;
            text_language.Text = user.programming_language;
            string gname = new Group().getGroupname(user.group_id);
            label_group.Text = gname;

        }

        protected void button_save_Click(object sender, EventArgs e)
        {
            User user;
            if (hidden_id.Value.Equals("0"))
            {
                user = new User();
                user.group_id = (Session["USER"] as User).group_id;
                user.type = 1;
            }
            else {
                user = new User(Convert.ToInt32(hidden_id.Value));
            }

            user.name = text_name.Text;
            user.password = Toolkit.CalculateMD5Hash(text_password.Text);
            user.email = text_email.Text;
            user.company = text_company.Text;
            user.username = text_username.Text;
            user.programming_language = text_language.Text;

            user.Save();

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
            hidden_id.Value = "0";
        }

        protected void button_clear_Click(object sender, EventArgs e)
        {
            clear();
        }
    }
}