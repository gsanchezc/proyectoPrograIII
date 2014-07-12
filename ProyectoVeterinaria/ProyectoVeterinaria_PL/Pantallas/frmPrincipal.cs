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
    public partial class frmPrincipal : Form
    {
        public frmPrincipal()
        {
            InitializeComponent();
        }

        private void empleadosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmEmpleado frmEmpl = new frmEmpleado();
            frmEmpl.MdiParent=this;
            frmEmpl.Show();
           // frmEmpl.ShowDialog();
        }

        private void clientesToolStripMenuItem_Click(object sender, EventArgs e)
        {
           frmClientes frmCli = new frmClientes();
            frmCli.MdiParent = this;
            frmCli.Show();
            // frmCli.ShowDialog();
        }

        private void productoToolStripMenuItem_Click(object sender, EventArgs e)
        {
           frmProductos frmProd = new frmProductos();
           frmProd.MdiParent = this;
           frmProd.Show();
            // frmProd.ShowDialog();
        }

        private void proveedorToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmProveedor frmProveedor = new frmProveedor();
            frmProveedor.MdiParent = this;
            frmProveedor.Show();
            //frmProveedor.ShowDialog();
        }

        private void tipoClienteToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmTipoClientes frmTipoCli = new frmTipoClientes();
            frmTipoCli.MdiParent = this;
            frmTipoCli.Show();
          //  frmTipoCli.ShowDialog();
        }

        private void tipoEmpleadoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmTipoEmpleado frmTipoEmpl = new frmTipoEmpleado();
            frmTipoEmpl.MdiParent = this;
            frmTipoEmpl.Show();
           // frmTipoEmpl.ShowDialog();
        }
    }
}
