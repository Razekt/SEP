using System.Configuration;
using MySql.Data.MySqlClient;

/// <summary>
/// Funções auxiliadores 
/// </summary>
public class Local
{
	public bool EhCadastrado()
    {

        return false;
    }

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
}