using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSP.Entity;

namespace PSP
{
    public partial class AdminInstructerManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadInstructer();
        }

        public void loadInstructer()
        {
            instructer_grid.DataSource = new User().Obj_Listele_Instrcter();
            instructer_grid.DataBind();
        }

        protected void button_add_Click(object sender, EventArgs e)
        {
            panel_group.Visible = true;
            insform.clear();
        }

        public void loadGroup(int index)
        {
            panel_group.Visible = true;
            GridViewRow row = instructer_grid.Rows[index];

            string gid = (row.Cells[0].Text);
            User temp = new User().Get(Convert.ToInt32(gid));

            insform.load(temp);
        }


        protected void button_update_Click(object sender, EventArgs e)
        {

            int id = Convert.ToInt32(((LinkButton)sender).CommandArgument);
            panel_group.Visible = true;
            User temp = new User(Convert.ToInt32(id));

            insform.load(temp);
        }

        protected void button_delete_Click(object sender, EventArgs e)
        {
            panel_group.Visible = true;
            GridViewRow group_grid = (GridViewRow)((LinkButton)sender).NamingContainer;
            string group_id = group_grid.Cells[0].Text;
            Group temp = new Group(Convert.ToInt32(group_id));
            temp.Delete();
            instructer_grid.DataBind();
        }
    }
}