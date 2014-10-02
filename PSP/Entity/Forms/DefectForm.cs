using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using PSP.DB;

namespace PSP.Entity.Forms
{
    public class DefectForm : IEntity<DefectForm>
    {
        #region DBFields
        public int defect_group_id { get; set; }
        public string defect_type { get; set; }
        public string injected { get; set; }
        public string removed { get; set; }
        public string fix_time { get; set; }
        public string date { get; set; }
        public int fix_defect { get; set; }
        public string description { get; set; }

  
        #endregion

        public DefectForm() : base() { }

        public DefectForm(DataRow dataRow)
        {
            this.Prepare(dataRow);
        }

        public DefectForm(int id)
        {
            this.Prepare(DBConnector.select(view + " WHERE id=" + id.ToString()).Rows[0]);
        }
        public override DefectForm Get(int id)
        {
            return new DefectForm(id);
        }

        protected override string tablename
        {
            get { return "defect_form"; }
        }
        protected override string view
        {
            get { return "SELECT * FROM " + this.tablename; }
        }

        protected override void Prepare(DataRow dr)
        {
            base.Prepare(dr);
            this.defect_group_id = Convert.ToInt32(dr["defect_group_id"].ToString());
            this.defect_type = dr["defect_type"].ToString();
            this.injected = dr["injected"].ToString();
            this.removed = dr["removed"].ToString();
            this.fix_time = dr["fix_time"].ToString();
            this.date = dr["date"].ToString();
            this.description = dr["description"].ToString();
     
        }


        protected override int Update()
        {
            return DBConnector.update(
                    new Dictionary<string, object>() {
                        {"defect_group_id", this.defect_group_id},
                        {"defect_type", this.defect_type},
                        {"injected", this.injected},
                        {"removed", this.removed},
                        {"fix_time", this.fix_time},
                        {"date", this.fix_time},
                        {"description", this.description},
                     
                      
                    }, tablename,
                    new Dictionary<string, object>() {
                        {"id", this.id}
                    });
        }

        protected override int Add()
        {
            this.id = DBConnector.insert(
                    new Dictionary<string, object>() {
                        {"defect_group_id", this.defect_group_id},
                        {"defect_type", this.defect_type},
                        {"injected", this.injected},
                        {"removed", this.removed},
                        {"fix_time", this.fix_time},
                        {"date", this.date},
                        {"description", this.description},
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
        public List<DefectForm> ConvertToObject(DataTable dt)
        {
            List<DefectForm> result = new List<DefectForm>();
            foreach (DataRow dr in dt.Rows)
            {
                result.Add(new DefectForm(dr));
            }
            return result;
        }
        public List<DefectForm> Obj_Listele_All()
        {
            DataTable dt = DBConnector.select("Select * from defect_form ");
            return ConvertToObject(dt);
        }

        public List<DefectForm> Obj_Listele_All_By_Owner(int id)
        {
            string sql = "Select * from defect_form " + "Where user_id = " + id;
            DataTable dt = DBConnector.select(sql);
            return ConvertToObject(dt);
        }

        public List<DefectForm> Get_By_Id(int id)
        {
            string sql = "Select * from defect_form " + "Where id = " + id;
            DataTable dt = DBConnector.select(sql);
            return ConvertToObject(dt);
        }

        public List<DefectForm> Get_By_GroupId(int gid)
        {
            string sql = "Select * from defect_form " + "Where defect_group_id = " + gid;
            DataTable dt = DBConnector.select(sql);
            return ConvertToObject(dt);
        }



        #endregion
    }
}