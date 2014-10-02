using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using PSP.DB;

namespace PSP.Entity.Forms
{
    public class TimeRecordingForm  : IEntity<TimeRecordingForm>
    {
        #region DBFields
        public string owner { get; set; }
        public string plan_time { get; set; }
        public string design_time { get; set; }
        public string code_time { get; set; }
        public string compile_time { get; set; }
        public string test_time { get; set; }
        public string post_time { get; set; }

        public string plan_comment { get; set; }
        public string design_comment { get; set; }
        public string code_comment { get; set; }
        public string compile_comment { get; set; }
        public string test_comment { get; set; }
        public string post_comment { get; set; }

        public int user_id { get; set; }
        public int experiment_no { get; set; }


        public string plan_stime { get; set; }
        public string plan_ftime { get; set; }
        public string plan_inter { get; set; }
        public string plan_delta { get; set; }

        public string design_stime { get; set; }
        public string design_ftime { get; set; }
        public string design_inter { get; set; }
        public string design_delta { get; set; }

        public string code_stime { get; set; }
        public string code_ftime { get; set; }
        public string code_inter { get; set; }
        public string code_delta { get; set; }

        public string compile_stime { get; set; }
        public string compile_ftime { get; set; }
        public string compile_inter { get; set; }
        public string compile_delta { get; set; }

        public string test_stime { get; set; }
        public string test_ftime { get; set; }
        public string test_inter { get; set; }
        public string test_delta { get; set; }

        public string post_stime { get; set; }
        public string post_ftime { get; set; }
        public string post_inter { get; set; }
        public string post_delta { get; set; }




        #endregion

        public TimeRecordingForm() : base() { }

        public TimeRecordingForm(DataRow dataRow)
        {
            this.Prepare(dataRow);
        }

        public TimeRecordingForm(int id)
        {
            this.Prepare(DBConnector.select(view + " WHERE id=" + id.ToString()).Rows[0]);
        }
        public override TimeRecordingForm Get(int id)
        {
            return new TimeRecordingForm(id);
        }

        protected override string tablename
        {
            get { return "time_recording_form"; }
        }
        protected override string view
        {
            get { return "SELECT * FROM " + this.tablename; }
        }

        protected override void Prepare(DataRow dr)
        {
            base.Prepare(dr);
            this.plan_time = dr["plan_time"].ToString();
            this.design_time = dr["design_time"].ToString();
            this.code_time = dr["code_time"].ToString();
            this.compile_time = dr["compile_time"].ToString();
            this.post_time = dr["post_time"].ToString();
            this.test_time = dr["test_time"].ToString();

            this.plan_comment = dr["plan_comment"].ToString();
            this.design_comment = dr["design_comment"].ToString();
            this.code_comment = dr["code_comment"].ToString();
            this.compile_comment = dr["compile_comment"].ToString();
            this.post_comment = dr["post_comment"].ToString();
            this.test_comment = dr["test_comment"].ToString();

            this.experiment_no = Convert.ToInt32(dr["experiment_no"]);
            this.user_id = Convert.ToInt32(dr["user_id"]);

            this.plan_stime = dr["plan_stime"].ToString();
            this.plan_ftime = dr["plan_ftime"].ToString();
            this.plan_inter = dr["plan_inter"].ToString();
            this.plan_delta = dr["plan_delta"].ToString();

            this.design_stime = dr["design_stime"].ToString();
            this.design_ftime = dr["design_ftime"].ToString();
            this.design_inter = dr["design_inter"].ToString();
            this.design_delta = dr["design_delta"].ToString();

            this.code_stime = dr["code_stime"].ToString();
            this.code_ftime = dr["code_ftime"].ToString();
            this.code_inter = dr["code_inter"].ToString();
            this.code_delta = dr["code_delta"].ToString();

            this.compile_stime = dr["compile_stime"].ToString();
            this.compile_ftime = dr["compile_ftime"].ToString();
            this.compile_inter = dr["compile_inter"].ToString();
            this.compile_delta = dr["compile_delta"].ToString();

            this.test_stime = dr["test_stime"].ToString();
            this.test_ftime = dr["test_ftime"].ToString();
            this.test_inter = dr["test_inter"].ToString();
            this.test_delta = dr["test_delta"].ToString();

            this.post_stime = dr["post_stime"].ToString();
            this.post_ftime = dr["post_ftime"].ToString();
            this.post_inter = dr["post_inter"].ToString();
            this.post_delta = dr["post_delta"].ToString();
        }


        protected override int Update()
        {
            return DBConnector.update(
                    new Dictionary<string, object>() {
                        {"test_time", this.test_time},
                        {"post_time", this.post_time},
                        {"compile_time", this.compile_time},
                        {"code_time", this.code_time},
                        {"design_time", this.design_time},
                        {"plan_time", this.plan_time},
                        {"test_comment", this.test_comment},
                        {"post_comment", this.post_comment},
                        {"compile_comment", this.compile_comment},
                        {"code_comment", this.code_comment},
                        {"design_comment", this.design_comment},
                        {"plan_comment", this.plan_comment},
                        {"experiment_no", this.experiment_no},
                        {"user_id", this.user_id},

                        {"plan_stime", this.plan_stime},
                        {"plan_ftime", this.plan_ftime},
                        {"plan_inter", this.plan_inter},
                        {"plan_delta", this.plan_delta},

                        {"design_stime", this.design_stime},
                        {"design_ftime", this.design_ftime},
                        {"design_inter", this.design_inter},
                        {"design_delta", this.design_delta},

                        {"code_stime", this.code_stime},
                        {"code_ftime", this.code_ftime},
                        {"code_inter", this.code_inter},
                        {"code_delta", this.code_delta},

                        {"compile_stime", this.compile_stime},
                        {"compile_ftime", this.compile_ftime},
                        {"compile_inter", this.compile_inter},
                        {"compile_delta", this.compile_delta},

                        {"test_stime", this.test_stime},
                        {"test_ftime", this.test_ftime},
                        {"test_inter", this.test_inter},
                        {"test_delta", this.test_delta},

                        {"post_stime", this.post_stime},
                        {"post_ftime", this.post_ftime},
                        {"post_inter", this.post_inter},
                        {"post_delta", this.post_delta},


                    }, tablename,
                    new Dictionary<string, object>() {
                        {"id", this.id}
                    });
        }

        protected override int Add()
        {
            this.id = DBConnector.insert(
                    new Dictionary<string, object>() {
                        {"test_time", this.test_time},
                        {"post_time", this.post_time},
                        {"compile_time", this.compile_time},
                        {"code_time", this.code_time},
                        {"design_time", this.design_time},
                        {"plan_time", this.plan_time},
                        {"test_comment", this.test_comment},
                        {"post_comment", this.post_comment},
                        {"compile_comment", this.compile_comment},
                        {"code_comment", this.code_comment},
                        {"design_comment", this.design_comment},
                        {"experiment_no", this.experiment_no},
                        {"user_id", this.user_id},
                        {"plan_comment", this.plan_comment},
                        {"plan_stime", this.plan_stime},
                        {"plan_ftime", this.plan_ftime},
                        {"plan_inter", this.plan_inter},
                        {"plan_delta", this.plan_delta},

                        {"design_stime", this.design_stime},
                        {"design_ftime", this.design_ftime},
                        {"design_inter", this.design_inter},
                        {"design_delta", this.design_delta},

                        {"code_stime", this.code_stime},
                        {"code_ftime", this.code_ftime},
                        {"code_inter", this.code_inter},
                        {"code_delta", this.code_delta},

                        {"compile_stime", this.compile_stime},
                        {"compile_ftime", this.compile_ftime},
                        {"compile_inter", this.compile_inter},
                        {"compile_delta", this.compile_delta},

                        {"test_stime", this.test_stime},
                        {"test_ftime", this.test_ftime},
                        {"test_inter", this.test_inter},
                        {"test_delta", this.test_delta},

                        {"post_stime", this.post_stime},
                        {"post_ftime", this.post_ftime},
                        {"post_inter", this.post_inter},
                        {"post_delta", this.post_delta},
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
        public List<TimeRecordingForm> ConvertToObject(DataTable dt)
        {
            List<TimeRecordingForm> result = new List<TimeRecordingForm>();
            foreach (DataRow dr in dt.Rows)
            {
                result.Add(new TimeRecordingForm(dr));
            }
            return result;
        }
        public List<TimeRecordingForm> Obj_Listele_All()
        {
            DataTable dt = DBConnector.select("Select * from time_recording_form ");
            return ConvertToObject(dt);
        }

        public List<TimeRecordingForm> Obj_Listele_All_By_Owner(int id)
        {
            string sql = "Select * from time_recording_form " + "Where user_id = " + id;
            DataTable dt = DBConnector.select(sql);
            return ConvertToObject(dt);
        }

        public List<TimeRecordingForm> Get_By_Id(int id)
        {
            string sql = "Select * from time_recording_form " + "Where id = " + id;
            DataTable dt = DBConnector.select(sql);
            return ConvertToObject(dt);
        }

        public static int getExperimentId(int uid, int eid)
        {
            DataTable dt = DBConnector.select("SELECT * FROM time_recording_form WHERE user_id = " + uid + " AND experiment_no = " + eid);
            int id = Convert.ToInt32((dt.Rows[0]["id"].ToString()));
            return id;
        }

        public static int isExist(int uid, int eid) {
            int result = 0;
            DataTable dt = DBConnector.select("SELECT * FROM time_recording_form WHERE finish = 1 AND user_id = " + uid + " AND experiment_no = " + eid);
            if (dt.Rows.Count > 0)
                result = Convert.ToInt32(dt.Rows[0]["id"].ToString());

            return result;
        }

        public static void finishForm(int uid, int eno) {
            string query = "UPDATE time_recording_form " +  
                               " SET finish = 1 " +
                               " WHERE user_id = " + uid + " AND experiment_no = " + eno + " AND id > 0 "; ;
            try {
                DBConnector.updateST(query);
            }catch(Exception ee){
                
            }
        }

        #endregion
    }
}