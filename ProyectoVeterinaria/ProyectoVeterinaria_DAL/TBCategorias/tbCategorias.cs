using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ProyectoVeterinaria_DAL.TBCategorias
{
    public class tbCategorias
    {
        #region Variables_Privadas
            private int _IdCategoria;
            private string _Categoria;
        #endregion

        #region Constructor
            public int IdCategoria
            {
                get { return _IdCategoria; }
                set { _IdCategoria = value; }
            }
            public string Categoria
            {
                get { return _Categoria; }
                set { _Categoria = value; }
            }
        #endregion
    }
}
