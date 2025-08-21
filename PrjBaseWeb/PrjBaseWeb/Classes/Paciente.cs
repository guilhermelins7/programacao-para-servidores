using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PrjCalculadoraWeb.Classes
{
    public class Paciente : Pessoa
    {
        public IMC imc;
        public string ID { get; private set; }

        private static int contID = 0;

        public Paciente(string nome, string cPF, char sexo, DateTime dataNascimento, float peso, float altura) : base(nome, cPF, sexo, dataNascimento)
        {
            imc = new IMC(peso, altura);
            ID = (++contID).ToString();
        }
    }
}