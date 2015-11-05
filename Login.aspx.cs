using System;
using System.Web.Security;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAcessar_Click(object sender, EventArgs e)
    {
        System.Data.DataSet DS = Local.DSConsulta("SELECT MAT, SENHA, GRUPO FROM PROFESSOR WHERE MAT = " + txtUsu.Text.Trim() + " AND SENHA = " + txtSenha.Text + " AND GRUPO = 'CADASTRADO'", "STRCONN");
        if (DS.Tables[0].Rows.Count > 0)
        {
            FormsAuthentication.RedirectFromLoginPage(txtUsu.Text, false);
            Response.Redirect("~/Admin/Default.aspx");
        }
        else
        {
            FormsAuthentication.RedirectToLoginPage();
        }
    }
}
