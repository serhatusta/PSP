using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSP.Entity;
using PSP.Form;

namespace PSP
{
    public partial class AdminGroupManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadGroups();
        }

        public void loadGroups() {
            group_grid.DataSource = new Group().Obj_Listele_All();
            group_grid.DataBind();
        }
     
        protected void button_add_Click(object sender, EventArgs e)
        {
            panel_group.Visible = true;
            groupform.clearGroup();
        }

        public void loadGroup(int index)
        {
            panel_group.Visible = true;
            GridViewRow row = group_grid.Rows[index];

            string gid = (row.Cells[0].Text);
            Group temp = new Group().Get(Convert.ToInt32(gid));

            groupform.loadGroup(temp);
        }


        protected void button_update_Click(object sender, EventArgs e)
        {
            
            int id = Convert.ToInt32(((LinkButton)sender).CommandArgument);
            panel_group.Visible = true;
            Group temp = new Group(Convert.ToInt32(id));

            groupform.loadGroup(temp);
        }

        protected void button_delete_Click(object sender, EventArgs e)
        {
            panel_group.Visible = true;
            GridViewRow group_grid = (GridViewRow)((LinkButton)sender).NamingContainer;
            string group_id = group_grid.Cells[0].Text;
            Group temp = new Group(Convert.ToInt32(group_id));
            temp.Delete();
            group_grid.DataBind();
        }
    }
}