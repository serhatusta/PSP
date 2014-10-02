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
    public partial class ProcessImprovementProposalForm : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            checkForm();
        }

        public void checkForm()
        {
            int uid = (Session["USER"] as User).id;
            int eno = Convert.ToInt32(Session["SELECTED_EXPERIMENT"].ToString());

            if (PIPForm.isExist(uid, eno) > 0)
            {
                panel_form.Enabled = false;
                header.Text = "You have already filled this form. You can not edit or delete!!!";
            }
        }

        protected void button_save_Click(object sender, EventArgs e)
        {
            try
            {
                PIPForm pipform = new PIPForm();

                pipform.other = text_other.Text;
                pipform.proposal = text_proposal.Text;
                pipform.problem = text_problem.Text;

                int exp_no = Convert.ToInt32(Session["SELECTED_EXPERIMENT"].ToString());
                int user_id = (Session["USER"] as User).id;

                pipform.experiment_no = exp_no;
                pipform.user_id = user_id;

                pipform.Save();
                Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('" + "You have succesfully saved!" + "')</SCRIPT>");
            }
            catch (Exception ee)
            {
                Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('" + "You have not succesfully saved. Please try again!" + "')</SCRIPT>");
            }
        }

        protected void button_clear_Click(object sender, EventArgs e)
        {
            text_other.Text = "";
            text_problem.Text = "";
            text_proposal.Text = "";
        }
    }
}