using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSP.Entity.Forms;
using PSP.Entity;

namespace PSP.Form
{
    public partial class TimeRecordingLogForm : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            checkForm();
        }

        public void checkForm() {
            int uid = (Session["USER"] as User).id;
            int eno = Convert.ToInt32(Session["SELECTED_EXPERIMENT"].ToString());

            if (TimeRecordingForm.isExist(uid, eno) > 0) {
                panel_form.Enabled = false;
                header.Text = "You have already filled this form. You can not edit or delete!!!";
            }
        }

        protected void button_save_Click(object sender, EventArgs e)
        {
            TimeRecordingForm timeform = new TimeRecordingForm();
            timeform.design_time = text_design_delta.Text;
            timeform.code_time = text_code_delta.Text;
            timeform.compile_time = text_compile_delta.Text;
            timeform.test_time = text_test_delta.Text;
            timeform.post_time = text_pm_delta.Text;
            timeform.plan_time = text_plan_delta.Text;

            timeform.design_comment = text_design_comment.Text;
            timeform.code_comment = text_code_comment.Text;
            timeform.compile_comment = text_compile_comment.Text;
            timeform.test_comment = text_test_comment.Text;
            timeform.post_comment = text_pm_comment.Text;
            timeform.plan_comment = text_plan_comment.Text;

            timeform.plan_stime = text_plan_stime.Text;
            timeform.plan_ftime = text_plan_ftime.Text;
            timeform.plan_inter = text_plan_inter.Text;
            timeform.plan_delta = text_plan_delta.Text;

            timeform.design_stime = text_design_stime.Text;
            timeform.design_ftime = text_design_ftime.Text;
            timeform.design_inter = text_design_inter.Text;
            timeform.design_delta = text_design_delta.Text;

            timeform.code_stime = text_code_stime.Text;
            timeform.code_ftime = text_code_ftime.Text;
            timeform.code_inter = text_code_inter.Text;
            timeform.code_delta = text_code_delta.Text;

            timeform.compile_stime = text_compile_stime.Text;
            timeform.compile_ftime = text_compile_ftime.Text;
            timeform.compile_inter = text_compile_inter.Text;
            timeform.compile_delta = text_compile_delta.Text;

            timeform.test_stime = text_test_stime.Text;
            timeform.test_ftime = text_test_ftime.Text;
            timeform.test_inter = text_test_inter.Text;
            timeform.test_delta = text_test_delta.Text;

            timeform.post_stime = text_pm_stime.Text;
            timeform.post_ftime = text_pm_ftime.Text;
            timeform.post_inter = text_pm_inter.Text;
            timeform.post_delta = text_pm_delta.Text;

            int exp_no = Convert.ToInt32(Session["SELECTED_EXPERIMENT"].ToString());
            int user_id = (Session["USER"] as User).id;

            timeform.experiment_no = exp_no;
            timeform.user_id = user_id;

            try
            {
                timeform.Save();
                Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('" + "You have succesfully saved!" + "')</SCRIPT>");
            }
            catch (Exception ee)
            {
                Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('" + "You have not succesfully saved. Please try again!" + "')</SCRIPT>");
            }

        }

        protected void button_clear_Click(object sender, EventArgs e)
        {
            text_plan_stime.Text = "";
            text_plan_ftime.Text = "";
            text_plan_inter.Text = "";
            text_plan_delta.Text = "";
            text_plan_comment.Text = "";

            text_design_stime.Text = "";
            text_design_ftime.Text = "";
            text_design_inter.Text = "";
            text_design_delta.Text = "";
            text_design_comment.Text = "";

            text_code_stime.Text = "";
            text_code_ftime.Text = "";
            text_code_inter.Text = "";
            text_code_delta.Text = "";
            text_code_comment.Text = "";

            text_compile_stime.Text = "";
            text_compile_ftime.Text = "";
            text_compile_inter.Text = "";
            text_compile_delta.Text = "";
            text_compile_comment.Text = "";

            text_pm_stime.Text = "";
            text_pm_ftime.Text = "";
            text_pm_inter.Text = "";
            text_pm_delta.Text = "";
            text_pm_comment.Text = "";
        }

        protected void button_plan_stime_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton img = (ImageButton)sender;
            string id = img.ID;

            DateTime dt = DateTime.Now;

            string[] words = id.Split('_');

            if(words[1].Equals("plan")){
                if (words[2].Equals("stime"))
                {
                    text_plan_stime.Text = dt.ToString();
                }
                else if (words[2].Equals("ftime"))
                {
                    text_plan_ftime.Text = dt.ToString();
                }
            }
            else if (words[1].Equals("design"))
            {
                if (words[2].Equals("stime"))
                {
                    text_design_stime.Text = dt.ToString();
                }
                else if (words[2].Equals("ftime"))
                {
                    text_design_ftime.Text = dt.ToString();
                }
            }
            else if (words[1].Equals("code"))
            {
                if (words[2].Equals("stime"))
                {
                    text_code_stime.Text = dt.ToString();
                }
                else if (words[2].Equals("ftime"))
                {
                    text_code_ftime.Text = dt.ToString();
                }
            }
            else if (words[1].Equals("compile"))
            {
                if (words[2].Equals("stime"))
                {
                    text_compile_stime.Text = dt.ToString();
                }
                else if (words[2].Equals("ftime"))
                {
                    text_compile_ftime.Text = dt.ToString();
                }
            }
            else if (words[1].Equals("test"))
            {
                if (words[2].Equals("stime"))
                {
                    text_test_stime.Text = dt.ToString();
                }
                else if (words[2].Equals("ftime"))
                {
                    text_test_ftime.Text = dt.ToString();
                }
            }
            else if (words[1].Equals("pm"))
            {
                if (words[2].Equals("stime"))
                {
                    text_pm_stime.Text = dt.ToString();
                }
                else if (words[2].Equals("ftime"))
                {
                    text_pm_ftime.Text = dt.ToString();
                }
            }
        }

        public string calculateDelta(string sday, string smonth, string syear, 
                                string shour, string sminutes, string ssecond,
                                string fday, string fmonth, string fyear, 
                                string fhour, string fminutes, string fsecond,
                                string interrrupt) {

            string result = "";
            int dif_second = 0;
            try {
                

                dif_second += Convert.ToInt32(fsecond) - Convert.ToInt32(ssecond);
                dif_second += 60 * (Convert.ToInt32(fminutes) - Convert.ToInt32(sminutes));
                dif_second += 60 * 60 * (Convert.ToInt32(fhour) - Convert.ToInt32(shour));
                dif_second += 60 * 60 * 24 * (Convert.ToInt32(fday) - Convert.ToInt32(sday));
                dif_second += 60 * 60 * 24 * 30 * (Convert.ToInt32(fmonth) - Convert.ToInt32(smonth));
                dif_second += 60 * 60 * 24 * 30 * 12 * (Convert.ToInt32(fyear) - Convert.ToInt32(syear));

                dif_second -= Convert.ToInt32(interrrupt);

                result = dif_second.ToString();
            }catch(Exception eee){
                result = dif_second.ToString();
            }

            return result;
        }

        public string calculateTime(string stime, string ftime, string itime) {

            string line;
            string temp;
            string[] lines;
            string[] temps;

            string sday = "";
            string smonth = "";
            string syear = "";

            string shour = "";
            string sminute = "";
            string ssecond = "";

            string fday = "";
            string fmonth = "";
            string fyear = "";

            string fhour = "";
            string fminute = "";
            string fsecond = "";

            string interrupt = "";

            try
            {
                line = stime;
                lines = line.Split(' ');

                temp = lines[0];
                temps = temp.Split('.');
                sday = temps[0];
                smonth = temps[1];
                syear = temps[2];

                temp = lines[1];
                temps = temp.Split(':');
                shour = temps[0];
                sminute = temps[1];
                ssecond = temps[2];


                line = ftime;
                lines = line.Split(' ');

                temp = lines[0];
                temps = temp.Split('.');
                fday = temps[0];
                fmonth = temps[1];
                fyear = temps[2];

                temp = lines[1];
                temps = temp.Split(':');
                fhour = temps[0];
                fminute = temps[1];
                fsecond = temps[2];

                interrupt = itime;

            }
            catch (Exception eee)
            {
                return "Error Calculate";
            }

            return calculateDelta(sday, smonth, syear, shour, sminute, ssecond,
                                  fday, fmonth, fyear, fhour, fminute, fsecond,
                                  interrupt);
        }

        protected void button_calculate_Click(object sender, EventArgs e)
        {
            try
            {
                text_plan_delta.Text = calculateTime(text_plan_stime.Text, text_plan_ftime.Text, text_plan_inter.Text);
            }
            catch (Exception eee){}
            try
            {
                text_design_delta.Text = calculateTime(text_design_stime.Text, text_design_ftime.Text, text_design_inter.Text);
            }
            catch (Exception eee) {}
            try
            {
                text_code_delta.Text = calculateTime(text_code_stime.Text, text_code_ftime.Text, text_code_inter.Text);
            }
            catch (Exception eee){}
            try
            {
                text_compile_delta.Text = calculateTime(text_compile_stime.Text, text_compile_ftime.Text, text_compile_inter.Text);
            }
            catch (Exception eee){}
            try
            {
                text_test_delta.Text = calculateTime(text_test_stime.Text, text_test_ftime.Text, text_test_inter.Text);
            }
            catch (Exception eee){}
            try
            {
                text_pm_delta.Text = calculateTime(text_pm_stime.Text, text_pm_ftime.Text, text_pm_inter.Text);
            }
            catch (Exception eee){}
        }
    }
}