using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ProyectoVeterinaria_DAL.TBTipoEmpleados
{
    public class tbTipoEmpleado
    {
        #region Variables_Privadas
            private int _IdTipoEmpleado;        
            private string _Tipo;
        #endregion

        #region Constructor
            public int IdTipoEmpleado
        {
            get { return _IdTipoEmpleado; }
            set { _IdTipoEmpleado = value; }
        }
            public string Tipo
        {
            get { return _Tipo; }
            set { _Tipo = value; }
        }
        #endregion
    }
}
