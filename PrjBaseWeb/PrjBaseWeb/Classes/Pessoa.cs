using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PrjCalculadoraWeb.Classes
{
    public class Pessoa
    {
        public string nome { get; private set; }
        public string cpf { get; private set; }
        public DateTime dtNasc { get; private set; }
        public char sexo { get; private set; }

        public Pessoa(string nome,
            string cpf,
            DateTime dtNasc,
            char sexo)
        {
            this.nome = nome;
            this.cpf = cpf;
            this.dtNasc = dtNasc;
            this.sexo = sexo;
        }
    }
}