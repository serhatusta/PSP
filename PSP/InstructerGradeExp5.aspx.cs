using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSP.Entity;

namespace PSP
{
    public partial class InstructerGradeExp5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["SELECTED_EXPERIMENT"] = 5;
        }

        public void loadUsers(User ins)
        {


        }

        protected void select_user_Click(object sender, EventArgs e)
        {
            panel_experiment.Visible = true;
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            int index = Int32.Parse(e.Item.Value);
            MultiView1.ActiveViewIndex = index;
        }

        protected void finish_grading_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/InstructerGrade.aspx");
        }
    }
}