using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSP.Entity.Forms;
using PSP.Entity;


namespace PSP.Form
{
    public partial class DesignReview : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            checkForm();
        }

        public void checkForm()
        {
            int uid = (Session["USER"] as User).id;
            int eno = Convert.ToInt32(Session["SELECTED_EXPERIMENT"].ToString());

            if (PSP.Entity.Forms.DesignReview.isExist(uid, eno) > 0)
            {
                panel_form.Enabled = false;
                header.Text = "You have already filled this form. You can not edit or delete!!!";
            }
        }

        protected void button_save_Click(object sender, EventArgs e)
        {
            DesignReviewItem designreviewitem = new DesignReviewItem();

            designreviewitem.action = text_name.Text;
            designreviewitem.note = text_item.Text;
            designreviewitem.duedate = text_duedate.Text;
            designreviewitem.program = text_name.Text;
            if (status.Checked)
                designreviewitem.check = "true";
            else
                designreviewitem.check = "true";

            designreviewitem.note = text_note.Text;
            int exp_no = Convert.ToInt32(Session["SELECTED_EXPERIMENT"].ToString());
            int user_id = (Session["USER"] as User).id;

            try
            {
                if (new Entity.Forms.DesignReview().isGroupExist(user_id, exp_no))
                {

                    int gno = new Entity.Forms.DesignReview().getGroupId(user_id, exp_no);
                    designreviewitem.design_review_id = gno;

                }
                else
                {
                    Entity.Forms.DesignReview designreview = new Entity.Forms.DesignReview();
                    designreview.comment = "new defect group";
                    designreview.user_id = user_id;
                    designreview.experiment_no = exp_no;
                    int newid = designreview.Save();
                    designreviewitem.design_review_id = designreview.id;
                }

                designreviewitem.Save();
                Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('" + "You have succesfully saved!" + "')</SCRIPT>");
            }
            catch (Exception ee)
            {

            }
        }

        protected void button_clear_Click(object sender, EventArgs e)
        {
            text_note.Text = "";
            text_item.Text = "";
            text_name.Text = "";
            status.Checked = false;

        }
        protected void button_date_Click(object sender, ImageClickEventArgs e)
        {
            DateTime dt = DateTime.Now;
            string[] words = dt.ToString().Split(' ');
            text_duedate.Text = words[0];
        }

    }
}