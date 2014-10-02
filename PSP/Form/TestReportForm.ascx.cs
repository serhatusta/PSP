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
    public partial class TestReportForm : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            checkForm();
        }

        public void checkForm()
        {
            int uid = (Session["USER"] as User).id;
            int eno = Convert.ToInt32(Session["SELECTED_EXPERIMENT"].ToString());

            if (TestGroup.isExist(uid, eno) > 0)
            {
                panel_form.Enabled = false;
                header.Text = "You have already filled this form. You can not edit or delete!!!";
            }
        }

        protected void button_save_Click(object sender, EventArgs e)
        {
            TestReport testreport = new TestReport();

            testreport.test_number = text_testnumber.Text;
            testreport.test_name = text_testname.Text;
            testreport.objective = text_objective.Text;
            testreport.conditions = text_condition.Text;
            testreport.expected_results = text_expected.Text;
            testreport.actual_results = text_actual.Text;
            int exp_no = Convert.ToInt32(Session["SELECTED_EXPERIMENT"].ToString());
            int user_id = (Session["USER"] as User).id;

            try
            {
                if (new TestGroup().isGroupExist(user_id, exp_no))
                {

                    int gno = new TestGroup().getGroupId(user_id, exp_no);
                    testreport.test_group_id = gno;

                }
                else
                {
                    TestGroup testgroup = new TestGroup();
                    testgroup.comment = "new test group";
                    testgroup.user_id = user_id;
                    testgroup.experiment_no = exp_no;
                    int newid = testgroup.Save();
                    testreport.test_group_id = testgroup.id;
                }

                testreport.Save();
                Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('" + "You have succesfully saved!" + "')</SCRIPT>");
            }
            catch (Exception ee)
            {

            }
        }

        protected void button_clear_Click(object sender, EventArgs e)
        {
            text_actual.Text = "";
            text_condition.Text = "";
            text_expected.Text = "";
            text_objective.Text = "";
            text_testname.Text = "";
            text_testnumber.Text = "";
        }
    }
}