using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PrjCalculadoraWeb.Classes
{
    public class Pessoa
    {
        public string Nome { get; private set; }
        public string CPF { get; private set; }
        public char Sexo { get; private set; }
        public DateTime DataNascimento { get; set; }

        public Pessoa(string nome, string cPF, char sexo, DateTime dataNascimento)
        {
            Nome = nome;
            CPF = cPF;
            Sexo = sexo;
            DataNascimento = dataNascimento;
        }
    }
}