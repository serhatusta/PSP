using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using PSP.DB;

namespace PSP.Entity
{
    public class User : IEntity<User>
    {
        #region DBFields
        public string username { get; set; }
        public string password { get; set; }
        public string name { get; set; }
        public string company { get; set; }
        public string email { get; set; }
        public string group_name { get; set; }
        public string programming_language { get; set; }
        public DateTime last_login { get; set; }        
        public int type { get; set; }
        public int group_id { get; set; }
        #endregion

        public User() : base() { }

        public User(DataRow dataRow)
        {
            this.Prepare(dataRow);
        }

        public User(int id)
        {
            this.Prepare(DBConnector.select(view + " WHERE id=" + id.ToString()).Rows[0]);
        }
        public override User Get(int id)
        {
            return new User(id);
        }

        protected override string tablename
        {
            get { return "users"; }
        }
        protected override string view
        {
            get { return "SELECT * FROM " + this.tablename; }
        }

        protected override void Prepare(DataRow dr)
        {
           
            base.Prepare(dr);
            this.username = dr["username"].ToString();
            this.password = dr["password"].ToString();
            this.name = dr["name"].ToString();
            this.company = dr["company"].ToString();
            this.programming_language = dr["programming_language"].ToString();
            this.email = dr["email"].ToString();
            this.last_login = Convert.ToDateTime(dr["last_login"].ToString());
            this.group_id = Convert.ToInt32(dr["group_id"].ToString());
            this.type = Convert.ToInt32(dr["type"].ToString());
            this.group_name = new Group().getGroupname(group_id);
            
        }


        protected override int Update()
        {
            return DBConnector.update(
                    new Dictionary<string, object>() {
                        {"username", this.username},
                        {"password", this.password},
                        {"name", this.name},
                        {"company", this.company},
                        {"group_id", this.group_id},
                        {"type", this.type},
                        {"last_login", this.last_login},
                        {"programming_language", this.programming_language},
                        {"email", this.email},
                    }, tablename,
                    new Dictionary<string, object>() {
                        {"id", this.id}
                    });
        }

        protected override int Add()
        {
            this.id = DBConnector.insert(
                    new Dictionary<string, object>() {
                        {"username", this.username},
                        {"password", this.password},
                        {"name", this.name},
                        {"company", this.company},
                        {"group_id", this.group_id},
                        {"type", this.type},
                        {"last_login", this.last_login},
                        {"programming_language", this.programming_language},
                        {"email", this.email},
                        {"status", 1},
                        {"record_date", DateTime.Now},
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
        public List<User> ConvertToObject(DataTable dt)
        {
            List<User> result = new List<User>();
            foreach (DataRow dr in dt.Rows)
            {
                result.Add(new User(dr));
            }
            return result;
        }
        public List<User> Obj_Listele_All()
        {
            DataTable dt = DBConnector.select("Select * from users ");
            return ConvertToObject(dt);
        }
        public List<User> Obj_Listele_Instrcter()
        {
            DataTable dt = DBConnector.select("Select * from users WHERE type=2");
            return ConvertToObject(dt);
        }
        public List<User> Obj_Listele_User()
        {
            DataTable dt = DBConnector.select("Select * from users WHERE type=1");
            return ConvertToObject(dt);
        }

        public List<User> Obj_Listele_User_By_Group(int id)
        {
            string sql = "Select * from users " + "Where type=1 And group_id = " + id;
            DataTable dt = DBConnector.select(sql);
            return ConvertToObject(dt);
        }

        public string getUsername(int id)
        {
            DataTable dt = DBConnector.select("SELECT * FROM users WHERE id = " + id);
            string name = (dt.Rows[0]["name"].ToString());
            return name;
        }
        public string getUserusername(int id)
        {
            DataTable dt = DBConnector.select("SELECT * FROM users WHERE id = " + id);
            string name = (dt.Rows[0]["username"].ToString());
            return name;
        }

        #endregion
    }

}