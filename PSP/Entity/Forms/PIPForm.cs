using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using PSP.DB;


namespace PSP.Entity.Forms
{
    public class PIPForm : IEntity<PIPForm>
    {
        #region DBFields
        public string problem { get; set; }
        public string proposal { get; set; }
        public string other { get; set; }

        public int user_id { get; set; }
        public int experiment_no { get; set; }
  
        #endregion

        public PIPForm() : base() { }

        public PIPForm(DataRow dataRow)
        {
            this.Prepare(dataRow);
        }

        public PIPForm(int id)
        {
            this.Prepare(DBConnector.select(view + " WHERE id=" + id.ToString()).Rows[0]);
        }
        public override PIPForm Get(int id)
        {
            return new PIPForm(id);
        }

        protected override string tablename
        {
            get { return "pip_form"; }
        }
        protected override string view
        {
            get { return "SELECT * FROM " + this.tablename; }
        }

        protected override void Prepare(DataRow dr)
        {
            base.Prepare(dr);
            this.problem = dr["problem"].ToString();
            this.proposal = dr["proposal"].ToString();
            this.other = dr["other"].ToString();
            this.experiment_no = Convert.ToInt32(dr["experiment_no"]);
            this.user_id = Convert.ToInt32(dr["user_id"]);
            
        }


        protected override int Update()
        {
            return DBConnector.update(
                    new Dictionary<string, object>() {
                        {"problem", this.problem},
                        {"proposal", this.proposal},
                        {"other", this.other},
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
                        {"problem", this.problem},
                        {"proposal", this.proposal},
                        {"other", this.other},
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
        public List<PIPForm> ConvertToObject(DataTable dt)
        {
            List<PIPForm> result = new List<PIPForm>();
            foreach (DataRow dr in dt.Rows)
            {
                result.Add(new PIPForm(dr));
            }
            return result;
        }
        public List<PIPForm> Obj_Listele_All()
        {
            DataTable dt = DBConnector.select("Select * from pip_form ");
            return ConvertToObject(dt);
        }

        public List<PIPForm> Obj_Listele_All_By_Owner(int id)
        {
            string sql = "Select * from pip_form " + "Where user_id = " + id;
            DataTable dt = DBConnector.select(sql);
            return ConvertToObject(dt);
        }

        public List<PIPForm> Get_By_Id(int id)
        {
            string sql = "Select * from pip_form " + "Where id = " + id;
            DataTable dt = DBConnector.select(sql);
            return ConvertToObject(dt);
        }

        public List<PIPForm> Get_By_GroupId(int gid)
        {
            string sql = "Select * from pip_form " + "Where defect_group_id = " + gid;
            DataTable dt = DBConnector.select(sql);
            return ConvertToObject(dt);
        }

        public static int isExist(int uid, int eid)
        {
            int result = 0;
            DataTable dt = DBConnector.select("SELECT * FROM pip_form WHERE finish = 1 AND user_id = " + uid + " AND experiment_no = " + eid);
            if (dt.Rows.Count > 0)
                result = Convert.ToInt32(dt.Rows[0]["id"].ToString());

            return result;
        }

        public static int getExperimentId(int uid, int eid)
        {
            DataTable dt = DBConnector.select("SELECT * FROM pip_form WHERE user_id = " + uid + " AND experiment_no = " + eid);
            int id = Convert.ToInt32((dt.Rows[0]["id"].ToString()));
            return id;
        }



        public static void finishForm(int uid, int eno)
        {
            string query = "UPDATE pip_form " +
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