<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FRMLogin.aspx.cs" Inherits="PrjCalculadoraWeb.FRMLogin" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section class="section_login">
                <div class="container">
                    <div class="input_group">
                        <asp:Label ID="LoginLabel" runat="server" Text="Login" />
                        <asp:TextBox ID="LoginInput" runat="server" CssClass="input_field" />
                    </div>
                    <div class="input_group">
                        <asp:Label ID="SenhaLabel" runat="server" Text="Senha" />
                        <asp:TextBox ID="SenhaInput" runat="server" CssClass="input_field" />
                    </div>
                    <div class="btn_group">
                        <asp:Button ID="btnOK" runat="server" Text="Entrar" OnClick="btOk_Click" CssClass="btn_submit"/>
                    </div>
                    <asp:TextBox ID="RespostaLogin" runat="server" CssClass="input_field" />
                </div>
            </section>
        </div>
    </form>
</body>
</html>

<style>
    * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    font-size: 1rem;
    }

    body {
        background: linear-gradient(to right, #0099FF, #66CCFF);
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        color: #333;
    }

    .section_login {
        display: flex;
        justify-content: center;
        align-items: center;
        width: 100%;
        height: 100%;
    }

    .container {
        display: flex;
        flex-direction: column;
        gap: 20px;
        align-items: center;
        background: #fff;
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        width: 100%;
        max-width: 400px;
    }

    .input_group {
        width: 100%;
    }

    .input_group label {
        display: block;
        font-size: 1.1rem;
        margin-bottom: 8px;
        color: #555;
    }

    .input_field {
        width: 100%;
        padding: 10px;
        font-size: 1rem;
        border: 2px solid #ccc;
        border-radius: 8px;
        outline: none;
        transition: border 0.3s ease;
    }

    .input_field:focus {
        border-color: #66CCFF;
    }

    .btn_group {
        width: 100%;
    }

    .btn_submit {
        width: 100%;
        padding: 12px;
        background-color: #66CCFF;
        color: white;
        border: none;
        border-radius: 8px;
        font-size: 1.1rem;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .btn_submit:hover {
        background-color: #0099FF;
    }

    .input_field, .btn_submit {
        transition: box-shadow 0.3s ease;
    }

    .input_field:focus, .btn_submit:hover {
        box-shadow: 0 0 8px rgba(0, 153, 255, 0.5);
    }

    input[type="text"], input[type="password"] {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

</style>
