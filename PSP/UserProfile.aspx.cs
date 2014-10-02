using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSP.Entity;
using PSP.Controller;

namespace PSP
{
    public partial class UserProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                loadProfile();
            }
        }

        public void loadProfile() {
            if (Session["USER"] != null) {
                User user = Session["USER"] as User;

                text_username.Text = user.username;
                text_password.Text = "";
                text_name.Text = user.name;
                text_language.Text = user.programming_language;
                text_email.Text = user.email;
                text_company.Text = user.company;

            }
                
        }

        public void saveProfile() {
            if (Session["USER"] != null)
            {
                User user = new User((Session["USER"] as User).id);

                user.name = text_name.Text;

                string pass = text_password.Text;

                string newpass = Toolkit.CalculateMD5Hash(pass);
                user.password = newpass;
                //                user.password = Toolkit.CalculateMD5Hash(text_password.Text);

                user.email = text_email.Text;
                user.company = text_company.Text;
                user.programming_language = text_language.Text;

                try
                {
                    user.Save();
                    Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('" + "You have succesfully updated your profile!" + "')</SCRIPT>");
                    Session["USER"] = user;
                }
                catch (Exception ee)
                {
                    Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('" + "You have not succesfully updated your profile. Please try again!" + "')</SCRIPT>");
                }
            }
        }

        protected void button_save_Click(object sender, EventArgs e)
        {
            saveProfile();
        }

        protected void button_clear_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Home.aspx");
        }
    }
}