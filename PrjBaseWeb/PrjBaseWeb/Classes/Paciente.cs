using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PrjCalculadoraWeb.Classes
{
    public class Paciente : Pessoa
    {
        private static int id = 0;
        public string registro { get; private set; }

        private IMC imc;

        public Paciente(string nome,
            string cpf,
            DateTime dtNasc,
            char sexo,
            float peso,
            float altura) : base(nome, cpf, dtNasc, sexo)
        {
            imc = new IMC(peso, altura);
            registro = (++id).ToString();
        }

        public void Atualiza(float peso, float altura)
        {
            imc = new IMC(peso, altura);
        }

        public float Altura()
        {
            return imc.altura;
        }

        public float Peso()
        {
            return imc.peso;
        }

        public String Diagnostico()
        {
            return imc.Diagnostico();
        }

    }
}