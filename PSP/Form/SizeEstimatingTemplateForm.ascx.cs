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
    public partial class SizeEstimatingTemplateForm : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            checkForm();
        }

        public void checkForm()
        {
            int uid = (Session["USER"] as User).id;
            int eno = Convert.ToInt32(Session["SELECTED_EXPERIMENT"].ToString());

            if (SizeEstimatingForm.isExist(uid, eno) > 0)
            {
                panel_form.Enabled = false;
                header.Text = "You have already filled this form. You can not edit or delete!!!";
            }
        }

        protected void button_save_Click(object sender, EventArgs e)
        {

            SizeEstimatingForm sizeform = new SizeEstimatingForm();
            sizeform.based_name = text_based_name.Text;
            sizeform.based_planned_added = text_based_planned_added.Text ;
            sizeform.based_planned_base = text_based_planned_base.Text ;
            sizeform.based_planned_deleted = text_based_planned_deleted.Text ;
            sizeform.based_planned_modified = text_based_planned_modified.Text ;
            sizeform.based_actual_added = text_based_actual_added.Text ;
            sizeform.based_actual_base = text_based_actual_base.Text ;
            sizeform.based_actual_deleted = text_based_actual_deleted.Text ;
            sizeform.based_actual_modified = text_based_actual_modified.Text ;

            sizeform.reused_name = text_reused_name.Text;
            sizeform.reused_planned_added = text_reused_planned_added.Text;
            sizeform.reused_planned_base = text_reused_planned_base.Text;
            sizeform.reused_planned_deleted = text_reused_planned_deleted.Text;
            sizeform.reused_planned_modified = text_reused_planned_modified.Text;
            sizeform.reused_actual_added = text_reused_actual_added.Text;
            sizeform.reused_actual_base = text_reused_actual_base.Text;
            sizeform.reused_actual_deleted = text_reused_actual_deleted.Text;
            sizeform.reused_actual_modified = text_reused_actual_modified.Text;

            sizeform.added_name = text_added_name.Text;
            sizeform.added_planned_added = text_added_planned_added.Text;
            sizeform.added_planned_base = text_added_planned_base.Text;
            sizeform.added_planned_deleted = text_added_planned_deleted.Text;
            sizeform.added_planned_modified = text_added_planned_modified.Text;
            sizeform.added_actual_added = text_added_actual_added.Text;
            sizeform.added_actual_base = text_added_actual_base.Text;
            sizeform.added_actual_deleted = text_added_actual_deleted.Text;
            sizeform.added_actual_modified = text_added_actual_modified.Text;

            try
            {
                sizeform.Save();
                Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('" + "You have succesfully saved!" + "')</SCRIPT>");
            }
            catch (Exception ee)
            {
                Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('" + "You have not succesfully saved. Please try again!" + "')</SCRIPT>");
            }
        }

        protected void button_clear_Click(object sender, EventArgs e)
        {
            text_based_name.Text = "";
            text_based_planned_added.Text = "";
            text_based_planned_base.Text = "";
            text_based_planned_deleted.Text = "";
            text_based_planned_modified.Text = "";
            text_based_actual_added.Text = "";
            text_based_actual_base.Text = "";
            text_based_actual_deleted.Text = "";
            text_based_actual_modified.Text = "";


            text_added_name.Text = "";
            text_added_planned_added.Text = "";
            text_added_planned_base.Text = "";
            text_added_planned_deleted.Text = "";
            text_added_planned_modified.Text = "";
            text_added_actual_added.Text = "";
            text_added_actual_base.Text = "";
            text_added_actual_deleted.Text = "";
            text_added_actual_modified.Text = "";


            text_reused_name.Text = "";
            text_reused_planned_added.Text = "";
            text_reused_planned_base.Text = "";
            text_reused_planned_deleted.Text = "";
            text_reused_planned_modified.Text = "";
            text_reused_actual_added.Text = "";
            text_reused_actual_base.Text = "";
            text_reused_actual_deleted.Text = "";
            text_reused_actual_modified.Text = "";
        }
    }
}