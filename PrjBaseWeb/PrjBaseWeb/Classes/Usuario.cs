using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PrjCalculadoraWeb.Classes
{
    public class Usuario : Pessoa
    {

        public string Login { get; private set; }
        public string Senha { get; private set; }

        public Usuario(string nome, string cPF, char sexo, DateTime dataNascimento, string login, string senha) : base(nome, cPF, sexo, dataNascimento)
        {
            Login = login;
            Senha = senha;
        }

    }
}