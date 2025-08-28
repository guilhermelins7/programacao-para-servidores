using PrjCalculadoraWeb.Classes;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrjBaseWeb
{
    public partial class index : System.Web.UI.Page
    {

        private static List<Paciente> pacientes = new List<Paciente>();
        protected void Page_Load(object sender, EventArgs e)
        {
            Usuario u = (Usuario)Session["usuario"];

            if (u == null)
            {
                Response.Redirect("FrmLogin.aspx", true);
                return;
            }
        }

        protected void btLimpar_Click(object sender, EventArgs e)
        {
            InputAltura.Text =
                InputCPF.Text =
                InputNascimento.Text =
                InputNome.Text =
                InputPeso.Text =
                Resultado.Text = String.Empty;

            Fem.Checked =
               Masc.Checked = NRA.Checked = false;

            InputCPF.ReadOnly =
                    InputNascimento.ReadOnly =
                    InputNome.ReadOnly = false;

            Fem.Enabled =
                Masc.Enabled =
                NRA.Enabled = true;

            Session["paciente"] = null;
        }

        protected void btOk_Click(object sender, EventArgs e)
        {
            if (!float.TryParse(InputAltura.Text, out float altura) ||
                !float.TryParse(InputPeso.Text, out float peso))
            {
                Resultado.Text = "Atura ou peso inválidos";
                return;
            }

            if (altura < 1.1 || altura > 2.2)
            {
                Resultado.Text = "Altura deve estar entre 1.1m e 2.2m";
                return;
            }

            if (Session["paciente"] != null)
            {
                Paciente paciente = (Paciente)Session["paciente"];
                paciente.Atualiza(peso, altura);
                Mostrar(paciente);
                return;
            }

            if (!DateTime.TryParse(InputNascimento.Text, out DateTime dt))
            {
                Resultado.Text = "Erro de digitação de data: (DD/MM/AAAA)";
                return;
            }

            int idade = DateTime.Now.Year - dt.Year;

            if (idade < 15 || idade > 100)
            {
                Resultado.Text = "Idades entre 15 e 100 anos";
                return;
            }

            if (Fem.Checked == false && Masc.Checked == false && NRA.Checked == false)
            {
                Resultado.Text = "Selecione o sexo";
                return;
            }

            if (InputCPF.Text.Length != 14)
            {
                Resultado.Text = "CPF invalido";
                return;
            }
            if (InputNome.Text == String.Empty)
            {
                Resultado.Text = "Nome não pode estar em branco";
                return;
            }

            char sexo = '*';

            if (Masc.Checked) sexo = 'M';
            if (Fem.Checked) sexo = 'F';

            try
            {
                Paciente p = new Paciente(InputNome.Text, InputCPF.Text, dt, sexo, peso, altura);
                Resultado.Text = p.Diagnostico();

                foreach (Paciente paciente in pacientes)
                {
                    if (InputCPF.Text.Equals(paciente.cpf))
                    {
                        Resultado.Text = "Paciente já cadastrado";
                        return;
                    }
                }

                pacientes.Add(p);
            }
            catch (Exception ex)
            {
                Resultado.Text = "Erro: " + ex.Message;
            }
        }

        private void Mostrar(Paciente p)
        {
            InputAltura.Text = p.Altura().ToString();
            InputCPF.Text = p.cpf;
            InputNascimento.Text = p.dtNasc.ToString("dd/MM/yyyy");
            InputNome.Text = p.nome;
            InputPeso.Text = p.Peso().ToString();

            Resultado.Text = p.Diagnostico();

            Fem.Checked = p.sexo == 'F';
            Masc.Checked = p.sexo == 'M';
            NRA.Checked = p.sexo == '*';
        }

        protected void btOkBusca_Click(object sender, EventArgs e)
        {
            string cpfBusca = Busca.Text;

            if (string.IsNullOrEmpty(cpfBusca))
            {
                Resultado.Text = "Informe um CPF para busca.";
                return;
            }

            foreach (Paciente p in pacientes)
            {
                if (p.cpf.Equals(cpfBusca))
                {
                    InputCPF.ReadOnly = true;
                    InputNascimento.ReadOnly = true;
                    InputNome.ReadOnly = true;
                    Fem.Enabled = false;
                    Masc.Enabled = false;
                    NRA.Enabled = false;

                    Session["paciente"] = p;
                    Mostrar(p);
                    return;
                }
            }

            Resultado.Text = "Paciente não cadastrado";
        }

        protected void btExcluir_Click(object sender, EventArgs e)
        {
            Paciente paciente = (Paciente)Session["paciente"];

            if (paciente != null)
            {
                pacientes.Remove(paciente);

                InputAltura.Text =
                InputCPF.Text =
                InputNascimento.Text =
                InputNome.Text =
                InputPeso.Text =
                Resultado.Text = String.Empty;

                Fem.Checked =
                Masc.Checked = NRA.Checked = false;

                Session["paciente"] = null;

                AtualizarBotaoExcluir();

                Resultado.Text = "Paciente excluído com sucesso!";
            }
            else
            {
                Resultado.Text = "Nenhum paciente selecionado para exclusão.";
            }
        }

        private void AtualizarBotaoExcluir()
        {
            BtnExcluir.Enabled = pacientes.Count > 0;
        }
    }
}
