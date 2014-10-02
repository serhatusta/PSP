using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using PSP.DB;


namespace PSP.Entity.Forms
{
    public class DesignReview : IEntity<DesignReview>
    {
        #region DBFields
        public string comment { get; set; }
        public int user_id { get; set; }
        public int experiment_no { get; set; }

        #endregion

        public DesignReview() : base() { }

        public DesignReview(DataRow dataRow)
        {
            this.Prepare(dataRow);
        }

        public DesignReview(int id)
        {
            this.Prepare(DBConnector.select(view + " WHERE id=" + id.ToString()).Rows[0]);
        }
        public override DesignReview Get(int id)
        {
            return new DesignReview(id);
        }

        protected override string tablename
        {
            get { return "design_review"; }
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
        public List<DesignReview> ConvertToObject(DataTable dt)
        {
            List<DesignReview> result = new List<DesignReview>();
            foreach (DataRow dr in dt.Rows)
            {
                result.Add(new DesignReview(dr));
            }
            return result;
        }
        public List<DesignReview> Obj_Listele_All()
        {
            DataTable dt = DBConnector.select("Select * from design_review ");
            return ConvertToObject(dt);
        }

        public List<DesignReview> Obj_Listele_All_By_Owner(int id)
        {
            string sql = "Select * from design_review " + "Where user_id = " + id;
            DataTable dt = DBConnector.select(sql);
            return ConvertToObject(dt);
        }

        public List<DesignReview> Get_By_Id(int id)
        {
            string sql = "Select * from design_review " + "Where id = " + id;
            DataTable dt = DBConnector.select(sql);
            return ConvertToObject(dt);
        }

        public bool isGroupExist(int user, int experiment)
        {
            bool result = false;
            string sql = "Select * from design_review " + "Where user_id = " + user + " AND experiment_no = " + experiment;
            DataTable dt = DBConnector.select(sql);

            if (dt.Rows.Count > 0)
                result = true;

            return result;

        }

        public int getGroupId(int user, int exp)
        {
            string sql = "Select * from design_review " + "Where user_id = " + user + " AND experiment_no = " + exp;
            DataTable dt = DBConnector.select(sql);

            int gno = 0;

            if (dt.Rows.Count > 0)
                gno = Convert.ToInt32(dt.Rows[0]["id"]);

            return gno;
        }

        public static int isExist(int uid, int eid)
        {
            int result = 0;
            DataTable dt = DBConnector.select("SELECT * FROM design_review WHERE finish = 1 AND user_id = " + uid + " AND experiment_no = " + eid);
            if (dt.Rows.Count > 0)
                result = Convert.ToInt32(dt.Rows[0]["id"].ToString());

            return result;
        }

        public static int getExperimentId(int uid, int eid)
        {
            DataTable dt = DBConnector.select("SELECT * FROM design_review WHERE user_id = " + uid + " AND experiment_no = " + eid);
            int id = Convert.ToInt32((dt.Rows[0]["id"].ToString()));
            return id;
        }


        public static void finishForm(int uid, int eno)
        {
            string query = "UPDATE design_review " +
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