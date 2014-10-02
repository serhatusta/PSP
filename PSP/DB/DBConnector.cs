using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using MySql.Data.MySqlClient;
using System.Data.Common;

namespace PSP.DB
{
    public class DBConnector
    {
        public static string hostname = "localhost";
        public static string userid = "root";
        public static string password = "1234";
        public static string database = "psp";

        public static MySqlConnection connection;

        public static DBConnector CONNECTOR = new DBConnector();

        public static DBConnector getConnector()
        {
            return CONNECTOR;
        }

        private DBConnector()
        {
            try
            {
                string sqlConnectionString = "server=" + hostname + "; user id=" + userid + "; password=" + password + "; database=" + database + "; pooling=false;";

                connection = new MySqlConnection(sqlConnectionString);
                connection.Open();
            }
            catch (Exception ee) { }
        }

        public static void connect()
        {

        }

        public static DataTable select(String sql)
        {

            MySqlDataAdapter adaptor = new MySqlDataAdapter(sql, connection);
            DataTable tablo = new DataTable();
            adaptor.Fill(tablo);
            adaptor.Dispose();
            return tablo;
        }

        public static int insert(Dictionary<string, object> values, string tableName)
        {
            string fields = "";
            string into = "";
            foreach (KeyValuePair<string, object> param in values)
            {
                fields += param.Key + ",";
                into += "@" + param.Key + ",";
            }

            string query = "insert into " + tableName + " (" + fields.Substring(0, fields.Length - 1) + ")";
            query += " values (" + into.Substring(0, into.Length - 1) + ")";

            DbCommand cmd = new MySqlCommand(query, connection);
            cmd.CommandType = CommandType.Text;
            int value = 0;
            if (values != null && values.Count > 0)
            {
                foreach (KeyValuePair<string, object> param in values)
                {
                    cmd.Parameters.Add(new MySqlParameter("@" + param.Key, param.Value));
                }
            }

            try
            {
                cmd.ExecuteNonQuery();
                cmd.CommandText = "SELECT last_insert_id() from " + tableName;
                cmd.Parameters.Clear();
                object result = cmd.ExecuteScalar();
                if (result != null) value = int.Parse(result.ToString());
            }
            catch
            {
                //throw new ConnectionException(1, "Tabloya ekleme sırasında hata oluştu, lütfen tekrar deneyiniz", query);
            }
            finally
            {
                cmd.Dispose();
            }
            return value;
        }

        public static int updateST(string query)
        {
            DbCommand cmd = new MySqlCommand(query, connection);
            int result = 0;
            try
            {
                result = cmd.ExecuteNonQuery();
            }
            catch (Exception)
            {
                //throw new ConnectionException(1, "Tabloyu güncellerken hata oluştu, lütfen tekrar deneyiniz", query);
            }
            return result;
        }

        public static int update(Dictionary<string, object> values, string tableName, Dictionary<string, object> conditions)
        {
            string fields = "";
            string where = "";
            foreach (KeyValuePair<string, object> param in values)
            {
                fields += param.Key + "=@" + param.Key + ",";
            }
            foreach (KeyValuePair<string, object> param in conditions)
            {
                where += " AND " + param.Key + "=@" + param.Key;
            }

            string query = "update " + tableName + " set " + fields.Substring(0, fields.Length - 1);
            query += " WHERE 1=1" + where;


            DbCommand cmd = new MySqlCommand(query, connection);
            int result = 0;

            if (values != null && values.Count > 0)
            {
                foreach (KeyValuePair<string, object> param in values)
                {
                    cmd.Parameters.Add(new MySqlParameter("@" + param.Key, param.Value));
                }
                foreach (KeyValuePair<string, object> param in conditions)
                {
                    cmd.Parameters.Add(new MySqlParameter("@" + param.Key, param.Value));
                }
            }

            try
            {
                result = cmd.ExecuteNonQuery();
            }
            catch (Exception)
            {
                //throw new ConnectionException(1, "Tabloyu güncellerken hata oluştu, lütfen tekrar deneyiniz", query);
            }
            return result;
        }

        public static int delete(string tableName, Dictionary<string, object> conditions)
        {

            string where = "";
            foreach (KeyValuePair<string, object> param in conditions)
            {
                where += " AND " + param.Key + "=@" + param.Key;
            }

            string query = "delete from " + tableName;
            query += " WHERE 1=1" + where;


            DbCommand cmd = new MySqlCommand(query, connection);
            int result = 0;

            if (conditions != null && conditions.Count > 0)
            {
                foreach (KeyValuePair<string, object> param in conditions)
                {
                    cmd.Parameters.Add(new MySqlParameter("@" + param.Key, param.Value));
                }
            }

            try
            {
                result = cmd.ExecuteNonQuery();
            }
            catch (Exception)
            {
                //throw new ConnectionException(1, "Tabloyu güncellerken hata oluştu, lütfen tekrar deneyiniz", query);
            }
            return result;
        }
    }
}