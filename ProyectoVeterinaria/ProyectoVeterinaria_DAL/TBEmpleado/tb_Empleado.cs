using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace ProyectoVeterinaria_DAL.TBEmpleado
{
   public class tb_Empleado
   {
       #region Variables_Privadas
            private string _IdEmpleado;
            private string _Cedula;
            private string _Nombre;
            private string _Apellido1;
            private string _Apellido2;
            private string _Direccion;
            private int _Edad;
            private string _Telefono1;
            private string _Telefono2;
            private int _IdTipoEmpleado;
            private int _IdDepartamento;
            private string _Password;
            private int _IdEstado;
       #endregion

       #region Constructor
            public string IdEmpleado
           {
               get { return _IdEmpleado; }
               set { _IdEmpleado = value; }
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
            public string Direccion
           {
               get { return _Direccion; }
               set { _Direccion = value; }
           }
            public int Edad
           {
               get { return _Edad; }
               set { _Edad = value; }
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
            public int IdTipoEmpleado
           {
               get { return _IdTipoEmpleado; }
               set { _IdTipoEmpleado = value; }
           }
            public int IdDepartamento
           {
               get { return _IdDepartamento; }
               set { _IdDepartamento = value; }
           }
            public string Password
           {
               get { return _Password; }
               set { _Password = value; }
           }
            public int IdEstado
           {
               get { return _IdEstado; }
               set { _IdEstado = value; }
           }
       #endregion
   }
}
