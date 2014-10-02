using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSP.Entity;

namespace PSP
{
    public partial class InstructerGrade : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            User ins = null;
            if ((Session["USER"] as User) != null)
                ins = Session["USER"] as User;
            loadUsers(ins);
        }

        public void loadUsers(User ins) {

            if (ins != null) {
                List<User> list = new User().Obj_Listele_User_By_Group(ins.group_id);
                int a = list.Count;
                drop_user.DataSource = list;
                drop_user.DataBind();
            }
            
        }

        protected void select_user_Click(object sender, EventArgs e)
        {

            Session["SELECTED_USER"] = new User(Convert.ToInt32(drop_user.SelectedValue));
            panel_experiment.Visible = true;
            Response.Redirect("~/InstructerGradeExp1.aspx");
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            int index = Int32.Parse(e.Item.Value);
            //MultiView1.ActiveViewIndex = index;
        }


        
    }
}