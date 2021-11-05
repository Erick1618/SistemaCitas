using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidades;
using MySql.Data.MySqlClient;
using System.Data;

namespace Negocios
{

    public class SqlConexion
    {
       
        public DataTable GrvCitas() 
        {
            MySqlConnection con = new MySqlConnection("Server=localhost;UserID=root;Persist Security Info=True;Database=bautyzone;Password=;convert Zero Datetime=True;Allow Zero Datetime=True;");
            con.Open();
            MySqlCommand dato = new MySqlCommand("SELECT * FROM bautyzone.listacitas order by Fecha;", con);
            MySqlDataReader reader = dato.ExecuteReader();
            DataTable tabladatos = new DataTable();
            List<E_Citas> LstCitaOrd = new List<E_Citas>();
            tabladatos.Columns.AddRange(new DataColumn[]{
                new DataColumn("id",typeof(string)),
                new DataColumn("Fecha",typeof(string)),
                new DataColumn("Hora",typeof(double)),
                new DataColumn("Servicio",typeof(string)),
                new DataColumn("Nombre",typeof(string)),
                new DataColumn("Celular",typeof(string)),
                new DataColumn("Precio",typeof(string)),
                new DataColumn("Pagado",typeof(bool)),
                new DataColumn("ID_Usuario",typeof(string)),
            });
            if (reader.HasRows)
            {
                while (reader.Read())
                {

                    LstCitaOrd.Add(new E_Citas
                    {
                        Id = Convert.ToInt32(reader["id"]),
                        Fecha = reader["Fecha"].ToString(),
                        Fechatime = DateTime.Parse(reader["Fecha"].ToString()),
                        Hora = Convert.ToDouble(reader["Hora"]),
                        Serv = reader["Servicio"].ToString(),
                        Cliente = reader["Nombre"].ToString(),
                        Celular = reader["Celular"].ToString(),
                        Precio = Convert.ToDouble(reader["Precio"]),
                        Pagado = Convert.ToBoolean(reader["Pagado"]),
                        Id_Usuario = Convert.ToInt32(reader["ID_Usuario"])
                    });
                }

                IEnumerable<E_Citas> LstOrdenada = LstCitaOrd.OrderBy(temp => temp.Fechatime);

                foreach (var xd in LstCitaOrd)
                {
                    tabladatos.Rows.Add(
                          xd.Id, xd.Fecha, xd.Hora, xd.Serv, xd.Cliente, xd.Celular, xd.Precio, xd.Pagado, xd.Id_Usuario
                          );
                }

            }
            con.Close();
            return tabladatos;
        }
        public DataTable GrvCitasxCliente(int id) 
        {
            MySqlConnection con = new MySqlConnection("Server=localhost;UserID=root;Persist Security Info=True;Database=bautyzone;Password=;convert Zero Datetime=True;Allow Zero Datetime=True;");
            con.Open();
            MySqlCommand dato = new MySqlCommand("SELECT * FROM bautyzone.listacitas where ID_Usuario="+id+ ";", con);
            MySqlDataReader reader = dato.ExecuteReader();
            DataTable tabladatos = new DataTable();
            List<E_Citas> LstCitaOrd = new List<E_Citas>();
            tabladatos.Columns.AddRange(new DataColumn[]{
                new DataColumn("id",typeof(int)),
                new DataColumn("Fecha",typeof(string)),
                new DataColumn("Hora",typeof(double)),
                new DataColumn("Servicio",typeof(string)),
                new DataColumn("Nombre",typeof(string)),
                new DataColumn("Celular",typeof(string)),
                new DataColumn("Precio",typeof(double)),
                new DataColumn("Pagado",typeof(bool)),
                new DataColumn("ID_Usuario",typeof(int)),
            });
            if (reader.HasRows)
            {
                while (reader.Read())
                {
      
                   LstCitaOrd.Add(new E_Citas { 
                     Id = Convert.ToInt32(reader["id"]),
                     Fecha = reader["Fecha"].ToString(),
                     Fechatime = DateTime.Parse(reader["Fecha"].ToString()),
                     Hora = Convert.ToDouble(reader["Hora"]),
                     Serv = reader["Servicio"].ToString(),
                     Cliente = reader["Nombre"].ToString(),
                     Celular =  reader["Celular"].ToString(),
                     Precio = Convert.ToDouble(reader["Precio"]),
                     Pagado = Convert.ToBoolean( reader["Pagado"]),
                     Id_Usuario = Convert.ToInt32(reader["ID_Usuario"])
                      }); 
                }
               
                IEnumerable<E_Citas> LstOrdenada = LstCitaOrd.OrderBy(temp => temp.Fechatime);

                foreach (var xd in LstCitaOrd)
                {
                    tabladatos.Rows.Add(
                          xd.Id, xd.Fecha, xd.Hora, xd.Serv, xd.Cliente, xd.Celular, xd.Precio, xd.Pagado, xd.Id_Usuario
                          ) ;
                }

            }
            
            con.Close();
            return tabladatos;
        }
        public DataTable GrvUsusarios()
        {
            MySqlConnection con = new MySqlConnection("Server=localhost;UserID=root;Persist Security Info=True;Database=bautyzone;Password=;convert Zero Datetime=True;Allow Zero Datetime=True;");
            con.Open();
            MySqlCommand dato = new MySqlCommand("SELECT * FROM bautyzone.listausers;", con);
            MySqlDataReader reader = dato.ExecuteReader();
            DataTable tabladatos = new DataTable();
            tabladatos.Columns.AddRange(new DataColumn[]{
                new DataColumn("id",typeof(string)),
                new DataColumn("Nombre",typeof(string)),
                new DataColumn("Apellido_paterno",typeof(string)),
                new DataColumn("Apellido_materno",typeof(string)),
                new DataColumn("Correo",typeof(string)),
                new DataColumn("Contrasenia",typeof(string)),
                new DataColumn("Celular",typeof(string)),
            });
            if (reader.HasRows)
            {
                while (reader.Read())
                {

                    tabladatos.Rows.Add(
                        reader["id"].ToString(),
                        reader["Nombre"].ToString(),
                        reader["Apellido_paterno"].ToString(),
                        reader["Apellido_materno"].ToString(),
                        reader["Correo"].ToString(),
                        reader["Contrasenia"].ToString(),
                        reader["Celular"].ToString()
                        );
                }
            }
            con.Close();
            return tabladatos;
        }
        public DataTable GrvServicios() 
        {
            MySqlConnection con = new MySqlConnection("Server=localhost;UserID=root;Persist Security Info=True;Database=bautyzone;Password=;convert Zero Datetime=True;Allow Zero Datetime=True;");
            con.Open();
            MySqlCommand dato = new MySqlCommand("SELECT id,Nombre,Descripcion,precio FROM bautyzone.servicios;", con);
            MySqlDataReader reader = dato.ExecuteReader();
            DataTable tabladatos = new DataTable();
            tabladatos.Columns.AddRange(new DataColumn[]{
                new DataColumn("id",typeof(string)),
                new DataColumn("Nombre",typeof(string)),
                new DataColumn("Descripcion",typeof(string)),
                new DataColumn("Precio",typeof(decimal)),
            });
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    tabladatos.Rows.Add(
                      reader["id"].ToString(),
                      reader["Nombre"].ToString(),
                      reader["Descripcion"].ToString(),
                      reader["Precio"].ToString()
                      );
                }
            }
            con.Close();
            return tabladatos;
        }

    } 
    
    public class N_Registro
    {
        public string InsertarCliente(E_Registro Cliente)
        {
            MySqlConnection con = new MySqlConnection("Server=localhost;UserID=root;Database=bautyzone;Password=;");
            con.Open();
            Cliente.Accion = "INSERTAR";
            try
            {
                MySqlCommand dato1 = new MySqlCommand("call bautyzone.Clientes(" +
               "'" + Cliente.Accion + "', 0, 2, '" + Cliente.NombreCliente + "', '" + Cliente.ApellidoPaterno + "', " +
               "'" + Cliente.ApellidoMaterno + "', '" + Cliente.CorreoCliente + "', '" + Cliente.CelularCliente + "', '" + Cliente.Contrasena + "');", con);
                dato1.ExecuteNonQuery();
                con.Close();
                return "Exito";
            }
            catch (MySqlException ex)
            {
                con.Close();
                return "EL Error es: " + ex;
            }

        }
        public string BorrarCliente(int id)
        {
            MySqlConnection con = new MySqlConnection("Server=localhost;UserID=root;Database=bautyzone;Password=;");
            con.Open();
            try
            {
                MySqlCommand dato1 = new MySqlCommand("call bautyzone.Clientes('BORRAR', " + id + ", 0, '', '', '', '', '','');", con);
                dato1.ExecuteNonQuery();
                con.Close();
                return "Exito";
            }
            catch (MySqlException ex)
            {
                con.Close();
                return "EL Error es: " + ex;
            }

        }
        public string ModificarCliente(E_Registro Cliente)
        {
            MySqlConnection con = new MySqlConnection("Server=localhost;UserID=root;Database=bautyzone;Password=;");
            con.Open();
            Cliente.Accion = "MODIFICAR";
            try
            {
                MySqlCommand dato1 = new MySqlCommand("call bautyzone.Clientes(" +
               "'" + Cliente.Accion + "',"+Cliente.IdUsuario+", 2, '" + Cliente.NombreCliente + "', '" + Cliente.ApellidoPaterno + "', " +
               "'" + Cliente.ApellidoMaterno + "', '" + Cliente.CorreoCliente + "', '" + Cliente.CelularCliente + "', '" + Cliente.Contrasena + "');", con);
                dato1.ExecuteNonQuery();
                con.Close();
                return "Exito";
            }
            catch (MySqlException ex)
            {
                con.Close();
                return "EL Error es: " + ex;
            }

        }
        public E_Registro BuscarCliente(string Correo)
        {
            MySqlConnection con = new MySqlConnection("Server=localhost;UserID=root;Database=bautyzone;Password=;");
            con.Open();
            MySqlCommand dato = new MySqlCommand("SELECT * FROM bautyzone.listausers where Correo=\"" + Correo + "\";", con);
            MySqlDataReader reader = dato.ExecuteReader();
            E_Registro Cliente = new E_Registro();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    Cliente.IdUsuario = Convert.ToInt32(reader["id"].ToString());
                    Cliente.NombreCliente = reader["Nombre"].ToString();
                    Cliente.ApellidoPaterno = reader["Apellido_paterno"].ToString();
                    Cliente.ApellidoMaterno = reader["Apellido_materno"].ToString();
                    Cliente.CorreoCliente = reader["Correo"].ToString();
                    Cliente.Contrasena = reader["Contrasenia"].ToString();
                    Cliente.CelularCliente = reader["Celular"].ToString();
                    Cliente.TipoUsuario = Convert.ToInt32(reader["Tipo_usuario"].ToString());
                }
            }
            con.Close();
            return Cliente;
        }
        public E_Registro BuscarCliente(int id)
        {
            MySqlConnection con = new MySqlConnection("Server=localhost;UserID=root;Database=bautyzone;Password=;");
            con.Open();
            MySqlCommand dato = new MySqlCommand("SELECT * FROM bautyzone.listausers where id=" + id + ";", con);
            MySqlDataReader reader = dato.ExecuteReader();
            E_Registro Cliente = new E_Registro();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    Cliente.IdUsuario = Convert.ToInt32(reader["id"].ToString());
                    Cliente.NombreCliente = reader["Nombre"].ToString();
                    Cliente.ApellidoPaterno = reader["Apellido_paterno"].ToString();
                    Cliente.ApellidoMaterno = reader["Apellido_materno"].ToString();
                    Cliente.CorreoCliente = reader["Correo"].ToString();
                    Cliente.Contrasena = reader["Contrasenia"].ToString();
                    Cliente.CelularCliente = reader["Celular"].ToString();
                }
            }
            con.Close();
            return Cliente;
        }
    }

    public class N_Citas 
    {
        public string InsertarCita(E_Citas Cita)
        {
            MySqlConnection con = new MySqlConnection("Server=localhost;UserID=root;Persist Security Info=True;Database=bautyzone;Password=;convert Zero Datetime=True;Allow Zero Datetime=True;");
            con.Open();
            Cita.Accion = "INSERTAR";
            try
            {
                MySqlCommand dato1 = new MySqlCommand("call bautyzone.Citas(" +
               "'" + Cita.Accion + "', 0,'" + Cita.Servicio + "', '" + Cita.Usuario + "', " +
               "'" + Cita.Fecha + "', '" + Cita.Hora + "', '" + Cita.Pagado + "');", con);
                dato1.ExecuteNonQuery();
                con.Close();
                return "Exito";
            }
            catch (MySqlException ex)
            {
                con.Close();
                return "EL Error es: " + ex;
            }

        }
        public string BorrarCita(int id)
        {
            MySqlConnection con = new MySqlConnection("Server=localhost;UserID=root;Persist Security Info=True;Database=bautyzone;Password=;convert Zero Datetime=True;Allow Zero Datetime=True;");
            con.Open();
            try
            {
                MySqlCommand dato1 = new MySqlCommand("call bautyzone.Citas('BORRAR', "+id+ ", 0 , '', '', '', '', '', '');", con);
                dato1.ExecuteNonQuery();
                con.Close();
                return "Exito";
            }
            catch (MySqlException ex)
            {
                con.Close();
                return "EL Error es: " + ex;
            }

        }
        public string ModificarCita(E_Citas Cita)
        {
            MySqlConnection con = new MySqlConnection("Server=localhost;UserID=root;Persist Security Info=True;Database=bautyzone;Password=;convert Zero Datetime=True;Allow Zero Datetime=True;");
            con.Open();
            Cita.Accion = "MODIFICAR";
            try
            {
                MySqlCommand dato1 = new MySqlCommand("call bautyzone.Citas(" +
               "'" + Cita.Accion + "', "+Cita.Id+",'" + Cita.Servicio + "', '" + Cita.Usuario + "', " +
               "'" + Cita.Fecha + "', '" + Cita.Hora + "', '" + Cita.Pagado + "');", con);
                dato1.ExecuteNonQuery();
                con.Close();
                return "Exito";
            }
            catch (MySqlException ex)
            {
                con.Close();
                return "EL Error es: " + ex;
            }

        }
        public E_Citas BuscarCita(int id)
        {
            MySqlConnection con = new MySqlConnection("Server=localhost;UserID=root;Persist Security Info=True;Database=bautyzone;Password=;convert Zero Datetime=True;Allow Zero Datetime=True;");
            con.Open();
            MySqlCommand dato = new MySqlCommand("SELECT * FROM bautyzone.citas where id=" + id + ";", con);
            MySqlDataReader reader = dato.ExecuteReader();
            E_Citas Cita = new E_Citas();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    Cita.Id = Convert.ToInt32(reader["id"].ToString());
                    Cita.Fecha = reader["Fecha"].ToString();
                    Cita.Hora = Convert.ToDouble(reader["Hora"]);
                    Cita.Servicio = Convert.ToInt32(reader["Servicio"].ToString());
                    Cita.Usuario = Convert.ToInt32(reader["Usuario"].ToString());
                    Cita.Pagado = Convert.ToBoolean(reader["Pagado"]);

                }
            }
            con.Close();
            return Cita;
        }
        public List<E_Citas> BuscarCita(string fecha)
        {
            List<E_Citas> listaFecha = new List<E_Citas>();
            MySqlConnection con = new MySqlConnection("Server=localhost;UserID=root;Persist Security Info=True;Database=bautyzone;Password=;convert Zero Datetime=True;Allow Zero Datetime=True;");
            con.Open();
            MySqlCommand dato = new MySqlCommand("SELECT c.id, c.Fecha, c.hora , s.duracion FROM bautyzone.citas c, bautyzone.servicios s where s.id = c.Servicio and Fecha=\"" + fecha + "\";", con);
            MySqlDataReader reader = dato.ExecuteReader();
           
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    E_Citas Cita = new E_Citas();
                    Cita.Id = Convert.ToInt32(reader["id"].ToString());
                    Cita.Fecha = reader["Fecha"].ToString();
                    Cita.Hora = Convert.ToDouble(reader["Hora"]);
                    Cita.Duracion = Convert.ToInt32(reader["duracion"]);
                    listaFecha.Add(Cita);

                }
                con.Close();
                return listaFecha;
            }
            else {
                con.Close();
                return listaFecha = null;
            }
           
        }
    }
    public class N_Servicios 
    {
        public string InsertarServicio(E_Servicios Servicio)
        {
            MySqlConnection con = new MySqlConnection("Server=localhost;UserID=root;Database=bautyzone;Password=;");
            con.Open();
            Servicio.Accion = "INSERTAR";
            try
            {
                MySqlCommand dato = new MySqlCommand("call bautyzone.Servicios(" +
               "'" + Servicio.Accion + "', 0,'" + Servicio.Nombre + "', '" + Servicio.Descripcion + "', " +
               "'" + Servicio.Precio + "');", con);
                dato.ExecuteNonQuery();
                con.Close();
                return "Exito";
            }
            catch (MySqlException ex)
            {
                con.Close();
                return "EL Error es: " + ex;
            }

        }
        public string BorrarServicio(int id)
        {
            MySqlConnection con = new MySqlConnection("Server=localhost;UserID=root;Database=bautyzone;Password=;");
            con.Open();
            try
            {
                MySqlCommand dato1 = new MySqlCommand("call bautyzone.Servicios('BORRAR', " + id + ", '', '', '');", con);
                dato1.ExecuteNonQuery();
                con.Close();
                return "Exito";
            }
            catch (MySqlException ex)
            {
                con.Close();
                return "EL Error es: " + ex;
            }

        }
        public string ModificarServicio(E_Servicios Servicio)
        {
            MySqlConnection con = new MySqlConnection("Server=localhost;UserID=root;Database=bautyzone;Password=;");
            con.Open();
            Servicio.Accion = "MODIFICAR";
            try
            {
                MySqlCommand dato = new MySqlCommand("call bautyzone.Servicios(" +
              "'" + Servicio.Accion + "', "+Servicio.Id+",'" + Servicio.Nombre + "', '" + Servicio.Descripcion + "', " +
              "'" + Servicio.Precio + "');", con);
                dato.ExecuteNonQuery();
                con.Close();
                return "Exito";
            }
            catch (MySqlException ex)
            {
                con.Close();
                return "EL Error es: " + ex;
            }

        }
        public E_Servicios BuscarServicio(int id)
        {
            MySqlConnection con = new MySqlConnection("Server=localhost;UserID=root;Database=bautyzone;Password=;");
            con.Open();
            MySqlCommand dato = new MySqlCommand("SELECT id, Nombre, Descripcion, Precio FROM bautyzone.Servicios where id=" + id + ";", con);
            MySqlDataReader reader = dato.ExecuteReader();
            E_Servicios Servicio = new E_Servicios();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    Servicio.Id = Convert.ToInt32(reader["id"].ToString());
                    Servicio.Nombre = reader["Nombre"].ToString();
                    Servicio.Descripcion = reader["Descripcion"].ToString();
                    Servicio.Precio = Convert.ToDecimal(reader["Precio"]);
                }
            }
            con.Close();
            return Servicio;
        }
    }

    

 
}
