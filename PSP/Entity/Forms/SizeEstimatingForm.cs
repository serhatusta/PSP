using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using PSP.DB;

namespace PSP.Entity.Forms
{
    public class SizeEstimatingForm : IEntity<SizeEstimatingForm>
    {
        #region DBFields
        public string based_planned_base { get; set; }
        public string based_planned_deleted { get; set; }
        public string based_planned_modified { get; set; }
        public string based_planned_added { get; set; }
        public string based_actual_base { get; set; }
        public string based_actual_deleted { get; set; }
        public string based_actual_modified { get; set; }
        public string based_actual_added { get; set; }

        public string added_planned_base { get; set; }
        public string added_planned_deleted { get; set; }
        public string added_planned_modified { get; set; }
        public string added_planned_added { get; set; }
        public string added_actual_base { get; set; }
        public string added_actual_deleted { get; set; }
        public string added_actual_modified { get; set; }
        public string added_actual_added { get; set; }

        public string reused_planned_base { get; set; }
        public string reused_planned_deleted { get; set; }
        public string reused_planned_modified { get; set; }
        public string reused_planned_added { get; set; }
        public string reused_actual_base { get; set; }
        public string reused_actual_deleted { get; set; }
        public string reused_actual_modified { get; set; }
        public string reused_actual_added { get; set; }

        public string reused_name { get; set; }
        public string added_name { get; set; }
        public string based_name { get; set; }

        public int user_id { get; set; }
        public int experiment_no { get; set; }

        #endregion

        public SizeEstimatingForm() : base() { }

        public SizeEstimatingForm(DataRow dataRow)
        {
            this.Prepare(dataRow);
        }

        public SizeEstimatingForm(int id)
        {
            this.Prepare(DBConnector.select(view + " WHERE id=" + id.ToString()).Rows[0]);
        }
        public override SizeEstimatingForm Get(int id)
        {
            return new SizeEstimatingForm(id);
        }

        protected override string tablename
        {
            get { return "size_estimating_form"; }
        }
        protected override string view
        {
            get { return "SELECT * FROM " + this.tablename; }
        }

        protected override void Prepare(DataRow dr)
        {
            base.Prepare(dr);
            this.based_planned_added = dr["based_planned_added"].ToString();
            this.based_planned_modified = dr["based_planned_modified"].ToString();
            this.based_planned_deleted = dr["based_planned_deleted"].ToString();
            this.based_planned_base = dr["based_planned_base"].ToString();
            this.based_actual_added = dr["based_actual_added"].ToString();
            this.based_actual_modified = dr["based_actual_modified"].ToString();
            this.based_actual_deleted = dr["based_actual_deleted"].ToString();
            this.based_actual_base = dr["based_actual_base"].ToString();

            this.added_planned_added = dr["added_planned_added"].ToString();
            this.added_planned_modified = dr["added_planned_modified"].ToString();
            this.added_planned_deleted = dr["added_planned_deleted"].ToString();
            this.added_planned_base = dr["added_planned_base"].ToString();
            this.added_actual_added = dr["added_actual_added"].ToString();
            this.added_actual_modified = dr["added_actual_modified"].ToString();
            this.added_actual_deleted = dr["added_actual_deleted"].ToString();
            this.added_actual_base = dr["added_actual_base"].ToString();

            this.reused_planned_added = dr["reused_planned_added"].ToString();
            this.reused_planned_modified = dr["reused_planned_modified"].ToString();
            this.reused_planned_deleted = dr["reused_planned_deleted"].ToString();
            this.reused_planned_base = dr["reused_planned_base"].ToString();
            this.reused_actual_added = dr["reused_actual_added"].ToString();
            this.reused_actual_modified = dr["reused_actual_modified"].ToString();
            this.reused_actual_deleted = dr["reused_actual_deleted"].ToString();
            this.reused_actual_base = dr["reused_actual_base"].ToString();

            this.reused_name = dr["reused_name"].ToString();
            this.based_name = dr["based_name"].ToString();
            this.added_name = dr["added_name"].ToString();

            this.experiment_no = Convert.ToInt32(dr["experiment_no"]);
            this.user_id = Convert.ToInt32(dr["user_id"]);
        }


        protected override int Update()
        {
            return DBConnector.update(
                    new Dictionary<string, object>() {
                        {"based_planned_added", this.based_planned_added},
                        {"based_planned_modified", this.based_planned_modified},
                        {"based_planned_deleted", this.based_planned_deleted},
                        {"based_planned_base", this.based_planned_base},
                        {"based_actual_added", this.based_actual_added},
                        {"based_actual_modified", this.based_actual_modified},
                        {"based_actual_deleted", this.based_actual_deleted},
                        {"based_actual_base", this.based_actual_base},

                        {"added_planned_added", this.added_planned_added},
                        {"added_planned_modified", this.added_planned_modified},
                        {"added_planned_deleted", this.added_planned_deleted},
                        {"added_planned_base", this.added_planned_base},
                        {"added_actual_added", this.added_actual_added},
                        {"added_actual_modified", this.added_actual_modified},
                        {"added_actual_deleted", this.added_actual_deleted},
                        {"added_actual_base", this.added_actual_base},

                        {"reused_planned_added", this.reused_planned_added},
                        {"reused_planned_modified", this.reused_planned_modified},
                        {"reused_planned_deleted", this.reused_planned_deleted},
                        {"reused_planned_base", this.reused_planned_base},
                        {"reused_actual_added", this.reused_actual_added},
                        {"reused_actual_modified", this.reused_actual_modified},
                        {"reused_actual_deleted", this.reused_actual_deleted},
                        {"reused_actual_base", this.reused_actual_base},
                         
                        {"reused_name", this.reused_name},
                        {"added_name", this.added_name},
                        {"based_name", this.based_name},
                     
                        {"experiment_no", this.experiment_no},
                        {"user_id", this.user_id},
                    }, tablename,
                    new Dictionary<string, object>() {
                        {"id", this.id}
                    });
        }

        protected override int Add()
        {
            this.id = DBConnector.insert(
                    new Dictionary<string, object>() {
                        {"based_planned_added", this.based_planned_added},
                        {"based_planned_modified", this.based_planned_modified},
                        {"based_planned_deleted", this.based_planned_deleted},
                        {"based_planned_base", this.based_planned_base},
                        {"based_actual_added", this.based_actual_added},
                        {"based_actual_modified", this.based_actual_modified},
                        {"based_actual_deleted", this.based_actual_deleted},
                        {"based_actual_base", this.based_actual_base},

                        {"added_planned_added", this.added_planned_added},
                        {"added_planned_modified", this.added_planned_modified},
                        {"added_planned_deleted", this.added_planned_deleted},
                        {"added_planned_base", this.added_planned_base},
                        {"added_actual_added", this.added_actual_added},
                        {"added_actual_modified", this.added_actual_modified},
                        {"added_actual_deleted", this.added_actual_deleted},
                        {"added_actual_base", this.added_actual_base},

                        {"reused_planned_added", this.reused_planned_added},
                        {"reused_planned_modified", this.reused_planned_modified},
                        {"reused_planned_deleted", this.reused_planned_deleted},
                        {"reused_planned_base", this.reused_planned_base},
                        {"reused_actual_added", this.reused_actual_added},
                        {"reused_actual_modified", this.reused_actual_modified},
                        {"reused_actual_deleted", this.reused_actual_deleted},
                        {"reused_actual_base", this.reused_actual_base},
                         
                        {"reused_name", this.reused_name},
                        {"added_name", this.added_name},
                        {"based_name", this.based_name},

                        {"experiment_no", this.experiment_no},
                        {"user_id", this.user_id},

                        {"record_date", DateTime.Now},
                        {"status", 1},
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
        public List<SizeEstimatingForm> ConvertToObject(DataTable dt)
        {
            List<SizeEstimatingForm> result = new List<SizeEstimatingForm>();
            foreach (DataRow dr in dt.Rows)
            {
                result.Add(new SizeEstimatingForm(dr));
            }
            return result;
        }
        public List<SizeEstimatingForm> Obj_Listele_All()
        {
            DataTable dt = DBConnector.select("Select * from size_estimating_form ");
            return ConvertToObject(dt);
        }

        public List<SizeEstimatingForm> Obj_Listele_All_By_Owner(int id)
        {
            string sql = "Select * from size_estimating_form " + "Where user_id = " + id;
            DataTable dt = DBConnector.select(sql);
            return ConvertToObject(dt);
        }

        public List<SizeEstimatingForm> Get_By_Id(int id)
        {
            string sql = "Select * from size_estimating_form " + "Where id = " + id;
            DataTable dt = DBConnector.select(sql);
            return ConvertToObject(dt);
        }

        public List<SizeEstimatingForm> Get_By_GroupId(int gid)
        {
            string sql = "Select * from size_estimating_form " + "Where defect_group_id = " + gid;
            DataTable dt = DBConnector.select(sql);
            return ConvertToObject(dt);
        }

        public static int isExist(int uid, int eid)
        {
            int result = 0;
            DataTable dt = DBConnector.select("SELECT * FROM size_estimating_form WHERE finish = 1 AND user_id = " + uid + " AND experiment_no = " + eid);
            if (dt.Rows.Count > 0)
                result = Convert.ToInt32(dt.Rows[0]["id"].ToString());

            return result;
        }

        public static int getExperimentId(int uid, int eid)
        {
            DataTable dt = DBConnector.select("SELECT * FROM size_estimating_form WHERE user_id = " + uid + " AND experiment_no = " + eid);
            int id = Convert.ToInt32((dt.Rows[0]["id"].ToString()));
            return id;
        }


        public static void finishForm(int uid, int eno)
        {
            string query = "UPDATE size_estimating_form " +
                               " SET finish = 1 " +
                               " WHERE user_id = " + uid + " AND experiment_no = " + eno + " AND id > 0 ";
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