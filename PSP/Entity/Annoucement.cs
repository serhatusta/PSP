using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using PSP.DB;
namespace PSP.Entity
{
    public class Annoucement : IEntity<Annoucement>
    {
        #region DBFields
        public string note { get; set; }
        public string owner { get; set; }
        public DateTime deadline { get; set; }
        public int user_id { get; set; }
        public int level { get; set; }
        public string level_name { get; set; }
        public int group_id { get; set; }
        #endregion

        public Annoucement() : base() { }

        public Annoucement(DataRow dataRow)
        {
            this.Prepare(dataRow);
        }

        public Annoucement(int id)
        {
            this.Prepare(DBConnector.select(view + " WHERE id=" + id.ToString()).Rows[0]);
        }
        public override Annoucement Get(int id)
        {
            return new Annoucement(id);
        }

        protected override string tablename
        {
            get { return "annoucements"; }
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
            this.deadline = Convert.ToDateTime(dr["deadline"].ToString());
            this.user_id = Convert.ToInt32(dr["user_id"].ToString());
            this.level = Convert.ToInt32(dr["level"].ToString());
            string lname = "";
            if (this.level == 1)
                lname = "Trivial";
            else if (this.level == 2)
                lname = "Recall";
            else if (this.level == 3)
                lname = "Annoucement";
            else if (this.level == 4)
                lname = "Elucidating";
            else if (this.level == 5)
                lname = "Important";
            this.level_name = lname;
            this.owner = new User(this.user_id).name;
            
        }


        protected override int Update()
        {
            return DBConnector.update(
                    new Dictionary<string, object>() {
                        {"level", this.level},
                        {"group_id", this.group_id},
                        {"note", this.note},
                        {"deadline", this.deadline},
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
                        {"level", this.level},
                        {"group_id", this.group_id},
                        {"note", this.note},
                        {"deadline", this.deadline},
                        {"user_id", this.user_id},
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
        public List<Annoucement> ConvertToObject(DataTable dt)
        {
            List<Annoucement> result = new List<Annoucement>();
            foreach (DataRow dr in dt.Rows)
            {
                result.Add(new Annoucement(dr));
            }
            return result;
        }
        public List<Annoucement> Obj_Listele_All()
        {
            DataTable dt = DBConnector.select("Select * from annoucements ");
            return ConvertToObject(dt);
        }
        public List<Annoucement> Obj_Listele_All_By_Group(int id)
        {
            string sql = "Select * from annoucements " + "Where group_id = " + id;
            DataTable dt = DBConnector.select(sql);
            return ConvertToObject(dt);
        }
        public List<Annoucement> Obj_Listele_All_By_Owner(int id)
        {
            string sql = "Select * from annoucements " + "Where user_id = " + id;
            DataTable dt = DBConnector.select(sql);
            return ConvertToObject(dt);
        }

        #endregion
    }
}