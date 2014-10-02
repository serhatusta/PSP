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
    public partial class TimeRecordingLogFormGrade : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void button_grade_Click(object sender, EventArgs e)
        {
            int uid = (Session["SELECTED_USER"] as User).id;
            int eid = Convert.ToInt32((Session["SELECTED_EXPERIMENT"]).ToString());
            Experiment.gradeExperiment(uid, eid, "time_form_grade", text_grade.Text);
        }

        protected void button_fetch_Click(object sender, EventArgs e)
        {
            try {
                loadForm();
            }catch(Exception ee){
                Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('" + "There is no available form for this user!" + "')</SCRIPT>");
            }
            
        }
        public void loadForm()
        {
            int uid = (Session["SELECTED_USER"] as User).id;
            int eid = Convert.ToInt32((Session["SELECTED_EXPERIMENT"]).ToString());

            int id = TimeRecordingForm.getExperimentId(uid, eid);
            TimeRecordingForm timeform = new TimeRecordingForm(id);

            text_plan_stime.Text = timeform.plan_stime;
            text_plan_ftime.Text = timeform.plan_ftime;
            text_plan_inter.Text = timeform.plan_inter;
            text_plan_delta.Text = timeform.plan_delta;
            text_plan_comment.Text = timeform.plan_comment;

            text_design_stime.Text = timeform.design_stime;
            text_design_ftime.Text = timeform.design_ftime;
            text_design_inter.Text = timeform.design_inter;
            text_design_delta.Text = timeform.design_delta;
            text_design_comment.Text = timeform.design_comment;

            text_code_stime.Text = timeform.code_stime;
            text_code_ftime.Text = timeform.code_ftime;
            text_code_inter.Text = timeform.code_inter;
            text_code_delta.Text = timeform.code_delta;
            text_code_comment.Text = timeform.code_comment;

            text_compile_stime.Text = timeform.compile_stime;
            text_compile_ftime.Text = timeform.compile_ftime;
            text_compile_inter.Text = timeform.compile_inter;
            text_compile_delta.Text = timeform.compile_delta;
            text_compile_comment.Text = timeform.compile_comment;

            text_test_stime.Text = timeform.test_stime;
            text_test_ftime.Text = timeform.test_ftime;
            text_test_inter.Text = timeform.test_inter;
            text_test_delta.Text = timeform.test_delta;
            text_test_comment.Text = timeform.test_comment;

            text_pm_stime.Text = timeform.post_stime;
            text_pm_ftime.Text = timeform.post_ftime;
            text_pm_inter.Text = timeform.post_inter;
            text_pm_delta.Text = timeform.post_delta;
            text_pm_comment.Text = timeform.post_comment;
        }
    }
}