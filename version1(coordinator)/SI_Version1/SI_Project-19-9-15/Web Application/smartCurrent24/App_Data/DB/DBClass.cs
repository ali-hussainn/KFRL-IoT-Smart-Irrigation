using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;//sql connection
using System.Data; // sql
using System.Configuration; // system config from web
using System.Collections;

namespace TransWorld.DB
{
    public class DBClass
    {
        public int insertData(string spname, ArrayList param)
        {
            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["TransworldConnectionString"].ToString();
            conn.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = spname;
            cmd.Connection = conn;
            for (int i = 0; i < param.Count; i++)
            {
                cmd.Parameters.Add(param[i]);
            }

            int result = cmd.ExecuteNonQuery();
            return result;

        }
    }
}