using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PSP.Entity;
using PSP.Entity.Forms;

namespace PSP.Form
{
    public partial class DefectRecordingLogFormGrade : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
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

        public void loadDefects() {

            int uid = (Session["SELECTED_USER"] as User).id;
            int eid = Convert.ToInt32((Session["SELECTED_EXPERIMENT"]).ToString());

            int id = DefectGroup.getExperimentId(uid, eid);
            DefectGroup defects = new DefectGroup(id);

            drop_defects.DataSource = new DefectForm().Get_By_GroupId(defects.id);
            drop_defects.DataBind();
            
        }

        public void loadForm()
        {
            int uid = Convert.ToInt32(Session["SELECTED_DEFECT"].ToString());

            DefectForm defectform = new DefectForm(uid);

            text_date.Text = defectform.date;
            text_description.Text = defectform.description;
            text_fix.Text = defectform.fix_time;

            drop_injected.SelectedValue = defectform.injected;
            drop_removed.SelectedValue = defectform.removed;
            drop_type.SelectedValue = defectform.defect_type;

        }

        protected void button_grade_Click(object sender, EventArgs e)
        {
            int uid = (Session["SELECTED_USER"] as User).id;
            int eid = Convert.ToInt32((Session["SELECTED_EXPERIMENT"]).ToString());
            Experiment.gradeExperiment(uid, eid, "defect_form_grade", text_grade.Text);
        }

        protected void drop_defects_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session["SELECTED_DEFECT"] = drop_defects.SelectedValue.ToString();
        }


    }
}