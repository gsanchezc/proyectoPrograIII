using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ProyectoVeterinaria_DAL.TBClientes
{
    public class tbClientes
    {
        #region Variables_Privadas
            private string _IdCliente;
            private string _Cedula;
            private string _Nombre;
            private string _Apellido1;
            private string _Apellido2;
            private int _IdTipoCliente;
            private string _Telefono1;
            private string _Telefono2;
            private int _IdEstado;
        #endregion

        #region Constructor
            public string IdCliente
        {
            get { return _IdCliente; }
            set { _IdCliente = value; }
        }
            public string Cedula
        {
            get { return _Cedula; }
            set { _Cedula = value; }
        }
            public string Nombre
        {
            get { return _Nombre; }
            set { _Nombre = value; }
        }
            public string Apellido1
        {
            get { return _Apellido1; }
            set { _Apellido1 = value; }
        }
            public string Apellido2
        {
            get { return _Apellido2; }
            set { _Apellido2 = value; }
        }
            public int IdTipoCliente
        {
            get { return _IdTipoCliente; }
            set { _IdTipoCliente = value; }
        }
            public string Telefono1
        {
            get { return _Telefono1; }
            set { _Telefono1 = value; }
        }
            public string Telefono2
        {
            get { return _Telefono2; }
            set { _Telefono2 = value; }
        }
            public int IdEstado
        {
            get { return _IdEstado; }
            set { _IdEstado = value; }
        }
        #endregion
    }
}
