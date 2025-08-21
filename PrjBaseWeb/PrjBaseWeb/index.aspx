<%@ Page Language="C#" 
    AutoEventWireup="true" 
    CodeBehind="index.aspx.cs" 
    Inherits="PrjBaseWeb.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <link href="estilo.css" rel="stylesheet" />
    <section class="container">
        <div class="form__view">
            <header>
                <h1>Clinica Emagrecimento</h1>
            </header>
            <form class="formulario" runat="server">
                <div class="formulario__campos">
                   <asp:Label ID="LabelNome" runat="server" Text="Nome" CssClass="label"/>
                    <asp:TextBox ID="InputNome" CssClass="formulario__input" runat="server"/>
                </div>
                <div class="formulario__campos">
                   <asp:Label ID="LabelCPF" runat="server" Text="CPF" CssClass="label"/>
                    <asp:TextBox ID="InputCPF" CssClass="formulario__input" runat="server"/>
                </div>
                <div class="formulario__campos">
                   <asp:Label ID="LabelNASC" runat="server" Text="Nascimento" CssClass="label"/>
                    <asp:TextBox ID="InputNascimento" CssClass="formulario__input" runat="server"/>
                </div>
                <div class="formulario__campos">
                   <asp:Label ID="LabelSexo" runat="server" Text="Sexo: "/>
                    <asp:RadioButton GroupName="RadioSexo" ID="Fem" runat="server" />
                    <asp:Label ID="Label2" runat="server" Text="Fem"/>
                    <asp:RadioButton GroupName="RadioSexo" ID="Masc" runat="server" />
                    <asp:Label ID="Label3" runat="server" Text="Masc"/>
                    <asp:RadioButton GroupName="RadioSexo" ID="NRA" runat="server" />
                    <asp:Label ID="LabelNRA" runat="server" Text="NRA"/>
                </div>
                <div class="formulario__campos">
                   <asp:Label ID="LabelPeso" runat="server" Text="Peso" CssClass="label"/>
                    <asp:TextBox ID="InputPeso" CssClass="formulario__input" runat="server"/>
                </div>
                <div class="formulario__campos">
                   <asp:Label ID="LabelAltura" runat="server" Text="Altura" CssClass="label"/>
                    <asp:TextBox ID="InputAltura" CssClass="formulario__input" runat="server"/>
                </div>
                <div class="formularios__btns">
                    <asp:Button ID="BtnSubmit" runat="server" Text="OK" OnClick="Submit" CssClass="formulario__botao" />
                    <asp:Button ID="BtnClear" runat="server" Text="Limpar" OnClick="Clear" CssClass="formulario__botao" />
                </div>
                 <div class="formularios__btns">
                     <asp:Label ID="ResultadoLabel" runat="server" Text="Resultado" CssClass="label"/>
                    <asp:TextBox ID="Resultado" CssClass="formulario__input" style="width: 100%" runat="server"/>
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
       font-family:  Arial;
        color: #0a0a0a;
    }

    .container {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        width: 100%;
        height: 100vh;
        background-color: #00ffff;
    }
    .form__view {
        border: 1px solid #808080;
        padding: 2rem;
        border-radius: 20px;
        background-color: #fefefe;
    }

    header {
        width: 100%;
    }

    header h1 {
        justify-self: center;
    }

    .container .formulario {
        display: flex;
        flex-direction: column;
        height: 30%;
        width: 100%;
        gap: 1rem;
    }

    .formulario .formulario__campos {
        display: flex;
        gap: 0.5rem;
        width: 100%;
    }

    .label {
        display: flex;
        font-size: 1rem;
        width: 40%;
        align-items: center;
    }
    .formulario__input {
        width: 60%;
        font-size: 1rem;
        border-radius: 18px;
        border: 1px solid;
        padding: 5px 8px;
    }

    .formularios__btns {
        display: flex;
        width: 100%;
        gap: 2rem;
        font-size: 1rem;
        margin: 1rem 0 0 0;
    }

    .formulario__botao {
        display: flex;
        width: 100%;
        border: none;
        background: none;
        background-color: cyan;
        padding: 0.2rem 0.8rem;
        cursor: pointer;
        font-weight: bold;
        border-radius: 18px;
        color: #606060;
    }
</style>