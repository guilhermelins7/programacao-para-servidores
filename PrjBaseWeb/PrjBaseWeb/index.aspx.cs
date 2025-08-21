using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.RegularExpressions;
using System.Globalization;
using PrjCalculadoraWeb.Classes;

namespace PrjBaseWeb
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Submit(object sender, EventArgs e)
        {
            if (InputNome.Text == "")
            {
                Resultado.Text = "Nome deve ser completo.";
                return;
            }
            if(InputCPF.Text.Length < 14)
            {
                Resultado.Text = "CPF Deve ter 14 digitos.";
                return;
            }

            if(!Regex.IsMatch(InputNascimento.Text, @"^\d{2}/\d{2}/\d{4}$"))
            {
                Resultado.Text = "Data inválida.";
                return;
            }

            DateTime dataFomatada = DateTime.ParseExact(InputNascimento.Text, "dd/MM/yyyy", CultureInfo.InvariantCulture);

            DateTime dataLimiteQuinze = DateTime.Today.AddYears(-15);
            DateTime dataLimiteCem = DateTime.Today.AddYears(-100);    

            if (dataFomatada > dataLimiteQuinze || dataFomatada < dataLimiteCem)
            {
                Resultado.Text = "A data de nascimento deve estar entre 15 e 100 anos.";
                return;
            }

            float alturaNumber = float.Parse(InputAltura.Text);

            if(alturaNumber < 1.1 || alturaNumber > 2.2)
            {
                Resultado.Text = "A altura deve estar entre 1.1 e 2.2";
                return;
            }

            char sexo = 'N';
            if (Fem.Checked) sexo = 'F';
            if (Masc.Checked) sexo = 'M';

            string nome = InputNome.Text;
            string cpf = InputCPF.Text;
            DateTime dataNascimento = DateTime.ParseExact(InputNascimento.Text, "dd/MM/yyyy", CultureInfo.InvariantCulture);
            float peso = float.Parse(InputPeso.Text);
            float altura = float.Parse(InputAltura.Text);

            Paciente novoPaciente = new Paciente(nome, cpf, sexo, dataNascimento, peso, altura);

            Resultado.Text = novoPaciente.imc.Diagnostico();
        }

        protected void Clear(object sender, EventArgs e)
        {
            InputNome.Text = "";
            InputCPF.Text = "";
            InputNascimento.Text = "";
            InputPeso.Text = "";
            InputAltura.Text = "";
        }
    }
}