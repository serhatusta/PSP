using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSP.Entity;
using System.Data;

namespace PSP
{
    public partial class InstructerSubmitStatus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                try
                {
                    listStatus();
                    loadExperimentDate();
                }
                catch (Exception ee)
                {

                }
                
            }
        }

        public void loadExperimentDate() {
            int gid = (Session["USER"] as User).group_id;

            List<ExperimentDate> e1 = new ExperimentDate().Obj_Listele_By_Group_Exp(gid, 1);
            List<ExperimentDate> e2 = new ExperimentDate().Obj_Listele_By_Group_Exp(gid, 2);
            List<ExperimentDate> e3 = new ExperimentDate().Obj_Listele_By_Group_Exp(gid, 3);
            List<ExperimentDate> e4 = new ExperimentDate().Obj_Listele_By_Group_Exp(gid, 4);
            List<ExperimentDate> e5 = new ExperimentDate().Obj_Listele_By_Group_Exp(gid, 5);
            List<ExperimentDate> e6 = new ExperimentDate().Obj_Listele_By_Group_Exp(gid, 6);

            text_exp1_start.Text = e1[0].start_date.ToString();
            text_exp1_finish.Text = e1[0].finish_date.ToString();

            text_exp2_start.Text = e2[0].start_date.ToString();
            text_exp2_finish.Text = e2[0].finish_date.ToString();

            text_exp3_start.Text = e3[0].start_date.ToString();
            text_exp3_finish.Text = e3[0].finish_date.ToString();

            text_exp4_start.Text = e4[0].start_date.ToString();
            text_exp4_finish.Text = e4[0].finish_date.ToString();

            text_exp5_start.Text = e5[0].start_date.ToString();
            text_exp5_finish.Text = e5[0].finish_date.ToString();

            text_exp6_start.Text = e6[0].start_date.ToString();
            text_exp6_finish.Text = e6[0].finish_date.ToString();
        }

        public void listStatus() {
            User user = null;
            if ((Session["USER"] as User) != null)
            {
                user = Session["USER"] as User;
            }
            List<Experiment> list = new Experiment().Obj_Listele_All_By_Group(user.group_id);
            submit_grid.DataSource = list;
            submit_grid.DataBind();
            fixStatus(list);
        }

        public void fixStatus(List<Experiment> dt)
        {
            GridViewRow row = null;
            Experiment temp = null;
            CheckBox chk = null;
            for (int i = 0; i < submit_grid.Rows.Count; i++ ) {
                temp = dt[i];
                row = submit_grid.Rows[i];

                chk = row.FindControl("exp1") as CheckBox;
                if (temp.exp_1 == 1)
                    chk.Checked = true;

                chk = row.FindControl("exp2") as CheckBox;
                if (temp.exp_2 == 1)
                    chk.Checked = true;

                chk = row.FindControl("exp3") as CheckBox;
                if (temp.exp_3 == 1)
                    chk.Checked = true;

                chk = row.FindControl("exp4") as CheckBox;
                if (temp.exp_4 == 1)
                    chk.Checked = true;

                chk = row.FindControl("exp5") as CheckBox;
                if (temp.exp_5 == 1)
                    chk.Checked = true;

                chk = row.FindControl("exp6") as CheckBox;
                if (temp.exp_6 == 1)
                    chk.Checked = true;
                 
            }
        }

        protected void button_save_Click(object sender, EventArgs e)
        {
            try
            {
                int gid = (Session["USER"] as User).group_id;

                List<ExperimentDate> e1 = new ExperimentDate().Obj_Listele_By_Group_Exp(gid, 1);
                List<ExperimentDate> e2 = new ExperimentDate().Obj_Listele_By_Group_Exp(gid, 2);
                List<ExperimentDate> e3 = new ExperimentDate().Obj_Listele_By_Group_Exp(gid, 3);
                List<ExperimentDate> e4 = new ExperimentDate().Obj_Listele_By_Group_Exp(gid, 4);
                List<ExperimentDate> e5 = new ExperimentDate().Obj_Listele_By_Group_Exp(gid, 5);
                List<ExperimentDate> e6 = new ExperimentDate().Obj_Listele_By_Group_Exp(gid, 6);

                e1[0].start_date = Convert.ToDateTime(text_exp1_start.Text);
                e1[0].finish_date = Convert.ToDateTime(text_exp1_finish.Text);
                e1[0].Save();

                e2[0].start_date = Convert.ToDateTime(text_exp2_start.Text);
                e2[0].finish_date = Convert.ToDateTime(text_exp2_finish.Text);
                e2[0].Save();

                e3[0].start_date = Convert.ToDateTime(text_exp3_start.Text);
                e3[0].finish_date = Convert.ToDateTime(text_exp3_finish.Text);
                e3[0].Save();

                e4[0].start_date = Convert.ToDateTime(text_exp4_start.Text);
                e4[0].finish_date = Convert.ToDateTime(text_exp4_finish.Text);
                e4[0].Save();

                e5[0].start_date = Convert.ToDateTime(text_exp5_start.Text);
                e5[0].finish_date = Convert.ToDateTime(text_exp5_finish.Text);
                e5[0].Save();

                e6[0].start_date = Convert.ToDateTime(text_exp6_start.Text);
                e6[0].finish_date = Convert.ToDateTime(text_exp6_finish.Text);
                e6[0].Save();

                Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('" + "You have succesfully saved!" + "')</SCRIPT>");
            }
            catch (Exception ee)
            {

            }


        }

        protected void button_clear_Click(object sender, EventArgs e)
        {
        }
        protected void Menu1_MenuItemClick(object sender, MenuEventArgs e)
        {
            int index = Int32.Parse(e.Item.Value);
            MultiView1.ActiveViewIndex = index;
        }
    }
}