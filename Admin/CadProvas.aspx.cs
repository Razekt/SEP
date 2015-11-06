using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_CadProvas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnInserir_Click(object sender, EventArgs e)
    {
        // Teste com inserção.
        //int Seq = Local.CInt(Local.DSConsulta("SELECT MAX(MAT) FROM PROFESSOR", "STRCONN").Tables[0].Rows[0][0]);
        //Local.DSGrava("INSERT INTO PROFESSOR(MAT, NOME, EMAIL, GRUPO, SENHA) VALUES(" + (Seq + 1) + ", 'TESTE', 'teste', 'CADASTRADO', 'teste')", "STRCONN");
    }
}