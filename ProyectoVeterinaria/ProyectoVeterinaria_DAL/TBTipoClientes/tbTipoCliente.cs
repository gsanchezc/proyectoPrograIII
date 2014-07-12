using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ProyectoVeterinaria_DAL.TBTipoClientes
{
    public class tbTipoCliente
    {
        #region Variables_Privadas
            private int _IdTipoCliente;        
            private string _TipoCliente;        
            private string _Descripcion;       
        #endregion

        #region Constructor
            public int IdTipoCliente
        {
            get { return _IdTipoCliente; }
            set { _IdTipoCliente = value; }
        }
            public string TipoCliente
        {
            get { return _TipoCliente; }
            set { _TipoCliente = value; }
        }
            public string Descripcion
        {
            get { return _Descripcion; }
            set { _Descripcion = value; }
        }
        #endregion
    }
}
