using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CadPessoas : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnCadastrar_Click(object sender, EventArgs e)
    {
        int SEQ = Local.CInt(Local.DSConsulta("SELECT MAX(MAT) FROM PROFESSOR", "STRCONN").Tables[0].Rows[0][0]);
        Local.DSGrava("INSERT INTO PROFESSOR(MAT, NOME, EMAIL, GRUPO, SENHA) VALUES(" + (SEQ + 1) + ", '" + fldNome.Text + "', '" + fldEmail.Text + "', 'CADASTRADO', '" + fldSenha.Text + "')", "STRCONN");
        Response.Write("<div class='alert alert-success'><a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a><strong>OK!</strong> Cadastro realizado com sucesso.</div>");
    }
}