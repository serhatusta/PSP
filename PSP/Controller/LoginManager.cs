using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using PSP.DB;
using PSP.Controller;
using PSP.Entity;

namespace PSP.Controller
{
    public class LoginManager
    {
        public static bool login(string username, string password)
        {
            bool result = false;
            string sql = "SELECT * FROM users WHERE username = '" + username + "' AND status = 1" ;
            DataTable dt = DBConnector.select(sql);
            

            if (dt.Rows.Count > 0)
            {
                result = dt.Rows[0]["password"].ToString() == Toolkit.CalculateMD5Hash(password);
                User user = new User(Convert.ToInt32(dt.Rows[0]["id"].ToString()));
                System.Web.HttpContext.Current.Session["USER"] = user;
            }

            return result;
        } 
    }
}