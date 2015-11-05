<%@ Page Title="" Language="C#" MasterPageFile="~/SEPMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cabecalho" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="miolo" Runat="Server">
    <div class="container">
        <div class="page-header">
            <h1>Área Administrativa</h1>
        </div>
        <div class="col-md-3">
            <h3>Cadastros</h3>
            <ul class="nav nav-pills nav-stacked">
                <li><a class="list-group-item" href="CadProvas.aspx">Cadastro de Provas</a></li>
            </ul>
        </div>
    </div>

    <script type="text/javascript">
        $("li").hover(function(){
            $(this).toggleClass("active");
        });
    </script>
</asp:Content>

