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
    public partial class AdminProfileFrom : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            User user = Session["USER"] as User;
            load(user);
        }

        public void load(User user)
        {
            text_name.Text = user.name;
            text_password.Text = "";
            text_email.Text = user.email;
            text_username.Text = user.username;
            hidden_id.Value = user.id.ToString();
            text_name.Text = user.id.ToString();
        }

        protected void button_save_Click(object sender, EventArgs e)
        {
            User user = new User(Convert.ToInt32(hidden_id.Value));

            user.name = text_name.Text;
            user.password = Toolkit.CalculateMD5Hash(text_password.Text);
            user.email = text_email.Text;
            user.username = text_username.Text;
            user.Save();

            Session["USER"] = user;

            Response.Redirect("~/AdminHome.aspx");

        }

        public void clear()
        {
            text_name.Text = "";
            text_password.Text = "";
            text_email.Text = "";
            text_username.Text = "";
            hidden_id.Value = "0";
        }

        protected void button_cancel_Click(object sender, EventArgs e)
        {
            clear();
        }
    }
}