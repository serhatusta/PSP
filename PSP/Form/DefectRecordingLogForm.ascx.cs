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
    public partial class DefectRecordingLogForm : System.Web.UI.UserControl
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            checkForm();
        }

        public void checkForm()
        {
            int uid = (Session["USER"] as User).id;
            int eno = Convert.ToInt32(Session["SELECTED_EXPERIMENT"].ToString());

            if (DefectGroup.isExist(uid, eno) > 0)
            {
                panel_form.Enabled = false;
                header.Text = "You have already filled this form. You can not edit or delete!!!";
            }
        }

        protected void button_save_Click(object sender, EventArgs e)
        {

            DefectForm defect_form = new DefectForm();

            defect_form.defect_type = drop_type.SelectedItem.Text;
            defect_form.injected = drop_injected.SelectedItem.Text;
            defect_form.removed = drop_removed.SelectedItem.Text;
            defect_form.fix_time = text_fix.Text;
            defect_form.description = text_description.Text;
            defect_form.date = text_date.Text;
            int exp_no = Convert.ToInt32(Session["SELECTED_EXPERIMENT"].ToString());
            int user_id = (Session["USER"] as User).id;

            try {
                if (new DefectGroup().isGroupExist(user_id, exp_no))
                {

                    int gno = new DefectGroup().getGroupId(user_id, exp_no);
                    defect_form.defect_group_id = gno;
                    
                }
                else {
                    DefectGroup defectgroup = new DefectGroup();
                    defectgroup.comment = "new defect group";
                    defectgroup.user_id = user_id;
                    defectgroup.experiment_no = exp_no;
                    int newid = defectgroup.Save();
                    defect_form.defect_group_id = defectgroup.id;
                }

                defect_form.Save();
                Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('" + "You have succesfully saved!" + "')</SCRIPT>");
            }
            catch (Exception ee) {
                
            }
            

        }

        protected void button_clear_Click(object sender, EventArgs e)
        {
            text_date.Text = "";
            text_description.Text = "";
            text_fix.Text = "";
            drop_injected.SelectedIndex = 0;
            drop_removed.SelectedIndex = 0;
            drop_type.SelectedIndex = 0;
        }

        protected void button_date_Click(object sender, ImageClickEventArgs e)
        {
            DateTime dt = DateTime.Now;
            string[] words = dt.ToString().Split(' ');
            text_date.Text = words[0];
        }


    }
}