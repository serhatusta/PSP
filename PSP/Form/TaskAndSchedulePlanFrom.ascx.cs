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
    public partial class TaskAndSchedulePlanFrom : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            checkForm();
        }

        public void checkForm()
        {
            int uid = (Session["USER"] as User).id;
            int eno = Convert.ToInt32(Session["SELECTED_EXPERIMENT"].ToString());

            if (TaskAndScheduleForm.isExist(uid, eno) > 0)
            {
                panel_form.Enabled = false;
                header.Text = "You have already filled this form. You can not edit or delete!!!";
            }
        }

        protected void button_save_Click(object sender, EventArgs e)
        {
            TaskAndScheduleForm taskform = new TaskAndScheduleForm();
            taskform.plan_planned_date =  (text_plan_planned_date.Text);
            taskform.plan_planned_pv = text_plan_planned_pv.Text;
            taskform.plan_planned_minute = text_plan_planned_minute.Text;
            taskform.plan_actual_date =  (text_plan_actual_date.Text);
            taskform.plan_actual_ev = text_plan_actual_ev.Text;
            taskform.plan_actual_minute = text_plan_actual_minute.Text;

            taskform.design_planned_date =  (text_plan_planned_date.Text);
            taskform.design_planned_pv = text_plan_planned_pv.Text;
            taskform.design_planned_minute = text_plan_planned_minute.Text;
            taskform.design_actual_date =  (text_plan_actual_date.Text);
            taskform.design_actual_ev = text_plan_actual_ev.Text;
            taskform.design_actual_minute = text_plan_actual_minute.Text;

            taskform.code_planned_date =  (text_plan_planned_date.Text);
            taskform.code_planned_pv = text_plan_planned_pv.Text;
            taskform.code_planned_minute = text_plan_planned_minute.Text;
            taskform.code_actual_date =  (text_plan_actual_date.Text);
            taskform.code_actual_ev = text_plan_actual_ev.Text;
            taskform.code_actual_minute = text_plan_actual_minute.Text;

            taskform.compile_planned_date =  (text_plan_planned_date.Text);
            taskform.compile_planned_pv = text_plan_planned_pv.Text;
            taskform.compile_planned_minute = text_plan_planned_minute.Text;
            taskform.compile_actual_date =  (text_plan_actual_date.Text);
            taskform.compile_actual_ev = text_plan_actual_ev.Text;
            taskform.compile_actual_minute = text_plan_actual_minute.Text;

            taskform.test_planned_date =  (text_plan_planned_date.Text);
            taskform.test_planned_pv = text_plan_planned_pv.Text;
            taskform.test_planned_minute = text_plan_planned_minute.Text;
            taskform.test_actual_date =  (text_plan_actual_date.Text);
            taskform.test_actual_ev = text_plan_actual_ev.Text;
            taskform.test_actual_minute = text_plan_actual_minute.Text;

            taskform.post_planned_date =  (text_plan_planned_date.Text);
            taskform.post_planned_pv = text_plan_planned_pv.Text;
            taskform.post_planned_minute = text_plan_planned_minute.Text;
            taskform.post_actual_date =  (text_plan_actual_date.Text);
            taskform.post_actual_ev = text_plan_actual_ev.Text;
            taskform.post_actual_minute = text_plan_actual_minute.Text;

            try
            {
                taskform.Save();
                Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('" + "You have succesfully saved!" + "')</SCRIPT>");
            }
            catch (Exception ee)
            {
                Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('" + "You have not succesfully saved. Please try again!" + "')</SCRIPT>");
            }

        }

        protected void button_clear_Click(object sender, EventArgs e)
        {
            text_plan_actual_date.Text = "";
            text_plan_actual_ev.Text = "";
            text_plan_actual_minute.Text = "";
            text_plan_planned_date.Text = "";
            text_plan_planned_minute.Text = "";
            text_plan_planned_pv.Text = "";

            text_design_actual_date.Text = "";
            text_design_actual_ev.Text = "";
            text_design_actual_minute.Text = "";
            text_design_planned_date.Text = "";
            text_design_planned_minute.Text = "";
            text_design_planned_pv.Text = "";

            text_code_actual_date.Text = "";
            text_code_actual_ev.Text = "";
            text_code_actual_minute.Text = "";
            text_code_planned_date.Text = "";
            text_code_planned_minute.Text = "";
            text_code_planned_pv.Text = "";

            text_compile_actual_date.Text = "";
            text_compile_actual_ev.Text = "";
            text_compile_actual_minute.Text = "";
            text_compile_planned_date.Text = "";
            text_compile_planned_minute.Text = "";
            text_compile_planned_pv.Text = "";

            text_test_actual_date.Text = "";
            text_test_actual_ev.Text = "";
            text_test_actual_minute.Text = "";
            text_test_planned_date.Text = "";
            text_test_planned_minute.Text = "";
            text_test_planned_pv.Text = "";

            text_pm_actual_date.Text = "";
            text_pm_actual_ev.Text = "";
            text_pm_actual_minute.Text = "";
            text_pm_planned_date.Text = "";
            text_pm_planned_minute.Text = "";
            text_pm_planned_pv.Text = "";
            
        }

        protected void plan_planned_date_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton img = (ImageButton)sender;
            string id = img.ID;

            DateTime dt = DateTime.Now;
            string[] date = dt.ToString().Split(' ');

            string[] words = id.Split('_');

            if (words[0].Equals("plan"))
            {
                if (words[1].Equals("actual"))
                {
                    text_plan_actual_date.Text = date[0];
                }
                else if (words[1].Equals("planned"))
                {
                    text_plan_planned_date.Text = date[0];
                }
            }
            else if (words[0].Equals("design"))
            {
                if (words[1].Equals("actual"))
                {
                    text_design_actual_date.Text = date[0];
                }
                else if (words[1].Equals("planned"))
                {
                    text_design_planned_date.Text = date[0];
                }
            }
            else if (words[0].Equals("code"))
            {
                if (words[1].Equals("actual"))
                {
                    text_code_actual_date.Text = date[0];
                }
                else if (words[1].Equals("planned"))
                {
                    text_code_planned_date.Text = date[0];
                }
            }
            else if (words[0].Equals("compile"))
            {
                if (words[1].Equals("actual"))
                {
                    text_compile_actual_date.Text = date[0];
                }
                else if (words[1].Equals("planned"))
                {
                    text_compile_planned_date.Text = date[0];
                }
            }
            else if (words[0].Equals("test"))
            {
                if (words[1].Equals("actual"))
                {
                    text_test_actual_date.Text = date[0];
                }
                else if (words[1].Equals("planned"))
                {
                    text_test_planned_date.Text = date[0];
                }
            }
            else if (words[0].Equals("pm"))
            {
                if (words[1].Equals("actual"))
                {
                    text_pm_actual_date.Text = date[0];
                }
                else if (words[1].Equals("planned"))
                {
                    text_pm_planned_date.Text = date[0];
                }
            }
        }
    }
}