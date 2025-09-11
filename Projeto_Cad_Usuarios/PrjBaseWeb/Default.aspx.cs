using PrjCalculadoraWeb.Classes;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrjCalculadoraWeb
{
    public partial class Default : System.Web.UI.Page
    {
        private static List<Usuario> usuarios;

        private String nomeArquivo = "usuarios.dat";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (usuarios == null)
            {
                if (File.Exists(nomeArquivo))
                {
                    usuarios = Serializa.DesserializaUsuario(nomeArquivo);
                }
                else
                {
                    usuarios = new List<Usuario>();
                }
            }
        }

        protected void btOk_Click(object sender, EventArgs e)
        {
            if (Util.ValidarCPF(txSenha.Text))
            {
                tbRecadastra.Visible = true;
                return;
            }
            
            foreach(Usuario usuario in usuarios)
            {
                if (usuario.Login.Equals(txLogin.Text) &&
                    usuario.Senha.Equals(txSenha.Text))
                {
                    Response.Redirect("CadUser.aspx", true);
                    return;
                }
            }
            lbMensagem.Text = "Usuário não encontrado.";
        }

        protected void btOk2_Click(object sender, EventArgs e)
        {
            if (!validarSenha(tbSenhaA.Text))
            {
                lbMensagem.Text = "A senha deve conter: 1 letra maiúscula, " +
                    "1 letra minúscula, 1 número e 1 símbolo especiaL e pelo menos 8 caracteres";
                return;
            }
            if (!(tbSenhaA.Text.Equals(tbSenhaB.Text)))
            {
                lbMensagem.Text = "Senhas não conferem!";
                return;
            }
            for (int i = 0; i<usuarios.Count; i++)
            {
                if (txLogin.Text.Equals(usuarios[i].Login))
                {
                    usuarios[i].AlterarSenha(tbSenhaA.Text);
                    Serializa.SerializaUsuario(usuarios, nomeArquivo);
                    tbRecadastra.Visible = false;
                    return;
                }
            }
            lbMensagem.Text = "Usuário não encontrado!";
        }

        protected bool validarSenha(String senha)
        {
            bool temMaiuscula = senha.Any(char.IsUpper);
            bool temMinuscula = senha.Any(char.IsLower);
            bool temNumero = senha.Any(char.IsDigit);
            bool temSimboloEspecial = senha.Any(c => !char.IsLetterOrDigit(c));
            bool tamanhoSenha = (tbSenhaA.Text.Length < 8);

            return temMaiuscula && temMinuscula && temNumero && temSimboloEspecial && tamanhoSenha;
        }


    }
}