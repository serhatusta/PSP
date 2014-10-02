using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using PSP.DB;

namespace PSP.Entity.Forms
{
    public class TestReport : IEntity<TestReport>
    {
        #region DBFields
        public int test_group_id { get; set; }
        public string test_number { get; set; }
        public string test_name { get; set; }
        public string objective { get; set; }
        public string conditions { get; set; }
        public string expected_results { get; set; }
        public string actual_results { get; set; }


        #endregion

        public TestReport() : base() { }

        public TestReport(DataRow dataRow)
        {
            this.Prepare(dataRow);
        }

        public TestReport(int id)
        {
            this.Prepare(DBConnector.select(view + " WHERE id=" + id.ToString()).Rows[0]);
        }
        public override TestReport Get(int id)
        {
            return new TestReport(id);
        }

        protected override string tablename
        {
            get { return "test_report"; }
        }
        protected override string view
        {
            get { return "SELECT * FROM " + this.tablename; }
        }

        protected override void Prepare(DataRow dr)
        {
            base.Prepare(dr);
            this.test_group_id = Convert.ToInt32(dr["test_group_id"].ToString());
            this.test_number = dr["test_number"].ToString();
            this.test_name = dr["test_name"].ToString();
            this.objective = dr["objective"].ToString();
            this.conditions = dr["conditions"].ToString();
            this.expected_results = dr["expected_results"].ToString();
            this.actual_results = dr["actual_results"].ToString();


        }


        protected override int Update()
        {
            return DBConnector.update(
                    new Dictionary<string, object>() {
                        {"test_group_id", this.test_group_id},
                        {"test_number", this.test_number},
                        {"test_name", this.test_name},
                        {"objective", this.objective},
                        {"conditions", this.conditions},
                        {"expected_results", this.expected_results},
                        {"actual_results", this.actual_results},
                     
                      
                    }, tablename,
                    new Dictionary<string, object>() {
                        {"id", this.id}
                    });
        }

        protected override int Add()
        {
            this.id = DBConnector.insert(
                    new Dictionary<string, object>() {
                        {"test_group_id", this.test_group_id},
                        {"test_number", this.test_number},
                        {"test_name", this.test_name},
                        {"objective", this.objective},
                        {"conditions", this.conditions},
                        {"expected_results", this.expected_results},
                        {"actual_results", this.actual_results},
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
        public List<TestReport> ConvertToObject(DataTable dt)
        {
            List<TestReport> result = new List<TestReport>();
            foreach (DataRow dr in dt.Rows)
            {
                result.Add(new TestReport(dr));
            }
            return result;
        }
        public List<TestReport> Obj_Listele_All()
        {
            DataTable dt = DBConnector.select("Select * from test_report ");
            return ConvertToObject(dt);
        }

        public List<TestReport> Obj_Listele_All_By_Owner(int id)
        {
            string sql = "Select * from test_report " + "Where user_id = " + id;
            DataTable dt = DBConnector.select(sql);
            return ConvertToObject(dt);
        }

        public List<TestReport> Get_By_Id(int id)
        {
            string sql = "Select * from test_report " + "Where id = " + id;
            DataTable dt = DBConnector.select(sql);
            return ConvertToObject(dt);
        }

        public List<TestReport> Get_By_GroupId(int gid)
        {
            string sql = "Select * from test_report " + "Where test_group_id = " + gid;
            DataTable dt = DBConnector.select(sql);
            return ConvertToObject(dt);
        }



        #endregion
    }
}