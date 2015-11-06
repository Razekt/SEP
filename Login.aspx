<%@ Page Language="C#" MasterPageFile="~/SEPMaster.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" Title="SEP - Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cabecalho" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="miolo" Runat="Server">
    <div class="container">
        <div class="page-header">
            <h1>Área Administrativa</h1>
        </div>
        <div class="col-md-3">
            Usuário:<br />
            <asp:TextBox ID="txtUsu" runat="server" CssClass="form-control " PlaceHolder="Login" required="required" autofocus="autofocus"></asp:TextBox>
            <br />
            Senha:<br />
            <asp:TextBox ID="txtSenha" runat="server" CssClass="form-control" TextMode="Password" PlaceHolder="Senha" required="required"></asp:TextBox>
            <br />
            <asp:Button ID="btnAcessar" runat="server" Text="Entrar" CssClass="btn btn-lg btn-primary btn-block" OnClick="btnAcessar_Click" />
            <%--Mensagem de erro de login--%>
            <%--<br />
            <div id="msgErro" class="alert alert-danger hidden">
                <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
                <strong>Erro!</strong> Login ou senha incorretos.
            </div>--%>
            <br />
            <a href="<%= ResolveUrl("~/") %>CadPessoas.aspx">Não possui acesso clique aqui para se cadastrar!</a>
        </div>
    </div>
</asp:Content>

