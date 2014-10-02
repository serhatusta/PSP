using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Security.Cryptography;
using System.Data;
using System.Security;


/// <summary>
/// Summary description for Toolkit
/// </summary>
/// 
namespace PSP.Controller
{
    public class Toolkit
    {


        /*public static void Alert(Page page, String ileti)
        {
            ScriptManager.RegisterStartupScript(page, page.GetType(), "ShowAlert",
                      string.Format(@"function _showAlert() {{ Sys.Application.remove_load(_showAlert); radalert('{0}!', {1}, {2},'{3}'); }}; Sys.Application.add_load(_showAlert);", ileti, "250", "100", "Bilgi"), true);
        }
        public static void Alert(Page page, String ileti, String baslik)
        {
            ScriptManager.RegisterStartupScript(page, page.GetType(), "ShowAlert",
                      string.Format(@"function _showAlert() {{ Sys.Application.remove_load(_showAlert); radalert('{0}!', {1}, {2},'{3}'); }}; Sys.Application.add_load(_showAlert);", ileti, "250", "100", baslik), true);
        }
        public static void Alert(Page page, String ileti, String baslik, int width, int height)
        {
            ScriptManager.RegisterStartupScript(page, page.GetType(), "ShowAlert",
                      string.Format(@"function _showAlert() {{ Sys.Application.remove_load(_showAlert); radalert('{0}!', {1}, {2},'{3}'); }}; Sys.Application.add_load(_showAlert);", ileti, width, height, baslik), true);
        }*/

        public static string CalculateMD5Hash(string input)
        {
            // step 1, calculate MD5 hash from input
            MD5 md5 = System.Security.Cryptography.MD5.Create();
            byte[] inputBytes = System.Text.Encoding.ASCII.GetBytes(input);
            byte[] hash = md5.ComputeHash(inputBytes);

            // step 2, convert byte array to hex string
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < hash.Length; i++)
            {
                sb.Append(hash[i].ToString("X2"));
            }
            return sb.ToString();
        }


    }
}
