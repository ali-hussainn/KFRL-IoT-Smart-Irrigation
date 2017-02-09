using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Data; // sql
using System.Configuration; // system config from web
using System.Data.SqlClient;
using System.Collections;


namespace SmartIrrigationBusinessLayer
{
    public class DBClass
    {
        public bool IsOutput
        { get; set; }
        public string OutputParamName
        { get; set; }

        public int insertData(string spname, ArrayList param)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["SIAAPConnectionString"].ToString();
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = spname;
            cmd.Connection = conn;
            for (int i = 0; i < param.Count; i++)
            {
                cmd.Parameters.Add(param[i]);
            }
            if (IsOutput)
            {
                int result;
               result = cmd.ExecuteNonQuery();
               // int result;
               //int.TryParse(cmd.Parameters[OutputParamName].Value.ToString(), out result);
                return result;
            }
            else
            {
                int result = cmd.ExecuteNonQuery();
                return result;
            }


        }

        public DataSet getData(string spname)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["SIAAPConnectionString"].ToString();
            if (conn.State == ConnectionState.Closed)
                conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = spname;
            cmd.Connection = conn;
            try
            {
                SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                DataSet ds = new DataSet();
                adapter.Fill(ds);
                return ds;
            }
            catch (Exception)
            {

                return null;
            }
            finally
            {
                conn.Close();
            }

        }

        public DataSet getData(string spname, ArrayList param)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["SIAAPConnectionString"].ToString();
            conn.Open();
            SqlCommand cmd = new SqlCommand();

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = spname;
            cmd.Connection = conn;

            for (int i = 0; i < param.Count; i++)
            {
                cmd.Parameters.Add(param[i]);
            }

            SqlDataAdapter adapter = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            dt.Load(cmd.ExecuteReader());
            DataSet ds = new DataSet();
            ds.Tables.Add(dt);
            return ds;


        }

        public object ExecuteScalar(string spname, ArrayList param)
        {
            Object retVal;
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["SIAAPConnectionString"].ToString();
            conn.Open();
            SqlCommand cmd = new SqlCommand();

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = spname;
            cmd.Connection = conn;

            for (int i = 0; i < param.Count; i++)
            {
                cmd.Parameters.Add(param[i]);
            }

            retVal = cmd.ExecuteScalar();
            return retVal;

        }

    }

}