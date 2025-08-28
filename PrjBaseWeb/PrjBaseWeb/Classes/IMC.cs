using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PrjCalculadoraWeb.Classes
{
    public class IMC
    {
        public float peso { get; private set; }
        public float altura { get; private set; }

        public IMC(float peso, float altura)
        {
            this.peso = peso;
            this.altura = altura;
        }
        private float Calcula()
        {
            try
            {
                return peso / (altura * altura);
            }
            catch (Exception)
            {
                throw;
            }
        }
        public String Diagnostico()
        {
            float imc = Calcula();

            if (imc < 16.5) return "Baixo peso severo!";
            if (imc < 18.5) return "Baixo peso!";
            if (imc < 25) return "Peso normal";
            if (imc < 30) return "Sobrepeso";
            if (imc < 35) return "Obesidade I";
            if (imc < 40) return "Obesidade II :-(";
            return "Obesidade III :=(¨)";
        }
    }
}