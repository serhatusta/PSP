using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using PSP.DB;



namespace PSP.Entity.Forms
{
    public class TaskAndScheduleForm : IEntity<TaskAndScheduleForm>
    {
        #region DBFields
        public string plan_planned_minute { get; set; }
        public string plan_planned_date { get; set; }
        public string plan_planned_pv { get; set; }
        public string plan_actual_minute { get; set; }
        public string plan_actual_date { get; set; }
        public string plan_actual_ev { get; set; }

        public string design_planned_minute { get; set; }
        public string design_planned_date { get; set; }
        public string design_planned_pv { get; set; }
        public string design_actual_minute { get; set; }
        public string design_actual_date { get; set; }
        public string design_actual_ev { get; set; }
        
        public string code_planned_minute { get; set; }
        public string code_planned_date { get; set; }
        public string code_planned_pv { get; set; }
        public string code_actual_minute { get; set; }
        public string code_actual_date { get; set; }
        public string code_actual_ev { get; set; }

        public string compile_planned_minute { get; set; }
        public string compile_planned_date { get; set; }
        public string compile_planned_pv { get; set; }
        public string compile_actual_minute { get; set; }
        public string compile_actual_date { get; set; }
        public string compile_actual_ev { get; set; }

        public string test_planned_minute { get; set; }
        public string test_planned_date { get; set; }
        public string test_planned_pv { get; set; }
        public string test_actual_minute { get; set; }
        public string test_actual_date { get; set; }
        public string test_actual_ev { get; set; }

        public string post_planned_minute { get; set; }
        public string post_planned_date { get; set; }
        public string post_planned_pv { get; set; }
        public string post_actual_minute { get; set; }
        public string post_actual_date { get; set; }
        public string post_actual_ev { get; set; }

        public int user_id { get; set; }
        public int experiment_no { get; set; }

        #endregion

        public TaskAndScheduleForm() : base() { }

        public TaskAndScheduleForm(DataRow dataRow)
        {
            this.Prepare(dataRow);
        }

        public TaskAndScheduleForm(int id)
        {
            this.Prepare(DBConnector.select(view + " WHERE id=" + id.ToString()).Rows[0]);
        }
        public override TaskAndScheduleForm Get(int id)
        {
            return new TaskAndScheduleForm(id);
        }

        protected override string tablename
        {
            get { return "task_and_schedule_form"; }
        }
        protected override string view
        {
            get { return "SELECT * FROM " + this.tablename; }
        }

        protected override void Prepare(DataRow dr)
        {


            base.Prepare(dr);
            this.plan_planned_minute = dr["plan_planned_minute"].ToString();
            this.plan_planned_date =  (dr["plan_planned_date"].ToString());
            this.plan_planned_pv = dr["plan_planned_pv"].ToString();
            this.plan_actual_minute = dr["plan_actual_minute"].ToString();
            this.plan_actual_date =  (dr["plan_actual_date"].ToString());
            this.plan_actual_ev = dr["plan_actual_ev"].ToString();


            this.design_planned_minute = dr["design_planned_minute"].ToString();
            this.design_planned_date =  (dr["design_planned_date"].ToString());
            this.design_planned_pv = dr["design_planned_pv"].ToString();
            this.design_actual_minute = dr["design_actual_minute"].ToString();
            this.design_actual_date =  (dr["design_actual_date"].ToString());
            this.design_actual_ev = dr["design_actual_ev"].ToString();


            this.code_planned_minute = dr["code_planned_minute"].ToString();
            this.code_planned_date =  (dr["code_planned_date"].ToString());
            this.code_planned_pv = dr["code_planned_pv"].ToString();
            this.code_actual_minute = dr["code_actual_minute"].ToString();
            this.code_actual_date =  (dr["code_actual_date"].ToString());
            this.code_actual_ev = dr["code_actual_ev"].ToString();

            this.compile_planned_minute = dr["compile_planned_minute"].ToString();
            this.compile_planned_date =  (dr["compile_planned_date"].ToString());
            this.compile_planned_pv = dr["compile_planned_pv"].ToString();
            this.compile_actual_minute = dr["compile_actual_minute"].ToString();
            this.compile_actual_date =  (dr["compile_actual_date"].ToString());
            this.compile_actual_ev = dr["compile_actual_ev"].ToString();

            this.test_planned_minute = dr["test_planned_minute"].ToString();
            this.test_planned_date =  (dr["test_planned_date"].ToString());
            this.test_planned_pv = dr["test_planned_pv"].ToString();
            this.test_actual_minute = dr["test_actual_minute"].ToString();
            this.test_actual_date =  (dr["test_actual_date"].ToString());
            this.test_actual_ev = dr["test_actual_ev"].ToString();

            this.post_planned_minute = dr["post_planned_minute"].ToString();
            this.post_planned_date =  (dr["post_planned_date"].ToString());
            this.post_planned_pv = dr["post_planned_pv"].ToString();
            this.post_actual_minute = dr["post_actual_minute"].ToString();
            this.post_actual_date =  (dr["post_actual_date"].ToString());
            this.post_actual_ev = dr["post_actual_ev"].ToString();

            this.experiment_no = Convert.ToInt32(dr["experiment_no"]);
            this.user_id = Convert.ToInt32(dr["user_id"]);
        }


        protected override int Update()
        {
            return DBConnector.update(
                    new Dictionary<string, object>() {
                        {"plan_planned_minute", this.plan_planned_minute},
                        {"plan_planned_date", this.plan_planned_date},
                        {"plan_planned_pv", this.plan_planned_pv},
                        {"plan_actual_minute", this.plan_actual_minute},
                        {"plan_actual_date", this.plan_actual_date},
                        {"plan_actual_ev", this.plan_actual_ev},

                        {"design_planned_minute", this.design_planned_minute},
                        {"design_planned_date", this.design_planned_date},
                        {"design_planned_pv", this.design_planned_pv},
                        {"design_actual_minute", this.design_actual_minute},
                        {"design_actual_date", this.design_actual_date},
                        {"design_actual_ev", this.design_actual_ev},

                        {"code_planned_minute", this.code_planned_minute},
                        {"code_planned_date", this.code_planned_date},
                        {"code_planned_pv", this.code_planned_pv},
                        {"code_actual_minute", this.code_actual_minute},
                        {"code_actual_date", this.code_actual_date},
                        {"code_actual_ev", this.code_actual_ev},

                        {"compile_planned_minute", this.compile_planned_minute},
                        {"compile_planned_date", this.compile_planned_date},
                        {"compile_planned_pv", this.compile_planned_pv},
                        {"compile_actual_minute", this.compile_actual_minute},
                        {"compile_actual_date", this.compile_actual_date},
                        {"compile_actual_ev", this.compile_actual_ev},
                         
                        {"test_planned_minute", this.test_planned_minute},
                        {"test_planned_date", this.test_planned_date},
                        {"test_planned_pv", this.test_planned_pv},
                        {"test_actual_minute", this.test_actual_minute},
                        {"test_actual_date", this.test_actual_date},
                        {"test_actual_ev", this.test_actual_ev},

                        {"post_planned_minute", this.post_planned_minute},
                        {"post_planned_date", this.post_planned_date},
                        {"post_planned_pv", this.post_planned_pv},
                        {"post_actual_minute", this.post_actual_minute},
                        {"post_actual_date", this.post_actual_date},
                        {"post_actual_ev", this.post_actual_ev},
                      
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
                        {"plan_planned_minute", this.plan_planned_minute},
                        {"plan_planned_date", this.plan_planned_date},
                        {"plan_planned_pv", this.plan_planned_pv},
                        {"plan_actual_minute", this.plan_actual_minute},
                        {"plan_actual_date", this.plan_actual_date},
                        {"plan_actual_ev", this.plan_actual_ev},

                        {"design_planned_minute", this.design_planned_minute},
                        {"design_planned_date", this.design_planned_date},
                        {"design_planned_pv", this.design_planned_pv},
                        {"design_actual_minute", this.design_actual_minute},
                        {"design_actual_date", this.design_actual_date},
                        {"design_actual_ev", this.design_actual_ev},

                        {"code_planned_minute", this.code_planned_minute},
                        {"code_planned_date", this.code_planned_date},
                        {"code_planned_pv", this.code_planned_pv},
                        {"code_actual_minute", this.code_actual_minute},
                        {"code_actual_date", this.code_actual_date},
                        {"code_actual_ev", this.code_actual_ev},

                        {"compile_planned_minute", this.compile_planned_minute},
                        {"compile_planned_date", this.compile_planned_date},
                        {"compile_planned_pv", this.compile_planned_pv},
                        {"compile_actual_minute", this.compile_actual_minute},
                        {"compile_actual_date", this.compile_actual_date},
                        {"compile_actual_ev", this.compile_actual_ev},
                         
                        {"test_planned_minute", this.test_planned_minute},
                        {"test_planned_date", this.test_planned_date},
                        {"test_planned_pv", this.test_planned_pv},
                        {"test_actual_minute", this.test_actual_minute},
                        {"test_actual_date", this.test_actual_date},
                        {"test_actual_ev", this.test_actual_ev},

                        {"post_planned_minute", this.post_planned_minute},
                        {"post_planned_date", this.post_planned_date},
                        {"post_planned_pv", this.post_planned_pv},
                        {"post_actual_minute", this.post_actual_minute},
                        {"post_actual_date", this.post_actual_date},
                        {"post_actual_ev", this.post_actual_ev},

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
        public List<TaskAndScheduleForm> ConvertToObject(DataTable dt)
        {
            List<TaskAndScheduleForm> result = new List<TaskAndScheduleForm>();
            foreach (DataRow dr in dt.Rows)
            {
                result.Add(new TaskAndScheduleForm(dr));
            }
            return result;
        }
        public List<TaskAndScheduleForm> Obj_Listele_All()
        {
            DataTable dt = DBConnector.select("Select * from task_and_schedule_form ");
            return ConvertToObject(dt);
        }

        public List<TaskAndScheduleForm> Obj_Listele_All_By_Owner(int id)
        {
            string sql = "Select * from task_and_schedule_form " + "Where user_id = " + id;
            DataTable dt = DBConnector.select(sql);
            return ConvertToObject(dt);
        }

        public List<TaskAndScheduleForm> Get_By_Id(int id)
        {
            string sql = "Select * from task_and_schedule_form " + "Where id = " + id;
            DataTable dt = DBConnector.select(sql);
            return ConvertToObject(dt);
        }

        public List<TaskAndScheduleForm> Get_By_GroupId(int gid)
        {
            string sql = "Select * from task_and_schedule_form " + "Where defect_group_id = " + gid;
            DataTable dt = DBConnector.select(sql);
            return ConvertToObject(dt);
        }

        public static int isExist(int uid, int eid)
        {
            int result = 0;
            DataTable dt = DBConnector.select("SELECT * FROM task_and_schedule_form WHERE finish = 1 AND user_id = " + uid + " AND experiment_no = " + eid);
            if (dt.Rows.Count > 0)
                result = Convert.ToInt32(dt.Rows[0]["id"].ToString());

            return result;
        }


        public static int getExperimentId(int uid, int eid)
        {
            DataTable dt = DBConnector.select("SELECT * FROM task_and_schedule_form WHERE user_id = " + uid + " AND experiment_no = " + eid);
            int id = Convert.ToInt32((dt.Rows[0]["id"].ToString()));
            return id;
        }

        public static void finishForm(int uid, int eno)
        {
            string query = "UPDATE task_and_schedule_form " +
                               " SET finish = 1 " +
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