using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSP.Controller;
using PSP.Entity;
namespace PSP
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Login1_Authenticate(object sender, System.Web.UI.WebControls.AuthenticateEventArgs e)
        {
            string password = login_manager.Password;
                      
            string a = Toolkit.CalculateMD5Hash(password);
            string username = login_manager.UserName;

            if (LoginManager.login(username, password)){
                User user = null;
        
                if ((Session["USER"] as User) != null) {
                    user = Session["USER"] as User;
                    
                    if (user.type == 2)
                        Response.Redirect("~/Instructer.aspx");
                    else if (user.type == 10)
                        Response.Redirect("~/AdminHome.aspx");
                    else
                        Response.Redirect("~/Home.aspx");
                 }
                        
                
                /*Log log = new Log();
                Person p = new Person(user.person_id);
                log.name = p.name + " " + p.surname;
                log.events = "Logged in!!!";
                log.Save();*/
                

            }
            else
            {
            }
        }
        protected void lnkBtn_WindowsAuth_Click(object sender, EventArgs e)
        {

        }
    }
}