using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

using GenFunc;

namespace dBFunc
{
    public static class dB
    {
        public static bool Open(ref SqlConnection p_Conn, string p_Srv, string p_dB, bool p_IntSec, string p_Usr = "user", string p_Pass = "pass")
        {
            bool stat = false;
            string IntSec;

            if(p_IntSec)
                IntSec = "True";
            else
                IntSec = "False";

            string conn_str = String.Format("Server = {0};Database = {1}; Integrated Security = {2};User ID = {3}; Password = {4}; ", p_Srv, p_dB, IntSec, p_Usr, p_Pass);
            p_Conn.ConnectionString = conn_str;
            
            try
            {
                p_Conn.Open();
            }
            catch(Exception ex)
            {
                MsgBox.dBErr("Error opening database!\n" + ex.Message);
            }

            if(p_Conn.State == ConnectionState.Open)
                stat = true;

            return stat;
        }

        public static void Close(ref SqlConnection p_Conn)
        {
            if(p_Conn.State == ConnectionState.Open)
                p_Conn.Close();
        }

        public static bool Query(ref SqlConnection p_Conn, ref DataTable p_DT, string p_Tbl, string p_Cols, string p_CondItem = "", string p_Cond = "", string p_OrderBy = "", bool p_Asc = true)
        {
            bool state = false; 
            
            if(p_Conn.State != ConnectionState.Open)
                goto QueryReturn;

            string sql = String.Format("SELECT {0} FROM {1}", p_Cols, p_Tbl);
            
            if(p_CondItem != "")
                sql += String.Format(" WHERE {0} = {1}", p_CondItem, p_Cond);

            if(p_OrderBy != "")
            {
                sql += String.Format(" ORDER BY {0}", p_OrderBy);
                if(p_Asc)
                    sql += String.Format(" ASC");
                else
                    sql += String.Format(" DESC");
            }

            SqlCommand cmd = new SqlCommand(sql, p_Conn);
            SqlDataReader rdr;
                       
            try
            {
                rdr = cmd.ExecuteReader();
            }
            catch (Exception ex)
            {
                MsgBox.dBErr("Error executing database query!\n" + ex.Message);
                goto QueryReturn;
            }

            p_DT.Load(rdr);
            rdr.Close();
            state = true;

            QueryReturn:
            return state;
        }
    }
}
