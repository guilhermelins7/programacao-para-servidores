using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PrjCalculadoraWeb.Classes
{
    public class Usuario : Pessoa
    {
        public String login { get; private set; }
        public String senha { get; private set; }

        public Usuario(
            string nome,
            string cpf,
            DateTime dtNasc,
            String login,
            String senha,
            char sexo) : base(nome, cpf, dtNasc, sexo)
        {
            this.login = login;
            this.senha = senha;
        }

        public bool Verifica(string login, string senha)
        {
            return this.login.Equals(login) &&
                   this.senha.Equals(senha);
        }
    }
}