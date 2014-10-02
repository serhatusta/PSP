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
    public partial class CodeReview : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            checkForm();
        }

        public void checkForm()
        {
            int uid = (Session["USER"] as User).id;
            int eno = Convert.ToInt32(Session["SELECTED_EXPERIMENT"].ToString());

            if (PSP.Entity.Forms.CodeReview.isExist(uid, eno) > 0)
            {
                panel_form.Enabled = false;
                header.Text = "You have already filled this form. You can not edit or delete!!!";
            }
        }

        protected void button_save_Click(object sender, EventArgs e)
        {
            CodeReviewItem codereviewitem = new CodeReviewItem();

            codereviewitem.action = text_name.Text;
            codereviewitem.note = text_item.Text;
            codereviewitem.duedate = text_duedate.Text;
            codereviewitem.program = text_name.Text;
            if (status.Checked)
                codereviewitem.check = "true";
            else
                codereviewitem.check = "true";

            codereviewitem.note = text_note.Text;
            int exp_no = Convert.ToInt32(Session["SELECTED_EXPERIMENT"].ToString());
            int user_id = (Session["USER"] as User).id;

            try
            {
                if (new Entity.Forms.CodeReview().isGroupExist(user_id, exp_no))
                {

                    int gno = new Entity.Forms.CodeReview().getGroupId(user_id, exp_no);
                    codereviewitem.code_review_id = gno;

                }
                else
                {
                    Entity.Forms.CodeReview codereview = new Entity.Forms.CodeReview();
                    codereview.comment = "new defect group";
                    codereview.user_id = user_id;
                    codereview.experiment_no = exp_no;
                    int newid = codereview.Save();
                    codereviewitem.code_review_id = codereview.id;
                }

                codereviewitem.Save();
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