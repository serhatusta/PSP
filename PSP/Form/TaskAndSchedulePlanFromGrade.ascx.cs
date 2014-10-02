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
    public partial class TaskAndSchedulePlanFromGrade : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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

            int id = TaskAndScheduleForm.getExperimentId(uid, eid);
            TaskAndScheduleForm taskform = new TaskAndScheduleForm(id);

            text_plan_actual_date.Text = taskform.plan_actual_date;
            text_plan_actual_ev.Text = taskform.plan_actual_ev;
            text_plan_actual_minute.Text = taskform.plan_actual_minute;
            text_plan_planned_date.Text = taskform.plan_planned_date;
            text_plan_planned_pv.Text = taskform.plan_planned_pv;
            text_plan_planned_minute.Text = taskform.plan_planned_minute;

            text_design_actual_date.Text = taskform.design_actual_date;
            text_design_actual_ev.Text = taskform.design_actual_ev;
            text_design_actual_minute.Text = taskform.design_actual_minute;
            text_design_planned_date.Text = taskform.design_planned_date;
            text_design_planned_pv.Text = taskform.design_planned_pv;
            text_design_planned_minute.Text = taskform.design_planned_minute;

            text_code_actual_date.Text = taskform.code_actual_date;
            text_code_actual_ev.Text = taskform.code_actual_ev;
            text_code_actual_minute.Text = taskform.code_actual_minute;
            text_code_planned_date.Text = taskform.code_planned_date;
            text_code_planned_pv.Text = taskform.code_planned_pv;
            text_code_planned_minute.Text = taskform.code_planned_minute;

            text_compile_actual_date.Text = taskform.compile_actual_date;
            text_compile_actual_ev.Text = taskform.compile_actual_ev;
            text_compile_actual_minute.Text = taskform.compile_actual_minute;
            text_compile_planned_date.Text = taskform.compile_planned_date;
            text_compile_planned_pv.Text = taskform.compile_planned_pv;
            text_compile_planned_minute.Text = taskform.compile_planned_minute;

            text_test_actual_date.Text = taskform.test_actual_date;
            text_test_actual_ev.Text = taskform.test_actual_ev;
            text_test_actual_minute.Text = taskform.test_actual_minute;
            text_test_planned_date.Text = taskform.test_planned_date;
            text_test_planned_pv.Text = taskform.test_planned_pv;
            text_test_planned_minute.Text = taskform.test_planned_minute;

            text_pm_actual_date.Text = taskform.post_actual_date;
            text_pm_actual_ev.Text = taskform.post_actual_ev;
            text_pm_actual_minute.Text = taskform.post_actual_minute;
            text_pm_planned_date.Text = taskform.post_planned_date;
            text_pm_planned_pv.Text = taskform.post_planned_pv;
            text_pm_planned_minute.Text = taskform.post_planned_minute;

        }

        protected void button_grade_Click(object sender, EventArgs e)
        {
            int uid = (Session["SELECTED_USER"] as User).id;
            int eid = Convert.ToInt32((Session["SELECTED_EXPERIMENT"]).ToString());
            Experiment.gradeExperiment(uid, eid, "task_form_grade", text_grade.Text);
        }
    }
}