using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSP.Entity;
using PSP.Entity.Forms;

namespace PSP
{
    public partial class Exp5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["SELECTED_EXPERIMENT"] = 5;

            checkExpDate();
            checkExp();

            User user = null;
            if ((Session["USER"] as User) != null)
                user = Session["USER"] as User;

            if (user.type == 2)
                Response.Redirect("~/Instructer.aspx");
            else if (user.type == 10)
                Response.Redirect("~/Home.aspx");
        }
        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            int index = Int32.Parse(e.Item.Value);
            MultiView1.ActiveViewIndex = index;
        }

        public void checkExp()
        {
            int uid = (Session["USER"] as User).id;
            if (TimeRecordingForm.isExist(uid, 5) > 0)
            {
                panel_forms.Enabled = false;
                header.Text = "You have finished this experiment!!!";
            }
        }
        public void checkExpDate()
        {

            List<ExperimentDate> dates = null;
            try
            {
                int gid = (Session["USER"] as User).group_id;
                int eno = 5;

                dates = new ExperimentDate().Obj_Listele_By_Group_Exp(gid, eno);
                string[] sdates = dates[0].start_date.ToString().Split(' ');
                string[] fdates = dates[0].finish_date.ToString().Split(' ');

                string[] sdatesdays = sdates[0].Split('.');
                string[] fdatesdays = fdates[0].Split('.');

                string[] sdateshours = sdates[1].Split(':');
                string[] fdateshours = fdates[1].Split(':');

                int start = Convert.ToInt32(sdateshours[2])
                          + Convert.ToInt32(sdateshours[1]) * 60
                          + Convert.ToInt32(sdateshours[0]) * 60 * 60
                          + Convert.ToInt32(sdatesdays[0]) * 60 * 60 * 24
                          + Convert.ToInt32(sdatesdays[1]) * 60 * 60 * 24 * 30
                          + Convert.ToInt32(sdatesdays[2]) * 60 * 60 * 24 * 30 * 12;

                int finish = Convert.ToInt32(fdateshours[2])
                           + Convert.ToInt32(fdateshours[1]) * 60
                           + Convert.ToInt32(fdateshours[0]) * 60 * 60
                           + Convert.ToInt32(fdatesdays[0]) * 60 * 60 * 24
                           + Convert.ToInt32(fdatesdays[1]) * 60 * 60 * 24 * 30
                           + Convert.ToInt32(fdatesdays[2]) * 60 * 60 * 24 * 30 * 12;

                string nowd = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss");
                string[] nowdates = nowd.Split(' ');
                string[] nowdatesdays = nowdates[0].Split('-');
                string[] nowdateshours = nowdates[1].Split(':');

                int now = Convert.ToInt32(nowdateshours[2])
                        + Convert.ToInt32(nowdateshours[1]) * 60
                        + Convert.ToInt32(nowdateshours[0]) * 60 * 60
                        + Convert.ToInt32(nowdatesdays[2]) * 60 * 60 * 24
                        + Convert.ToInt32(nowdatesdays[1]) * 60 * 60 * 24 * 30
                        + Convert.ToInt32(nowdatesdays[0]) * 60 * 60 * 24 * 30 * 12;

                if (start > now || finish < now)
                {
                    menu_forms.Enabled = false;
                    header_date.Text = "Experiment is not available to fill form. Please contact with your instructer!!!";
                }

            }
            catch (Exception ee)
            {


            }
        }

        protected void button_finish_Click(object sender, EventArgs e)
        {
            try
            {
                int uid = (Session["USER"] as User).id;
                int eno = Convert.ToInt32(Session["SELECTED_EXPERIMENT"].ToString());
                TimeRecordingForm.finishForm(uid, eno);
                DefectGroup.finishForm(uid, eno);
                PIPForm.finishForm(uid, eno);
                TestGroup.finishForm(uid, eno);
                SizeEstimatingForm.finishForm(uid, eno);
                TaskAndScheduleForm.finishForm(uid, eno);
                CodeReview.finishForm(uid, eno);
                Grade grade = new Grade();
                grade.user_id = uid;
                grade.group_id = (Session["USER"] as User).group_id;
                grade.experiment_no = 5;
                grade.Save();
                Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('" + "You have succesfully saved experiment!" + "')</SCRIPT>");
            }
            catch (Exception ee)
            {

            }
        }

    }
}