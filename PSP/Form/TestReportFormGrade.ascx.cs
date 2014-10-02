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
    public partial class TestReportFormGrade : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadDefects();
            }
        }

        protected void button_fetch_Click(object sender, EventArgs e)
        {
            try
            {
                loadForm();
                Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('" + "Data binded!" + "')</SCRIPT>");
            }
            catch (Exception ee)
            {
                Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('" + "There is no available form for this user!" + "')</SCRIPT>");
            }

        }

        public void loadDefects()
        {

            int uid = (Session["SELECTED_USER"] as User).id;
            int eid = Convert.ToInt32((Session["SELECTED_EXPERIMENT"]).ToString());

            int id = TestGroup.getExperimentId(uid, eid);
            TestGroup tests = new TestGroup(id);

            drop_tests.DataSource = new TestReport().Get_By_GroupId(tests.id);
            drop_tests.DataBind();

        }

        public void loadForm()
        {
            int uid = Convert.ToInt32(Session["SELECTED_TEST"].ToString());

            TestReport testform = new TestReport(uid);

            text_actual.Text = testform.actual_results;
            text_condition.Text = testform.conditions;
            text_expected.Text = testform.expected_results;
            text_objective.Text = testform.objective;
            text_testname.Text = testform.test_name;
            text_testnumber.Text = testform.test_number;


        }

        protected void button_grade_Click(object sender, EventArgs e)
        {
            int uid = (Session["SELECTED_USER"] as User).id;
            int eid = Convert.ToInt32((Session["SELECTED_EXPERIMENT"]).ToString());
            Experiment.gradeExperiment(uid, eid, "test_form_grade", text_grade.Text);
        }

        protected void drop_tests_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["SELECTED_TEST"] = drop_tests.SelectedValue.ToString();
        }
    }
}