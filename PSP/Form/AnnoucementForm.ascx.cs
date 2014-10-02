using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSP.Entity;

namespace PSP.Form
{
    public partial class AnnouncementForm : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void load(Annoucement anno)
        {
            text_note.Text = anno.note;
            hidden_annoid.Value = anno.id.ToString();
            dead_line.SelectedDate = anno.deadline;
            drop_level.SelectedValue = anno.level.ToString();
            string gname = "";
            try
            {
                gname = new Group().getGroupname(anno.group_id);
            }
            catch (Exception eee)
            {
                gname = "Admin";
            }
            text_group.Text = gname;

        }

        protected void button_save_Click(object sender, EventArgs e)
        {
            Annoucement anno;
            if (hidden_annoid.Value.Equals("0"))
            {
                anno = new Annoucement();

            }
            else
            {
                anno = new Annoucement(Convert.ToInt32(hidden_annoid.Value));
            }

            anno.note = text_note.Text;
            anno.deadline = dead_line.SelectedDate;
            anno.level = Convert.ToInt32(drop_level.SelectedValue);
            anno.user_id = (Session["USER"] as User).id;
            anno.group_id = (Session["USER"] as User).group_id;
            anno.Save();

            hidden_annoid.Value = "0";
            clear();
            Response.Redirect(Request.RawUrl);

        }

        public void clear()
        {
            text_note.Text = "";
            dead_line.SelectedDate = DateTime.Now;
            hidden_annoid.Value = "0";
        }

        protected void button_clear_Click(object sender, EventArgs e)
        {
            clear();
        }
    }
}