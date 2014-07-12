using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ProyectoVeterinaria_DAL.TBProductos
{
    public class tbProductos
    {
        #region Variables_Privadas
            private string _IdProducto;
            private string _Nombre;
            private int _Precio;
            private int _Cantidad;
            private int _CantidadMinima;       
            private int _IdMarca;        
            private int _IdCategoria;        
            private int _IdEstado;        
        #endregion
        
        #region Constructor
            public string IdProducto
        {
            get { return _IdProducto; }
            set { _IdProducto = value; }
        }
            public string Nombre
        {
            get { return _Nombre; }
            set { _Nombre = value; }
        }
            public int Precio
        {
            get { return _Precio; }
            set { _Precio = value; }
        }
            public int Cantidad
        {
            get { return _Cantidad; }
            set { _Cantidad = value; }
        }
            public int CantidadMinima
        {
            get { return _CantidadMinima; }
            set { _CantidadMinima = value; }
        }
            public int IdMarca
        {
            get { return _IdMarca; }
            set { _IdMarca = value; }
        }
            public int IdCategoria
        {
            get { return _IdCategoria; }
            set { _IdCategoria = value; }
        }
            public int IdEstado
        {
            get { return _IdEstado; }
            set { _IdEstado = value; }
        }
        #endregion
    }
}
