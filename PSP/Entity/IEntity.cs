using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using PSP.DB;

namespace PSP.Entity
{
    public abstract class IEntity<T>
    {
        #region DBFields
        public int id { get; set; }
        public int status { get; set; }
        public DateTime record_date { get; set; }
        #endregion

        protected abstract string tablename { get; }
        protected abstract string view { get; }

        public IEntity()
        {
            this.id = 0;
            record_date = DateTime.Now;
            status = 1;
        }

        public static double selectValue(string sql)
        {
            DataTable dt = DBConnector.select(sql);
            try
            {
                return Convert.ToDouble(dt.Rows[0][0].ToString());
            }
            catch (Exception ee)
            {
                return 0;
            }
        }

        public abstract T Get(int id);

        protected virtual void Prepare(DataRow dr)
        {
            this.id = Convert.ToInt32(dr["id"]);
            record_date = Convert.ToDateTime(dr["record_date"]);
            status = Convert.ToInt32(dr["status"]);
        }

        public int Save()
        {
            if (this.id <= 0) Add();
            else Update();

            return this.id;
        }

        protected abstract int Update();

        protected abstract int Add();

        public abstract int Delete();

        public abstract int Close();

    }
}