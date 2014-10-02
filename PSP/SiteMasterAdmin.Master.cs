using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSP.Entity;

namespace PSP
{
    public partial class SiteMasterAdmin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            fill_info();
        }

        protected void fill_info()
        {
            User user;
            if ((Session["USER"] as User) != null)
            {
                user = Session["USER"] as User;

                string usertype = "";
                if (user.type == 1)
                    usertype = "Standard User";
                else if (user.type == 2)
                    usertype = "Instructer";
                else if (user.type == 10)
                    usertype = "Admin";

                label_user1.Text = user.name;
                label_username1.Text = user.username;
                label_type1.Text = usertype;
                label_lastlogin1.Text = user.last_login.ToString();
            }
            else
            {
                Response.Redirect("~/LoginPage.aspx");
            }



        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {

        }

        protected void button_logout_Click(object sender, EventArgs e)
        {
            Session["USER"] = null;
            Response.Redirect("~/LoginPage.aspx");
        }
    }
}