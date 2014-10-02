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
    public partial class SizeEstimatingTemplateFormGrade : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void button_grade_Click(object sender, EventArgs e)
        {
            int uid = (Session["SELECTED_USER"] as User).id;
            int eid = Convert.ToInt32((Session["SELECTED_EXPERIMENT"]).ToString());
            Experiment.gradeExperiment(uid, eid, "size_form_grade", text_grade.Text);
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

            int id = SizeEstimatingForm.getExperimentId(uid, eid);
            SizeEstimatingForm sizeform = new SizeEstimatingForm(id);

            text_added_actual_added.Text = sizeform.added_actual_added;
            text_added_actual_base.Text = sizeform.added_actual_base;
            text_added_actual_deleted.Text = sizeform.added_actual_deleted;
            text_added_actual_modified.Text = sizeform.added_actual_modified;
            text_added_planned_added.Text = sizeform.added_planned_added;
            text_added_planned_base.Text = sizeform.added_planned_base;
            text_added_planned_deleted.Text = sizeform.added_planned_deleted;
            text_added_planned_modified.Text = sizeform.added_planned_modified;
            text_added_name.Text = sizeform.added_name;



            text_based_actual_added.Text = sizeform.based_actual_added;
            text_based_actual_base.Text = sizeform.based_actual_base;
            text_based_actual_deleted.Text = sizeform.based_actual_deleted;
            text_based_actual_modified.Text = sizeform.based_actual_modified;
            text_based_planned_added.Text = sizeform.based_planned_added;
            text_based_planned_base.Text = sizeform.based_planned_base;
            text_based_planned_deleted.Text = sizeform.based_planned_deleted;
            text_based_planned_modified.Text = sizeform.based_planned_modified;
            text_based_name.Text = sizeform.based_name;


            text_reused_actual_added.Text = sizeform.reused_actual_added;
            text_reused_actual_base.Text = sizeform.reused_actual_base;
            text_reused_actual_deleted.Text = sizeform.reused_actual_deleted;
            text_reused_actual_modified.Text = sizeform.reused_actual_modified;
            text_reused_planned_added.Text = sizeform.reused_planned_added;
            text_reused_planned_base.Text = sizeform.reused_planned_base;
            text_reused_planned_deleted.Text = sizeform.reused_planned_deleted;
            text_reused_planned_modified.Text = sizeform.reused_planned_modified;
            text_reused_name.Text = sizeform.reused_name;


        }
    }
}