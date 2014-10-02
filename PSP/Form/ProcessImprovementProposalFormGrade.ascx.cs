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
    public partial class ProcessImprovementProposalFormGrade : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button_grade_Click(object sender, EventArgs e)
        {
            int uid = (Session["SELECTED_USER"] as User).id;
            int eid = Convert.ToInt32((Session["SELECTED_EXPERIMENT"]).ToString());
            Experiment.gradeExperiment(uid, eid, "pip_form_grade", text_grade.Text);
        }

        protected void button_fetch_Click(object sender, EventArgs e)
        {
            try
            {
                loadForm();
            }
            catch (Exception ee)
            {
                Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('" + "There is no available form for this user!" + "')</SCRIPT>");
            }

        }
        public void loadForm()
        {
            int uid = (Session["SELECTED_USER"] as User).id;
            int eid = Convert.ToInt32((Session["SELECTED_EXPERIMENT"]).ToString());

            int id = PIPForm.getExperimentId(uid, eid);
            PIPForm pipform = new PIPForm(id);

            text_notes.Text = pipform.other;
            text_problem.Text = pipform.problem;
            text_proposal.Text = pipform.problem;

        }
    }
}