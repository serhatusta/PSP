using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSP.Entity;

namespace PSP
{
    public partial class AdminAnnoucement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            loadAnnoucements();
        }

        public void loadAnnoucements() {
            anno_grid.DataSource = new Annoucement().Obj_Listele_All();
            anno_grid.DataBind();
        }

        protected void button_new_Click(object sender, EventArgs e)
        {
            panel_anno.Visible = true;
            annoucementform.clear();

        }

        protected void button_update_Click(object sender, EventArgs e)
        {

            int id = Convert.ToInt32(((LinkButton)sender).CommandArgument);
            panel_anno.Visible = true;
            Annoucement temp = new Annoucement(Convert.ToInt32(id));

            annoucementform.load(temp);
        }

        protected void button_delete_Click(object sender, EventArgs e)
        {
            panel_anno.Visible = true;
            GridViewRow group_grid = (GridViewRow)((LinkButton)sender).NamingContainer;
            string group_id = group_grid.Cells[0].Text;
            Group temp = new Group(Convert.ToInt32(group_id));
            temp.Delete();
            group_grid.DataBind();
        }
       
    }
}