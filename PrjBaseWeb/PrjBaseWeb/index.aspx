<%@ Page Language="C#" 
    AutoEventWireup="true" 
    CodeBehind="index.aspx.cs" 
    Inherits="PrjBaseWeb.index" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Clínica Emagrecimento</title>
    <link href="estilo.css" rel="stylesheet" />
</head>
<body>
    <section class="container">
        <div class="form__view">
            <header>
                <h1>Clinica Emagrecimento</h1>
            </header>
            <form class="formulario" runat="server">
                <div class="formulario__campos">
                    <asp:Label ID="LabelNome" runat="server" Text="Nome" CssClass="label" />
                    <asp:TextBox ID="InputNome" CssClass="formulario__input" runat="server" />
                </div>
                <div class="formulario__campos">
                    <asp:Label ID="LabelCPF" runat="server" Text="CPF" CssClass="label" />
                    <asp:TextBox ID="InputCPF" CssClass="formulario__input" runat="server" />
                </div>
                <div class="formulario__campos">
                    <asp:Label ID="LabelNASC" runat="server" Text="Nascimento" CssClass="label" />
                    <asp:TextBox ID="InputNascimento" CssClass="formulario__input" runat="server" />
                </div>
                <div class="formulario__campos">
                    <asp:Label ID="LabelSexo" runat="server" Text="Sexo: " />
                    <asp:RadioButton GroupName="RadioSexo" ID="Fem" runat="server" />
                    <asp:Label ID="Label2" runat="server" Text="Fem" />
                    <asp:RadioButton GroupName="RadioSexo" ID="Masc" runat="server" />
                    <asp:Label ID="Label3" runat="server" Text="Masc" />
                    <asp:RadioButton GroupName="RadioSexo" ID="NRA" runat="server" />
                    <asp:Label ID="LabelNRA" runat="server" Text="NRA" />
                </div>
                <div class="formulario__campos">
                    <asp:Label ID="LabelPeso" runat="server" Text="Peso" CssClass="label" />
                    <asp:TextBox ID="InputPeso" CssClass="formulario__input" runat="server" />
                </div>
                <div class="formulario__campos">
                    <asp:Label ID="LabelAltura" runat="server" Text="Altura" CssClass="label" />
                    <asp:TextBox ID="InputAltura" CssClass="formulario__input" runat="server" />
                </div>
                <div class="formularios__btns">
                    <asp:Button ID="BtnSubmit" runat="server" Text="OK" OnClick="btOk_Click" CssClass="formulario__botao" />
                    <asp:Button ID="BtnClear" runat="server" Text="Limpar" OnClick="btLimpar_Click" CssClass="formulario__botao" />
                    <asp:Button ID="BtnExcluir" runat="server" Text="Excluir" OnClick="btExcluir_Click" CssClass="formulario__botao excluir" />
                </div>
                <div class="formulario__campos">
                    <asp:Label ID="Busca" runat="server" Text="Busca:" CssClass="label" />
                    <asp:TextBox ID="InputBusca" CssClass="formulario__input" runat="server" />
                    <asp:Button ID="btnBusca" runat="server" Text="OK" OnClick="btOkBusca_Click" CssClass="formulario__botao" />
                </div>
                <div class="formularios__btns">
                    <asp:Label ID="ResultadoLabel" runat="server" Text="Resultado" CssClass="label" />
                    <asp:TextBox ID="Resultado" CssClass="formulario__input" style="width: 100%" runat="server" />
                </div>
            </form>
        </div>
    </section>
</body>
</html>


<style>
    * {
        padding: 0;
        margin: 0;
        box-sizing: border-box;
        font-family: 'Arial', sans-serif;
        color: #333;
    }

    body {
        background-color: #f0f8ff;
    }

    .container {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        height: 100vh;
        width: 100%;
    }

    .form__view {
        border: 1px solid #ccc;
        padding: 2rem;
        border-radius: 15px;
        background-color: #fff;
        width: 100%;
        max-width: 500px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }

    header {
        width: 100%;
        text-align: center;
        margin-bottom: 1.5rem;
    }

    header h1 {
        font-size: 1.8rem;
        color: #008080;
    }

    .formulario {
        display: flex;
        flex-direction: column;
        gap: 1rem;
    }

    .formulario__campos {
        display: flex;
        flex-direction: column;
        gap: 0.5rem;
    }

    .label {
        font-size: 1rem;
        color: #555;
    }

    .formulario__input {
        padding: 10px;
        font-size: 1rem;
        border-radius: 8px;
        border: 1px solid #ccc;
        width: 100%;
    }

    .formulario__input:focus {
        border-color: #00b3b3;
        outline: none;
    }

    .formulario__botao {
        padding: 10px;
        font-size: 1rem;
        color: #fff;
        background-color: #008080;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .formulario__botao:hover {
        background-color: #004d4d;
    }

    .excluir {
        background-color: #f44336;
    }

    .excluir:hover {
        background-color: #e53935;
    }

    .formularios__btns {
        display: flex;
        justify-content: space-between;
        gap: 1rem;
        margin-top: 1rem;
    }

    .formulario__input[readonly] {
        background-color: #f0f0f0;
    }

    form {
        width: 100%;
    }

    form .formulario__campos {
        width: 100%;
    }

    form .formulario__campos > label {
        width: 35%;
    }

    form .formulario__input {
        width: 65%;
    }

    @media (max-width: 600px) {
        .form__view {
            padding: 1rem;
        }

        header h1 {
            font-size: 1.5rem;
        }

        .formularios__btns {
            flex-direction: column;
        }

        .formulario__input {
            font-size: 0.9rem;
        }
    }

</style>