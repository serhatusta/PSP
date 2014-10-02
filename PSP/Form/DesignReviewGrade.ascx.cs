using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSP.Entity;
using PSP.Entity.Forms;


namespace PSP.Form
{
    public partial class DesignReviewGrade : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadDefects();
            }
        }

        protected void button_fetch_Click(object sender, EventArgs e)
        {
            try
            {
                loadForm();
                Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('" + "Data binded!" + "')</SCRIPT>");
            }
            catch (Exception ee)
            {
                Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('" + "There is no available form for this user!" + "')</SCRIPT>");
            }

        }

        public void loadDefects()
        {

            int uid = (Session["SELECTED_USER"] as User).id;
            int eid = Convert.ToInt32((Session["SELECTED_EXPERIMENT"]).ToString());

            int id = PSP.Entity.Forms.DesignReview.getExperimentId(uid, eid);
            PSP.Entity.Forms.DesignReview review = new PSP.Entity.Forms.DesignReview(id);

            drop_defects.DataSource = new DesignReviewItem().Get_By_GroupId(review.id);
            drop_defects.DataBind();

        }

        public void loadForm()
        {
            int uid = Convert.ToInt32(Session["SELECTED_DESIGNREVIEW"].ToString());

            DesignReviewItem review = new DesignReviewItem(uid);

            text_date.Text = review.duedate;
            text_item.Text = review.action;
            text_name.Text = review.program;
            text_note.Text = review.note;
            if (review.check.Equals("true")) {
                check_status.Checked = true;
            }
            else
                check_status.Checked = false;
        }

        protected void button_grade_Click(object sender, EventArgs e)
        {
            int uid = (Session["SELECTED_USER"] as User).id;
            int eid = Convert.ToInt32((Session["SELECTED_EXPERIMENT"]).ToString());
            Experiment.gradeExperiment(uid, eid, "design_review_grade", text_grade.Text);
        }

        protected void drop_defects_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["SELECTED_DESIGNREVIEW"] = drop_defects.SelectedValue.ToString();
        }

    }
}