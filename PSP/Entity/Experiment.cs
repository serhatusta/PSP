using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using PSP.DB;

namespace PSP.Entity
{
    public class Experiment : IEntity<Experiment>
    {
        #region DBFields
        public string owner { get; set; }
        public string username { get; set; }
        public int user_id { get; set; }
        public int group_id { get; set; }
        public int exp_1 { get; set; }
        public int exp_2 { get; set; }
        public int exp_3 { get; set; }
        public int exp_4 { get; set; }
        public int exp_5 { get; set; }
        public int exp_6 { get; set; }
        #endregion

        public Experiment() : base() { }

        public Experiment(DataRow dataRow)
        {
            this.Prepare(dataRow);
        }

        public Experiment(int id)
        {
            this.Prepare(DBConnector.select(view + " WHERE id=" + id.ToString()).Rows[0]);
        }
        public override Experiment Get(int id)
        {
            return new Experiment(id);
        }

        protected override string tablename
        {
            get { return "experiments"; }
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
            this.exp_1 = Convert.ToInt32(dr["exp_1"].ToString());
            this.exp_2 = Convert.ToInt32(dr["exp_2"].ToString());
            this.exp_3 = Convert.ToInt32(dr["exp_3"].ToString());
            this.exp_4 = Convert.ToInt32(dr["exp_4"].ToString());
            this.exp_5 = Convert.ToInt32(dr["exp_5"].ToString());
            this.exp_6 = Convert.ToInt32(dr["exp_6"].ToString());
            this.owner = new User().getUsername(this.user_id);
            this.username = new User().getUserusername(this.user_id);
            
        }


        protected override int Update()
        {
            return DBConnector.update(
                    new Dictionary<string, object>() {
                        {"user_id", this.user_id},
                        {"group_id", this.group_id},
                        {"exp_1", this.exp_1},
                        {"exp_2", this.exp_2},
                        {"exp_3", this.exp_3},
                        {"exp_4", this.exp_4},
                        {"exp_5", this.exp_5},
                        {"exp_6", this.exp_6},
                      
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
                        {"exp_1", this.exp_1},
                        {"exp_2", this.exp_2},
                        {"exp_3", this.exp_3},
                        {"exp_4", this.exp_4},
                        {"exp_5", this.exp_5},
                        {"exp_6", this.exp_6},
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
        public List<Experiment> ConvertToObject(DataTable dt)
        {
            List<Experiment> result = new List<Experiment>();
            foreach (DataRow dr in dt.Rows)
            {
                result.Add(new Experiment(dr));
            }
            return result;
        }
        public List<Experiment> Obj_Listele_All()
        {
            DataTable dt = DBConnector.select("Select * from experiments ");
            return ConvertToObject(dt);
        }
        public List<Experiment> Obj_Listele_All_By_Group(int id)
        {
            string sql = "Select * from experiments " + "Where group_id = " + id;
            DataTable dt = DBConnector.select(sql);
            return ConvertToObject(dt);
        }
        public List<Experiment> Obj_Listele_All_By_Owner(int id)
        {
            string sql = "Select * from experiments " + "Where user_id = " + id;
            DataTable dt = DBConnector.select(sql);
            return ConvertToObject(dt);
        }

        public static void gradeExperiment(int uid, int eno, string form, string grade)
        {
            string query = "UPDATE grades " +
                               " SET " + form +  " = " + grade + 
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