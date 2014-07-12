using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace ProyectoVeterinaria_PL.Pantallas
{
    public partial class frmIngresoSistema : Form
    {
        public frmIngresoSistema()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (txtLogin.Text.ToString() == "adriana" && txtPass.Text.ToString() == "123")
                { 
                    frmPrincipal frmPrinc = new frmPrincipal();
                    frmPrinc.ShowDialog();
                    txtPass.Clear();
                    txtLogin.Clear();
                }
                else
                {
                    MessageBox.Show("El usuario o el password digitados estan erroneos, vuelva a ingresar los datos", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                    txtPass.Clear();
                    txtLogin.Clear();
                }
            }
            catch
            {
            
            }
            
        }
    }
}
