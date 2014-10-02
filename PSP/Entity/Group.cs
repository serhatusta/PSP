using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using PSP.DB;


namespace PSP.Entity
{
    public class Group : IEntity<Group>
    {
        #region DBFields
        public string group_name { get; set; }
        public string note { get; set; }
        public string instructer { get; set; } 
        public int type { get; set; }
        public int user_count { get; set; }
        public string type_name { get; set; }
        #endregion

        public Group() : base() { }

        public Group(DataRow dataRow)
        {
            this.Prepare(dataRow);
        }

        public Group(int id)
        {
            this.Prepare(DBConnector.select(view + " WHERE id=" + id.ToString()).Rows[0]);
        }
        public override Group Get(int id)
        {
            return new Group(id);
        }

        protected override string tablename
        {
            get { return "groups"; }
        }
        protected override string view
        {
            get { return "SELECT * FROM " + this.tablename; }
        }

        protected override void Prepare(DataRow dr)
        {
            base.Prepare(dr);
            this.group_name = dr["group_name"].ToString();
            this.note = dr["note"].ToString();
            this.type = Convert.ToInt32(dr["type"].ToString());
            this.user_count = Convert.ToInt32(dr["user_count"].ToString());
            
            string tp = "";
            if (this.type == 1)
                tp = "University";
            else if (this.type == 2)
                tp = "Company";
            else if (this.type == 10)
                tp = "ADMIN";
            this.type_name = tp;

            this.instructer = new Group().getInstructerName(this.id);

            
        }

      
        protected override int Update()
        {
            return DBConnector.update(
                    new Dictionary<string, object>() {
                        {"group_name", this.group_name},
                        {"note", this.note},
                        {"type", this.type},
                    }, tablename,
                    new Dictionary<string, object>() {
                        {"id", this.id}
                    });
        }

        protected override int Add()
        {
            this.id = DBConnector.insert(
                    new Dictionary<string, object>() {
                        {"record_date", DateTime.Now},
                        {"status", 1},
                        {"group_name", this.group_name},
                        {"note", this.note},
                        {"type", this.type},
                        {"user_count", this.user_count},
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
        public List<Group> ConvertToObject(DataTable dt)
        {
            List<Group> result = new List<Group>();
            foreach (DataRow dr in dt.Rows)
            {
                result.Add(new Group(dr));
            }
            return result;
        }


        public List<Group> Obj_Listele_All()
        {
            string sql = "SELECT * FROM groups";
            DataTable dt = DBConnector.select(sql);
            return ConvertToObject(dt);
        }

        public List<Group> Obj_Listele_Group(int id)
        {
            string sql = "SELECT * FROM groups " + "WHERE group_id = " + id;
            DataTable dt = DBConnector.select(sql);
            return ConvertToObject(dt);
        }

        public int getInstructerId(int group_id) {
            int id = 0;

            DataTable dt = DBConnector.select("SELECT * FROM users WHERE group_id = " + group_id + " AND( type = 2 OR  type = 10)");
            id = Convert.ToInt32(dt.Rows[0]["id"]);

            return id;
        }

        public string getInstructerName(int group_id)
        {
            string name = "";

            DataTable dt = DBConnector.select("SELECT * FROM users WHERE group_id = " + group_id + " AND( type = 2 OR  type = 10)");

            try {
                name = dt.Rows[0]["name"].ToString();
            }catch(Exception eee){
                name = "";
            }

            return name;
        }

        public string getGroupname(int id) {
            DataTable dt = DBConnector.select("SELECT * FROM groups WHERE id = " + id);
            string name = (dt.Rows[0]["group_name"].ToString());
            return name;
        }

        #endregion
    }
}