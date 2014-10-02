using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSP.Entity;
using System.Data;

namespace PSP
{
    public partial class InstructerUsersGrades : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int id = 0;
            if ((Session["USER"] as User) != null)
            {
                id = (Session["USER"] as User).group_id;
            }
            loadUser(id);
        }

        public void loadUser(int gid)
        {
            user_grid.DataSource = new User().Obj_Listele_User_By_Group(gid);
            user_grid.DataBind();
        }

        protected void button_add_Click(object sender, EventArgs e)
        {
            panel_group.Visible = true;
            userform.clear();
        }

        public void loadGroup(int index)
        {
            panel_group.Visible = true;
            GridViewRow row = user_grid.Rows[index];

            string gid = (row.Cells[0].Text);
            User temp = new User().Get(Convert.ToInt32(gid));

            userform.load(temp);
        }


        protected void button_update_Click(object sender, EventArgs e)
        {

            int id = Convert.ToInt32(((LinkButton)sender).CommandArgument);
            panel_group.Visible = true;
            User temp = new User(Convert.ToInt32(id));

            userform.load(temp);
        }

        protected void button_delete_Click(object sender, EventArgs e)
        {
            panel_group.Visible = true;
            GridViewRow group_grid = (GridViewRow)((LinkButton)sender).NamingContainer;
            string group_id = group_grid.Cells[0].Text;
            Group temp = new Group(Convert.ToInt32(group_id));
            temp.Delete();
            user_grid.DataBind();
        }

        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            int index = Int32.Parse(e.Item.Value);
            MultiView1.ActiveViewIndex = index;
        }

        protected void drop_exps_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void button_grade_Click(object sender, EventArgs e)
        {
            try {
                int eno = Convert.ToInt32(drop_exp.SelectedValue.ToString());
                int gid = (Session["USER"] as User).group_id;
                grade_grid.DataSource = new Grade().Obj_Listele_All_By_Group_By_Exp(gid, eno);
                grade_grid.DataBind();
            }catch(Exception ee){
                
            }
        }
    }
}