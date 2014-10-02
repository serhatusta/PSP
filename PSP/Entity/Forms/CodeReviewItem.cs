using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using PSP.DB;


namespace PSP.Entity.Forms
{
    public class CodeReviewItem : IEntity<CodeReviewItem>
    {
        #region DBFields
        public int code_review_id { get; set; }
        public string action { get; set; }
        public string note { get; set; }
        public string duedate { get; set; }
        public string program { get; set; }
        public string check { get; set; }



        #endregion

        public CodeReviewItem() : base() { }

        public CodeReviewItem(DataRow dataRow)
        {
            this.Prepare(dataRow);
        }

        public CodeReviewItem(int id)
        {
            this.Prepare(DBConnector.select(view + " WHERE id=" + id.ToString()).Rows[0]);
        }
        public override CodeReviewItem Get(int id)
        {
            return new CodeReviewItem(id);
        }

        protected override string tablename
        {
            get { return "code_review_item"; }
        }
        protected override string view
        {
            get { return "SELECT * FROM " + this.tablename; }
        }

        protected override void Prepare(DataRow dr)
        {
            base.Prepare(dr);
            this.code_review_id = Convert.ToInt32(dr["code_review_id"].ToString());
            this.action = dr["action"].ToString();
            this.note = dr["note"].ToString();
            this.duedate = dr["duedate"].ToString();
            this.program = dr["program"].ToString();
            this.check = dr["checked"].ToString();
           
        }


        protected override int Update()
        {
            return DBConnector.update(
                    new Dictionary<string, object>() {
                        {"code_review_id", this.code_review_id},
                        {"action", this.action},
                        {"note", this.note},
                        {"duedate", this.duedate},
                        {"program", this.program},
                        {"checked", this.check},
                     
                      
                    }, tablename,
                    new Dictionary<string, object>() {
                        {"id", this.id}
                    });
        }

        protected override int Add()
        {
            this.id = DBConnector.insert(
                    new Dictionary<string, object>() {
                       {"code_review_id", this.code_review_id},
                        {"action", this.action},
                        {"note", this.note},
                        {"duedate", this.duedate},
                        {"checked", this.check},
                        {"program", this.program},
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
        public List<CodeReviewItem> ConvertToObject(DataTable dt)
        {
            List<CodeReviewItem> result = new List<CodeReviewItem>();
            foreach (DataRow dr in dt.Rows)
            {
                result.Add(new CodeReviewItem(dr));
            }
            return result;
        }
        public List<CodeReviewItem> Obj_Listele_All()
        {
            DataTable dt = DBConnector.select("Select * from code_review_item ");
            return ConvertToObject(dt);
        }

        public List<CodeReviewItem> Obj_Listele_All_By_Owner(int id)
        {
            string sql = "Select * from code_review_item " + "Where user_id = " + id;
            DataTable dt = DBConnector.select(sql);
            return ConvertToObject(dt);
        }

        public List<CodeReviewItem> Get_By_Id(int id)
        {
            string sql = "Select * from code_review_item " + "Where id = " + id;
            DataTable dt = DBConnector.select(sql);
            return ConvertToObject(dt);
        }

        public List<CodeReviewItem> Get_By_GroupId(int gid)
        {
            string sql = "Select * from code_review_item " + "Where code_review_id = " + gid;
            DataTable dt = DBConnector.select(sql);
            return ConvertToObject(dt);
        }



        #endregion
    }
}