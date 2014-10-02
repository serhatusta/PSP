using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using PSP.DB;

namespace PSP.Entity
{
    public class Grade : IEntity<Grade>
    {
        #region DBFields
        public string username { get; set; }
        public int user_id { get; set; }
        public int group_id { get; set; }
        public int experiment_no { get; set; }
        public string time_form_grade { get; set; }
        public string defect_form_grade { get; set; }
        public string pip_form_grade { get; set; }
        public string test_form_grade { get; set; }
        public string size_form_grade { get; set; }
        public string task_form_grade { get; set; }
        public string code_review_grade { get; set; }
        public string design_review_grade { get; set; }
        #endregion

        public Grade() : base() { }

        public Grade(DataRow dataRow)
        {
            this.Prepare(dataRow);
        }

        public Grade(int id)
        {
            this.Prepare(DBConnector.select(view + " WHERE id=" + id.ToString()).Rows[0]);
        }
        public override Grade Get(int id)
        {
            return new Grade(id);
        }

        protected override string tablename
        {
            get { return "grades"; }
        }
        protected override string view
        {
            get { return "SELECT * FROM " + this.tablename; }
        }

        protected override void Prepare(DataRow dr)
        {
            base.Prepare(dr);
            this.user_id = Convert.ToInt32(dr["user_id"].ToString());
            this.group_id = Convert.ToInt32(dr["group_id"].ToString());
            this.experiment_no = Convert.ToInt32(dr["experiment_no"].ToString());
            this.time_form_grade = (dr["time_form_grade"].ToString());
            this.defect_form_grade = (dr["defect_form_grade"].ToString());
            this.pip_form_grade = (dr["pip_form_grade"].ToString());
            this.test_form_grade = (dr["test_form_grade"].ToString());
            this.size_form_grade = (dr["size_form_grade"].ToString());
            this.task_form_grade = (dr["task_form_grade"].ToString());
            this.code_review_grade = (dr["code_review_grade"].ToString());
            this.design_review_grade = (dr["design_review_grade"].ToString());
            this.username = new User().getUserusername(this.user_id);

        }


        protected override int Update()
        {
            return DBConnector.update(
                    new Dictionary<string, object>() {
                        {"user_id", this.user_id},
                        {"group_id", this.group_id},
                        {"experiment_no", this.experiment_no},
                        {"time_form_grade", this.time_form_grade},
                        {"defect_form_grade", this.defect_form_grade},
                        {"pip_form_grade", this.pip_form_grade},
                        {"test_form_grade", this.test_form_grade},
                        {"size_form_grade", this.size_form_grade},
                        {"task_form_grade", this.task_form_grade},
                        {"code_review_grade", this.code_review_grade},
                        {"design_review_grade", this.design_review_grade},
                      
                    }, tablename,
                    new Dictionary<string, object>() {
                        {"id", this.id}
                    });
        }

        protected override int Add()
        {
            this.id = DBConnector.insert(
                    new Dictionary<string, object>() {
                        {"user_id", this.user_id},
                        {"group_id", this.group_id},
                        {"experiment_no", this.experiment_no},
                        {"time_form_grade", this.time_form_grade},
                        {"defect_form_grade", this.defect_form_grade},
                        {"pip_form_grade", this.pip_form_grade},
                        {"test_form_grade", this.test_form_grade},
                        {"size_form_grade", this.size_form_grade},
                        {"task_form_grade", this.task_form_grade},
                        {"code_review_grade", this.code_review_grade},
                        {"design_review_grade", this.design_review_grade},
                        {"record_date", this.record_date},
                        {"status", this.status},
                    }, tablename
                );


            return this.id;
        }

        public override int Delete()
        {
            return DBConnector.update(
                    new Dictionary<string, object>() {
                        {"status", 0},

                    }, tablename,
                    new Dictionary<string, object>() {
                        {"id", id}
                    });
        }

        public override int Close()
        {
            return 0;
        }


        #region Special
        public List<Grade> ConvertToObject(DataTable dt)
        {
            List<Grade> result = new List<Grade>();
            foreach (DataRow dr in dt.Rows)
            {
                result.Add(new Grade(dr));
            }
            return result;
        }
        public List<Grade> Obj_Listele_All()
        {
            DataTable dt = DBConnector.select("Select * from grades ");
            return ConvertToObject(dt);
        }
        public List<Grade> Obj_Listele_All_By_Group(int id)
        {
            string sql = "Select * from grades " + "Where group_id = " + id;
            DataTable dt = DBConnector.select(sql);
            return ConvertToObject(dt);
        }
        public List<Grade> Obj_Listele_All_By_Owner(int id)
        {
            string sql = "Select * from grades " + "Where user_id = " + id;
            DataTable dt = DBConnector.select(sql);
            return ConvertToObject(dt);
        }

        public List<Grade> Obj_Listele_All_By_Group_By_Exp(int gid, int eid)
        {
            string sql = "Select * from grades " + "Where group_id = " + gid + " AND experiment_no = " + eid;
            DataTable dt = DBConnector.select(sql);
            return ConvertToObject(dt);
        }

        public static void gradeExperiment(int uid, int eno, string form, string grade)
        {
            string query = "UPDATE grades " +
                               " SET " + form + " = " + grade +
                               " WHERE user_id = " + uid + " AND experiment_no = " + eno + " AND id > 0 "; ;
            try
            {
                DBConnector.updateST(query);
            }
            catch (Exception ee)
            {

            }
        }

        #endregion
    }
}