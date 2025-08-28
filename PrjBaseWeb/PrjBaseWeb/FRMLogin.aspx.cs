using PrjCalculadoraWeb.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrjCalculadoraWeb
{
    public partial class FRMLogin : System.Web.UI.Page
    {
        private static List<Usuario> usuarios;


        protected void Page_Load(object sender, EventArgs e)
        {
            if (usuarios == null)
            {
                usuarios = new List<Usuario>();

                usuarios.Add(
                    new Usuario("Maria", "123.456.789/01", new DateTime(2000, 10, 10),
                    "maria", "12345", 'F')
                    );

                usuarios.Add(
                    new Usuario("Jose", "223.456.789/01", new DateTime(2010, 10, 10),
                    "jose", "12345", 'M')
                    );

                usuarios.Add(
                    new Usuario("Pedro", "323.456.789/01", new DateTime(2003, 11, 10),
                    "pedro", "12345", 'M')
                    );
                usuarios.Add(
                    new Usuario("Jurema", "423.456.789/01", new DateTime(2004, 1, 1),
                    "jurema", "12345", '*')
                    );
                usuarios.Add(
                    new Usuario("Joaquim", "523.456.789/01", new DateTime(2003, 11, 20),
                    "joaquim", "12345", 'M')
                    );

            }
        }

        protected void btOk_Click(object sender, EventArgs e)
        {
            foreach (Usuario u in usuarios)
            {
                if (u.Verifica(LoginInput.Text, SenhaInput.Text))
                {
                    Session["usuario"] = u;
                    Response.Redirect("index.aspx", true);
                    return;
                }
            }

            RespostaLogin.Text = "Usuário não reconhecido!";
        }
    }
}