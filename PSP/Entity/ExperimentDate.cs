using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using PSP.DB;


namespace PSP.Entity
{
    public class ExperimentDate  : IEntity<ExperimentDate>
    {
        #region DBFields
        public string note { get; set; }
        public DateTime start_date { get; set; }
        public DateTime finish_date { get; set; }
        public int experiment_no { get; set; }
        public int group_id { get; set; }
        #endregion

        public ExperimentDate() : base() { }

        public ExperimentDate(DataRow dataRow)
        {
            this.Prepare(dataRow);
        }

        public ExperimentDate(int id)
        {
            this.Prepare(DBConnector.select(view + " WHERE id=" + id.ToString()).Rows[0]);
        }


        public override ExperimentDate Get(int id)
        {
            return new ExperimentDate(id);
        }

        protected override string tablename
        {
            get { return "experiment_dates"; }
        }
        protected override string view
        {
            get { return "SELECT * FROM " + this.tablename; }
        }

        protected override void Prepare(DataRow dr)
        {
            base.Prepare(dr);
            this.note = dr["note"].ToString();
            this.group_id = Convert.ToInt32(dr["group_id"].ToString());
            this.experiment_no = Convert.ToInt32(dr["experiment_no"].ToString());
            this.start_date = Convert.ToDateTime(dr["start_date"].ToString());
            this.finish_date = Convert.ToDateTime(dr["finish_date"].ToString());
          
            
        }


        protected override int Update()
        {
            return DBConnector.update(
                    new Dictionary<string, object>() {
                        {"experiment_no", this.experiment_no},
                        {"group_id", this.group_id},
                        {"note", this.note},
                        {"start_date", this.start_date},
                        {"finish_date", this.finish_date},
                      
                    }, tablename,
                    new Dictionary<string, object>() {
                        {"id", this.id}
                    });
        }

        protected override int Add()
        {
            this.id = DBConnector.insert(
                    new Dictionary<string, object>() {
                        {"experiment_no", this.experiment_no},
                        {"group_id", this.group_id},
                        {"note", this.note},
                        {"start_date", this.start_date},
                        {"finish_date", this.finish_date},
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
        public List<ExperimentDate> ConvertToObject(DataTable dt)
        {
            List<ExperimentDate> result = new List<ExperimentDate>();
            foreach (DataRow dr in dt.Rows)
            {
                result.Add(new ExperimentDate(dr));
            }
            return result;
        }
        public List<ExperimentDate> Obj_Listele_All()
        {
            DataTable dt = DBConnector.select("Select * from experiment_dates ");
            return ConvertToObject(dt);
        }
        public List<ExperimentDate> Obj_Listele_All_By_Group(int id)
        {
            string sql = "Select * from experiment_dates " + "Where group_id = " + id;
            DataTable dt = DBConnector.select(sql);
            return ConvertToObject(dt);
        }
        public List<ExperimentDate> Obj_Listele_All_By_Owner(int id)
        {
            string sql = "Select * from experiment_dates " + "Where user_id = " + id;
            DataTable dt = DBConnector.select(sql);
            return ConvertToObject(dt);
        }
        public List<ExperimentDate> Obj_Listele_By_Group_Exp(int gid, int eno)
        {
            string sql = "Select * from experiment_dates " + "Where group_id = " + gid + " AND experiment_no = " + eno;
            DataTable dt = DBConnector.select(sql);
            return ConvertToObject(dt);
        }

        #endregion
    }
}