using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace Entidades
{
    public class E_Registro
    {
        #region Atributos
        private string _Accion;
        private int _IdUsuario;
        private string _NombreCliente;
        private string _ApellidoPaterno;
        private string _ApellidoMaterno;
        private string _CorreoCliente;
        private string _CelularCliente;
        private string _Contrasena;
        private int _TipoUsuario;

        #endregion

        #region Constructor
        public E_Registro()
        {
            _Accion = string.Empty;
            _IdUsuario = 0;
            _NombreCliente = string.Empty;
            _ApellidoPaterno = string.Empty;
            _ApellidoMaterno = string.Empty;
            _CorreoCliente = string.Empty;
            _CelularCliente = string.Empty;
            _Contrasena = string.Empty;
            _TipoUsuario = 0;

        }
        #endregion

        #region Encapsulado
        public string Accion { get => _Accion; set => _Accion = value; }
        public int IdUsuario { get => _IdUsuario; set => _IdUsuario = value; }
        public string NombreCliente { get => _NombreCliente; set => _NombreCliente = value; }
        public string CorreoCliente { get => _CorreoCliente; set => _CorreoCliente = value; }
        public string CelularCliente { get => _CelularCliente; set => _CelularCliente = value; }
        public string Contrasena { get => _Contrasena; set => _Contrasena = value; }
        public int TipoUsuario { get => _TipoUsuario; set => _TipoUsuario = value; }
        public string ApellidoPaterno { get => _ApellidoPaterno; set => _ApellidoPaterno = value; }
        public string ApellidoMaterno { get => _ApellidoMaterno; set => _ApellidoMaterno = value; }

        #endregion




    }
    public class E_FHora 
    {
        private string _Hora;
        private double _Valor;
        private int _Duracion;

        public E_FHora(string hora, double valor, int duracion)
        {
            _Hora = hora;
            _Valor = valor;
            _Duracion = duracion;
        }
        public E_FHora()
        {
            _Hora = string.Empty;
            _Valor = 0.00;
            _Duracion = 0;
        }


        public string Hora { get => _Hora; set => _Hora = value; }
        public double Valor { get => _Valor; set => _Valor = value; }
        public int Duracion { get => _Duracion; set => _Duracion = value; }
    }

    public class E_Citas
    {
        #region Registro de citas
        private string _Accion;
        private int _Id;
        private int _Id_Usuario;
        private int _Usuario;
        private int _Servicio;
        private string _Fecha;
        private DateTime _Fechatime;
        private double _Hora;
        private bool _Pagado;
        private int _Duracion;

        private string _Cliente;
        private string _Serv;
        private string _Celular;
        private double _Precio;

        public E_Citas()
        {
           
            _Accion = string.Empty;
            _Id= 0;
            _Id_Usuario = 0;
            _Usuario = 0;
            _Servicio = 0;
            _Fecha = string.Empty;
            _Hora = 0.00;
            _Pagado = false;
            _Duracion = 0;
            _Fechatime = DateTime.Now;
            _Celular = string.Empty;
            _Cliente = string.Empty;
            _Serv = string.Empty;
            _Precio = 0.0;

           
        }
        

        public string Accion { get => _Accion; set => _Accion = value; }
        public int Id { get => _Id; set => _Id = value; }
        public int Id_Usuario { get => _Id_Usuario; set => _Id_Usuario = value; }
        public int Usuario { get => _Usuario; set => _Usuario = value; }
        public int Servicio { get => _Servicio; set => _Servicio = value; }
        public string Fecha { get => _Fecha; set => _Fecha = value; }
        public double Hora { get => _Hora; set => _Hora = value; }
        public bool Pagado { get => _Pagado; set => _Pagado = value; }
        public int Duracion { get => _Duracion; set => _Duracion = value; }
        public DateTime Fechatime { get => _Fechatime; set => _Fechatime = value; }
        public string Cliente { get => _Cliente; set => _Cliente = value; }
        public string Serv { get => _Serv; set => _Serv = value; }
        public string Celular { get => _Celular; set => _Celular = value; }
        public double Precio { get => _Precio; set => _Precio = value; }

        #endregion

    }

    public class E_Servicios
    {
        private string _Accion;
        private int _Id;
        private string _Nombre;
        private string _Descripcion;
        private decimal _Precio;
        private int _Duracion;

        public E_Servicios()
        {
            _Accion = string.Empty;
            _Id = 0;
            _Nombre = string.Empty;
            _Descripcion = string.Empty;
            _Precio = 0;
            _Duracion = 0;
        }

        public string Accion { get => _Accion; set => _Accion = value; }
        public int Id { get => _Id; set => _Id = value; }
        public string Nombre { get => _Nombre; set => _Nombre = value; }
        public string Descripcion { get => _Descripcion; set => _Descripcion = value; }
        public decimal Precio { get => _Precio; set => _Precio = value; }
        public int Duracion { get => _Duracion; set => _Duracion = value; }
    }
}
