<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PrjCalculadoraWeb.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section class="auth_container">
                <div class="auth_view">
                    <form>
                        <div class="auth_input_area">
                            <asp:Label ID="lbLogin" runat="server" Text="Login"/>
                            <asp:TextBox ID="txLogin" runat="server"/>
                        </div>
                        <div class="auth_input_area">
                            <asp:Label ID="lbSenha" runat="server" Text="Senha"/>
                            <asp:TextBox ID="txSenha" runat="server" TextMode="Password" />
                        </div>
                        <div class="auth_input_area">
                            <asp:Button ID="btOk" runat="server" Text="Logar" OnClick="btOk_Click" />
                        </div>
                    </form>
                </div>
                <div runat="server" id="tbRecadastra" visible="false">
                    <div class="auth_input_area">
                        <asp:Label ID="lbAviso" runat="server" Text="Primeiro acesso, defina sua senha."/>
                    </div>
                    <div class="auth_input_area">
                        <asp:Label ID="lbSenhaA" runat="server" Text="Senha A"/>
                        <asp:TextBox ID="tbSenhaA" runat="server" TextMode="Password" />
                    </div>
                    <div class="auth_input_area">
                        <asp:Label ID="lbSenhaB" runat="server" Text="Senha B"/>
                        <asp:TextBox ID="tbSenhaB" runat="server" TextMode="Password" />
                    </div>
                    <div class="auth_input_area">
                        <asp:Button ID="btOk2" runat="server" Text="Registrar nova senha" OnClick="btOk2_Click" />
                    </div>
                    <div class="auth_input_area">
                        <asp:Label ID="lbMensagem" runat="server" ForeColor="Red" Font-Size="14px" Text=""></asp:Label>
                    </div>
                </div>
            </section>
        </div>
    </form>
</body>
</html>

<style>
/* Resetando algumas propriedades padrões de margens e padding */
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Corpo da página */
body {
    font-family: Arial, sans-serif;
    background-color: #f4f7fb;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

/* Container geral da autenticação */
.auth_container {
    background-color: #fff;
    padding: 30px;
    border-radius: 10px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
    width: 100%;
    max-width: 400px;
}

/* Visão do formulário */
.auth_view {
    text-align: center;
}

/* Estilos para as áreas de input */
.auth_input_area {
    margin-bottom: 15px;
    text-align: left;
}

.auth_input_area label {
    display: block;
    font-size: 14px;
    margin-bottom: 5px;
    color: #333;
}

.auth_input_area input {
    width: 100%;
    padding: 10px;
    font-size: 14px;
    border: 1px solid #ccc;
    border-radius: 5px;
    background-color: #fafafa;
    transition: border-color 0.3s;
    margin: 8px 0 0 0;
}

.auth_input_area input:focus {
    border-color: #3498db;
    outline: none;
}

/* Estilo do botão */
.auth_input_area input[type="submit"], .auth_input_area input[type="button"] {
    background-color: #3498db;
    color: #fff;
    border: none;
    cursor: pointer;
    font-size: 16px;
    padding: 12px;
    border-radius: 5px;
    transition: background-color 0.3s;
}

.auth_input_area input[type="submit"]:hover, .auth_input_area input[type="button"]:hover {
    background-color: #2980b9;
}

/* Exibição de mensagem e áreas adicionais */
#tbRecadastra {
    margin-top: 20px;
}

#tbRecadastra .auth_input_area label {
    font-size: 14px;
    color: #555;
}

/* Mensagem de erro ou aviso */
#lbMensagem {
    display: block;
    margin-top: 10px;
    color: red;
    font-size: 14px;
}

</style>
