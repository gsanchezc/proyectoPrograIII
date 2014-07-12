using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ProyectoVeterinaria_DAL.TBProveedores
{
    public class tbProveedor
    {
        #region Variables_Privadas
            private string _IdProveedor;        
            private string _Nombre;        
            private string _Direccion;       
            private string _Telefono1;        
            private string _Telefono2;        
            private int _IdEstado;        
        #endregion

        #region Constructor
            public string IdProveedor
        {
            get { return _IdProveedor; }
            set { _IdProveedor = value; }
        }
            public string Nombre
        {
            get { return _Nombre; }
            set { _Nombre = value; }
        }
            public string Direccion
        {
            get { return _Direccion; }
            set { _Direccion = value; }
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
