using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSP.Entity;

namespace PSP.Form
{
    public partial class GroupForm : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button_clear_Click(object sender, EventArgs e)
        {
            clearGroup();
        }

        protected void button_save_Click(object sender, EventArgs e)
        {
            saveGroup();
        }

        public void loadGroup(Group group)
        {
            if (group != null) {
                hidden_groupid.Value = group.id.ToString();
                text_group_name.Text = group.group_name;
                text_note.Text = group.note;
                drop_type.SelectedValue = group.type.ToString();
            }
        }

        public void saveGroup()
        {
            bool groupnew = false;
            Group group = null;
            if (hidden_groupid.Value.Equals("0"))
            {
                group = new Group();
                group.user_count = 0;
                groupnew = true;
            }
            else {
                group = new Group(Convert.ToInt32(hidden_groupid.Value));
                group.id = Convert.ToInt32(hidden_groupid.Value);
            }

            group.group_name = text_group_name.Text;
            group.note = text_note.Text;
            group.type = Convert.ToInt32(drop_type.SelectedValue);
            

            int gid = group.Save();
            hidden_groupid.Value = "0";

            if (groupnew) {
                ExperimentDate e1 = new ExperimentDate();
                e1.group_id = gid;
                e1.note = "new date";
                e1.start_date = DateTime.Now;
                e1.finish_date = DateTime.Now;
                e1.experiment_no = 1;
                e1.Save();

                ExperimentDate e2 = new ExperimentDate();
                e2.group_id = gid;
                e2.note = "new date";
                e2.start_date = DateTime.Now;
                e2.finish_date = DateTime.Now;
                e2.experiment_no = 2;
                e2.Save();

                ExperimentDate e3 = new ExperimentDate();
                e3.group_id = gid;
                e3.note = "new date";
                e3.start_date = DateTime.Now;
                e3.finish_date = DateTime.Now;
                e3.experiment_no = 3;
                e3.Save();

                ExperimentDate e4 = new ExperimentDate();
                e4.group_id = gid;
                e4.note = "new date";
                e4.start_date = DateTime.Now;
                e4.finish_date = DateTime.Now;
                e4.experiment_no = 4;
                e4.Save();

                ExperimentDate e5 = new ExperimentDate();
                e5.group_id = gid;
                e5.note = "new date";
                e5.start_date = DateTime.Now;
                e5.finish_date = DateTime.Now;
                e5.experiment_no = 5;
                e5.Save();

                ExperimentDate e6 = new ExperimentDate();
                e6.group_id = gid;
                e6.note = "new date";
                e6.start_date = DateTime.Now;
                e6.finish_date = DateTime.Now;
                e6.experiment_no = 6;
                e6.Save();
                
            }

            Response.Redirect(Request.RawUrl);
        }

        public void clearGroup()
        {
            hidden_groupid.Value = "0";
            text_group_name.Text = "";
            text_note.Text = "";
        }
    }
}