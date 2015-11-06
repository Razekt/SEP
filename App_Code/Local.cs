using System.Configuration;
using MySql.Data.MySqlClient;
using System;

/// <summary>
/// Funções auxiliadores 
/// </summary>
public class Local
{

    public static System.Data.DataSet DSConsulta(string SQL, string STRCONN)
    {
        System.Data.DataSet DS = new System.Data.DataSet();
        MySqlConnection conn = null;
        MySqlDataAdapter Adapt = null;
        MySqlCommand cmd = null;

        conn = new MySqlConnection(StrConnObj(STRCONN));
        cmd = new MySqlCommand(SQL, conn);
        Adapt = new MySqlDataAdapter(cmd);
        Adapt.Fill(DS);

        return DS;
    }

    public static string StrConnObj(string STRCONN)
    {
        object conn = null;
        conn = ConfigurationManager.ConnectionStrings[STRCONN].ConnectionString;
        return conn.ToString();
    }

    public static void DSGrava(string SQL, string STRCONN)
    {
        MySqlConnection conn = null;
        MySqlCommand cmd = null;

        conn = new MySqlConnection(StrConnObj(STRCONN));
        cmd = new MySqlCommand(SQL, conn);

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }

    public static int CInt(object OBJ)
    {
        return Convert.ToInt32(OBJ);
    }
}