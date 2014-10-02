using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using PSP.DB;


namespace PSP.Entity.Forms
{
    public class DefectGroup : IEntity<DefectGroup>
    {
        #region DBFields
        public string comment { get; set; }
        public int user_id { get; set; }
        public int experiment_no { get; set; }

        #endregion

        public DefectGroup() : base() { }

        public DefectGroup(DataRow dataRow)
        {
            this.Prepare(dataRow);
        }

        public DefectGroup(int id)
        {
            this.Prepare(DBConnector.select(view + " WHERE id=" + id.ToString()).Rows[0]);
        }
        public override DefectGroup Get(int id)
        {
            return new DefectGroup(id);
        }

        protected override string tablename
        {
            get { return "defect_group"; }
        }
        protected override string view
        {
            get { return "SELECT * FROM " + this.tablename; }
        }

        protected override void Prepare(DataRow dr)
        {
            base.Prepare(dr);
            this.comment = dr["comment"].ToString();
            this.experiment_no = Convert.ToInt32(dr["experiment_no"]);
            this.user_id = Convert.ToInt32(dr["user_id"]);
        }


        protected override int Update()
        {
            return DBConnector.update(
                    new Dictionary<string, object>() {
                        {"comment", this.comment},
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
                        {"comment", this.comment},
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
        public List<DefectGroup> ConvertToObject(DataTable dt)
        {
            List<DefectGroup> result = new List<DefectGroup>();
            foreach (DataRow dr in dt.Rows)
            {
                result.Add(new DefectGroup(dr));
            }
            return result;
        }
        public List<DefectGroup> Obj_Listele_All()
        {
            DataTable dt = DBConnector.select("Select * from defect_group ");
            return ConvertToObject(dt);
        }

        public List<DefectGroup> Obj_Listele_All_By_Owner(int id)
        {
            string sql = "Select * from defect_group " + "Where user_id = " + id;
            DataTable dt = DBConnector.select(sql);
            return ConvertToObject(dt);
        }

        public List<DefectGroup> Get_By_Id(int id)
        {
            string sql = "Select * from defect_group " + "Where id = " + id;
            DataTable dt = DBConnector.select(sql);
            return ConvertToObject(dt);
        }

        public bool isGroupExist(int user, int experiment) {
            bool result = false;
            string sql = "Select * from defect_group " + "Where user_id = " + user + " AND experiment_no = " + experiment;
            DataTable dt = DBConnector.select(sql);

            if(dt.Rows.Count > 0)
                result = true;

            return result;

        }

        public int getGroupId(int user, int exp)
        {
            string sql = "Select * from defect_group " + "Where user_id = " + user + " AND experiment_no = " + exp;
            DataTable dt = DBConnector.select(sql);

            int gno = 0;

            if (dt.Rows.Count > 0)
                gno = Convert.ToInt32(dt.Rows[0]["id"]);

            return gno;
        }

        public static int getExperimentId(int uid, int eid)
        {
            DataTable dt = DBConnector.select("SELECT * FROM defect_group WHERE user_id = " + uid + " AND experiment_no = " + eid);
            int id = Convert.ToInt32((dt.Rows[0]["id"].ToString()));
            return id;
        }


        public static int isExist(int uid, int eid)
        {
            int result = 0;
            DataTable dt = DBConnector.select("SELECT * FROM defect_group WHERE finish = 1 AND user_id = " + uid + " AND experiment_no = " + eid);
            if (dt.Rows.Count > 0)
                result = Convert.ToInt32(dt.Rows[0]["id"].ToString());

            return result;
        }



        public static void finishForm(int uid, int eno)
        {
            string query = "UPDATE defect_group " +
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