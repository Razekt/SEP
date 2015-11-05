<%@ Page Title="SEP - Página principal" Language="C#" MasterPageFile="~/SEPMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cabecalho" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="miolo" Runat="Server">
    <div class="container">
        <div class="page-header">
            <h1>Sistema de Elaboração de Provas</h1>
        </div>
        <p class="lead">Apenas o começo, um parágrafo com <code>class=lead</code>.</p>
        <p><a href="<%= ResolveUrl("~/") %>Cadastro.aspx">Não possui cadastro, clique aqui!</a></p>
    </div>
</asp:Content>