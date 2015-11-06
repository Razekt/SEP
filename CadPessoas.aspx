<%@ Page Title="" Language="C#" MasterPageFile="~/SEPMaster.master" AutoEventWireup="true" CodeFile="CadPessoas.aspx.cs" Inherits="CadPessoas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cabecalho" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="miolo" Runat="Server">
    <div class="container">
        <div class="page-header">
            <h1>Crie sua conta no SEP</h1>
        </div>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h4 class="panel-title">Dados Cadastrais</h4>
            </div>
            <div class="panel-body">
                <div class="row">
                    <div class="form-group col-md-6">
                        <asp:Label runat="server" ID="lblNome" Text="Nome:" For="fldNome"></asp:Label>
                        <asp:TextBox runat="server" ID="fldNome" CssClass="form-control" PlaceHolder="Nome"></asp:TextBox>
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-md-6">
                        <asp:Label runat="server" ID="lblEmail" Text="E-mail:" For="fldEmail"></asp:Label>
                        <asp:TextBox runat="server" ID="fldEmail" CssClass="form-control" PlaceHolder="E-mail"></asp:TextBox>
                    </div>
                </div>        

                <div class="row">
                    <div class="form-group col-md-6">
                        <asp:Label runat="server" ID="lblSenha" Text="Senha:" For="fldSenha"></asp:Label>
                        <asp:TextBox runat="server" ID="fldSenha" CssClass="form-control" TextMode="Password" PlaceHolder="Senha"></asp:TextBox>
                    </div>
                </div>
            </div>
        </div>
        <div class="form-group">
            <asp:Button ID="btnCadastrar" runat="server" Text="Criar Conta" CssClass="btn btn-primary" OnClick="btnCadastrar_Click" />
        </div>
    </div>
</asp:Content>

