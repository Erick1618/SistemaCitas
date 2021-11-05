using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocios;
using Entidades;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using MySql.Data.MySqlClient;


namespace Presentacion.Catalogo
{
    public partial class Citas : System.Web.UI.Page
    {
        private N_Citas NC = new N_Citas();
        private N_Servicios NS = new N_Servicios();
        private N_Registro NU = new N_Registro();

        private void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {

                if (Session["Usuario"] != null)
                { 
                    
                    Inicializa();
                    InicializaCitas();
                    LbCliente.Visible = false;
                    DDLClientes.Visible = false;
                    BtnCancelar.Visible = false;
                }
                else if(Session["Admin"] != null)
                {
                    if (Session["EditarCita"] != null)
                    {
                        E_Citas temp = (E_Citas)Session["EditarCita"];
                        
                        Inicializa();
                        ObjetoEntidad_ControlesWebForm(temp.Id);
                        Verifica_fechas_CLientes();

                        BtnCalendar.Enabled = false;
                        PnlCitas.Visible = false;
                        DDLClientes.Visible = false;
                        LbCliente.Visible = false;
                        BtnCancelar.Visible = true;
                        
                    }
                    else 
                    {
                        DDLClientes.Visible = true;
                        PnlCitas.Visible = false;
                        InicializaDDlCLientes();
                        BtnCancelar.Visible = true;
                       
                        Inicializa();
                    }
                }
                 

            }
            
        }
        public void InicializaCitas()
        {
            SqlConexion GrvCitasData = new SqlConexion();
          
                E_Registro User = (E_Registro)Session["Usuario"];
                GrvCitasAgen.DataSource = GrvCitasData.GrvCitasxCliente(User.IdUsuario);
                GrvCitasAgen.DataBind();
                GrvCitasAgen.Columns[0].Visible = false;
                GrvCitasAgen.Columns[4].Visible = false;
                GrvCitasAgen.Columns[5].Visible = false;
                GrvCitasAgen.Columns[7].Visible = false;

        }

        public void Inicializa() {
            Calendar.Visible = false;
            TbFechaCita.Enabled = false;
            MySqlConnection con = new MySqlConnection("Server=localhost;UserID=root;Database=bautyzone;Password=;");
            con.Open();
            MySqlCommand dato = new MySqlCommand("SELECT id, Nombre FROM bautyzone.Servicios", con);
            MySqlDataReader reader = dato.ExecuteReader();
            DDLServicio.DataSource = reader;
            DDLServicio.DataValueField = "id";
            DDLServicio.DataTextField = "Nombre";
            DDLServicio.DataBind();
            con.Close();
        }
        public void InicializaDDlCLientes() 
        {
            MySqlConnection con = new MySqlConnection("Server=localhost;UserID=root;Database=bautyzone;Password=;");
            con.Open();
            MySqlCommand dato = new MySqlCommand("SELECT id, Nombre, Apellido_paterno FROM bautyzone.listausers;", con);
            MySqlDataReader reader = dato.ExecuteReader();
            DDLClientes.DataSource = reader;
            DDLClientes.DataValueField = "id";
            DDLClientes.DataTextField = "Nombre";
            //DDLClientes.DataTextField = "Apellido_paterno";
            DDLClientes.DataBind();
            con.Close();
        }
        protected void ControlesCler()
        {
            TbFechaCita.Text = string.Empty;
            TbTotal.Text = string.Empty;
            
        }
        protected void ControlesOnOff(bool TrueOrFalse)
        {
            TbFechaCita.Enabled = TrueOrFalse; 
        }

        protected void DDLServicio_TextChanged(object sender, EventArgs e)
        {
            N_Servicios Servicios = new N_Servicios();
            E_Servicios Servicio = new E_Servicios();
            Servicio = Servicios.BuscarServicio(Convert.ToInt32(DDLServicio.SelectedValue));
            TbTotal.Text = Servicio.Precio.ToString();
        }
        protected E_Citas ControlesWebForm_ObjetoEntidad()
        {
            if (Session["Usuario"] != null)
            {
                if (Session["EditarCitaActual"] !=null )
                {
                    E_Citas temp = (E_Citas)Session["EditarCitaActual"];

                    E_Citas Cita1 = new E_Citas()
                    {
                        Id = temp.Id,
                        Usuario = temp.Usuario,
                        Servicio = Convert.ToInt32(DDLServicio.SelectedValue),
                        Fecha = TbFechaCita.Text,
                        Hora = Convert.ToDouble(DDLHora.SelectedValue),
                        Pagado = false

                    };
                    return Cita1;
                } 
                else {
                    E_Registro Cliente = (E_Registro)Session["Usuario"];


                    E_Citas Cita = new E_Citas()
                    {

                        Usuario = Cliente.IdUsuario,
                        Servicio = Convert.ToInt32(DDLServicio.SelectedValue),
                        Fecha = TbFechaCita.Text,
                        Hora = Convert.ToDouble(DDLHora.SelectedValue)

                    };
                    return Cita;
                }
            }
            else if(Session["Admin"] != null)
            {
                if (Session["EditarCita"] != null)
                {
                    E_Citas temp = (E_Citas)Session["EditarCita"];

                    E_Citas Cita1 = new E_Citas()
                    {
                        Id = temp.Id,
                        Usuario = temp.Usuario,
                        Servicio = Convert.ToInt32(DDLServicio.SelectedValue),
                        Fecha = TbFechaCita.Text,
                        Hora = Convert.ToDouble(DDLHora.SelectedValue),
                        Pagado = false

                    };
                    return Cita1;
                }
                
                    E_Citas Cita = new E_Citas()
                    {

                        Usuario = Convert.ToInt32(DDLClientes.SelectedValue),
                        Servicio = Convert.ToInt32(DDLServicio.SelectedValue),
                        Fecha = TbFechaCita.Text,
                        Hora = Convert.ToDouble(DDLHora.SelectedValue),
                        Pagado = false

                    };
                    return Cita;
            

            }
            E_Citas Citae = new E_Citas();
                return Citae;
        }

        protected void ObjetoEntidad_ControlesWebForm(int IdUsuario)
        {
            E_Citas Cita = NC.BuscarCita(IdUsuario);
            DDLServicio.SelectedValue = Cita.Servicio.ToString();
            E_Servicios Serv = NS.BuscarServicio(Cita.Servicio);
            TbTotal.Text = Serv.Precio.ToString();
            DDLHora.DataTextField = Cita.Hora.ToString();
            TbFechaCita.Text = Cita.Fecha;
            
        }
        protected void BtnAgendaCita_Click(object sender, EventArgs e)
        {
            if (Session["EditarCita"] != null)
            {
                string R = NC.ModificarCita(ControlesWebForm_ObjetoEntidad());
                if (R.Contains("Exito")) { Response.Redirect("Usuarios.aspx"); }

            } else if (Session["EditarCitaActual"] != null) 
            {
                string R = NC.ModificarCita(ControlesWebForm_ObjetoEntidad());
                if (R.Contains("Exito")) { Response.Redirect("Citas.aspx"); }
            }
            else {
                string R = NC.InsertarCita(ControlesWebForm_ObjetoEntidad());

                if (R.Contains("Exito"))
                { if (Session["Admin"] != null || Session["EditarCita"] != null)
                    {
                        Response.Redirect("Usuarios.aspx");
                    }
                    else
                    {
                        ControlesCler();
                        InicializaCitas();
                        Response.Redirect("Citas.aspx");
                    }
                }
            }
        }

        protected void Verifica_fechas_CLientes()
        {
            string[] hr = { "8:00", "9:00", "10:00", "11:00", "12:00", "13:00", "14:00", "15:00", "16:00", "17:00" };
            double[] hrs = { 8.00, 9.00, 10.00, 11.00, 12.00, 13.00, 14.00, 15.00, 16.00, 17.00 };

            List<E_Citas> Listafecha = new List<E_Citas>();
            Dictionary<int, int> listaDdlHora = new Dictionary<int, int>();

            DateTime fechaactual = DateTime.Today;
            DateTime fechaTB = DateTime.Parse(TbFechaCita.Text.ToString());

            Listafecha = NC.BuscarCita(TbFechaCita.Text);// encuentra la fecha y las guarda en una lista
            int result = 0;
             result = fechaactual.CompareTo(fechaTB);// compara la fecha recuperada del text box con la actual

            BtnAgendaCita.Enabled = true;
            Hora.Text = "Horario Disponible:";
            DDLHora.Enabled = true;

            if (Listafecha != null)// si tiene algo la lista entra
            {

                if (result == 0)// si la fecha recuperada es igual ala fecha actual entra
                {

                    List<E_FHora> listnegra = new List<E_FHora>();
                    List<E_FHora> Lsthorario = new List<E_FHora>();


                    for (int f = 0; f < Listafecha.Count; f++)
                    {
                        switch (Listafecha[f].Hora)
                        {
                            case 8: listnegra.Add(new E_FHora { Valor = 8.00, Duracion = Listafecha[f].Duracion }); break;
                            case 9: listnegra.Add(new E_FHora { Valor = 9.00, Duracion = Listafecha[f].Duracion }); break;
                            case 10: listnegra.Add(new E_FHora { Valor = 10.00, Duracion = Listafecha[f].Duracion }); break;
                            case 11: listnegra.Add(new E_FHora { Valor = 11.00, Duracion = Listafecha[f].Duracion }); break;
                            case 12: listnegra.Add(new E_FHora { Valor = 12.00, Duracion = Listafecha[f].Duracion }); break;
                            case 13: listnegra.Add(new E_FHora { Valor = 13.00, Duracion = Listafecha[f].Duracion }); break;
                            case 14: listnegra.Add(new E_FHora { Valor = 14.00, Duracion = Listafecha[f].Duracion }); break;
                            case 15: listnegra.Add(new E_FHora { Valor = 15.00, Duracion = Listafecha[f].Duracion }); break;
                            case 16: listnegra.Add(new E_FHora { Valor = 16.00, Duracion = Listafecha[f].Duracion }); break;
                            case 17: listnegra.Add(new E_FHora { Valor = 17.00, Duracion = Listafecha[f].Duracion }); break;
                        }
                    }
                    for (int x = 0; x < 10; x++)
                    {
                        E_FHora temp = new E_FHora();
                        temp.Hora = hr[x];
                        temp.Valor = hrs[x];

                        Lsthorario.Add(temp);
                    }
                    for (int x = 0; x < listnegra.Count(); x++)
                    {

                        int ubi = 0;
                        if (listnegra[x].Duracion == 1) {
                            switch (listnegra[x].Valor)
                            {
                                case 8: ubi = Findindex(Lsthorario, 8.00, "8:00"); Lsthorario.RemoveAt(ubi); break;
                                case 9: ubi = Findindex(Lsthorario, 9.00, "9:00"); Lsthorario.RemoveAt(ubi); break;
                                case 10: ubi = Findindex(Lsthorario, 10.00, "10:00"); Lsthorario.RemoveAt(ubi); break;
                                case 11: ubi = Findindex(Lsthorario, 11.00, "11:00"); Lsthorario.RemoveAt(ubi); break;
                                case 12: ubi = Findindex(Lsthorario, 12.00, "12:00"); Lsthorario.RemoveAt(ubi); break;
                                case 13: ubi = Findindex(Lsthorario, 13.00, "13:00"); Lsthorario.RemoveAt(ubi); break;
                                case 14: ubi = Findindex(Lsthorario, 14.00, "14:00"); Lsthorario.RemoveAt(ubi); break;
                                case 15: ubi = Findindex(Lsthorario, 15.00, "15:00"); Lsthorario.RemoveAt(ubi); break;
                                case 16: ubi = Findindex(Lsthorario, 16.00, "16:00"); Lsthorario.RemoveAt(ubi); break;
                                case 17: ubi = Findindex(Lsthorario, 17.00, "17:00"); Lsthorario.RemoveAt(ubi); break;
                            }
                        }
                        if (listnegra[x].Duracion == 2)
                        {
                            switch (listnegra[x].Valor)
                            {
                                case 8: ubi = Findindex(Lsthorario, 8.00, "8:00"); Lsthorario.RemoveAt(ubi); Lsthorario.RemoveAt(ubi); break;
                                case 9: ubi = Findindex(Lsthorario, 9.00, "9:00"); Lsthorario.RemoveAt(ubi); Lsthorario.RemoveAt(ubi); break;
                                case 10: ubi = Findindex(Lsthorario, 10.00, "10:00"); Lsthorario.RemoveAt(ubi); Lsthorario.RemoveAt(ubi); break;
                                case 11: ubi = Findindex(Lsthorario, 11.00, "11:00"); Lsthorario.RemoveAt(ubi); Lsthorario.RemoveAt(ubi); break;
                                case 12: ubi = Findindex(Lsthorario, 12.00, "12:00"); Lsthorario.RemoveAt(ubi); Lsthorario.RemoveAt(ubi); break;
                                case 13: ubi = Findindex(Lsthorario, 13.00, "13:00"); Lsthorario.RemoveAt(ubi); Lsthorario.RemoveAt(ubi); break;
                                case 14: ubi = Findindex(Lsthorario, 14.00, "14:00"); Lsthorario.RemoveAt(ubi); Lsthorario.RemoveAt(ubi); break;
                                case 15: ubi = Findindex(Lsthorario, 15.00, "15:00"); Lsthorario.RemoveAt(ubi); Lsthorario.RemoveAt(ubi); break;
                                case 16: ubi = Findindex(Lsthorario, 16.00, "16:00"); Lsthorario.RemoveAt(ubi); Lsthorario.RemoveAt(ubi); break;
                                case 17: ubi = Findindex(Lsthorario, 17.00, "17:00"); Lsthorario.RemoveAt(ubi); Lsthorario.RemoveAt(ubi); break;
                            }
                        }
                    }

                    DDLHora.DataSource = Lsthorario;
                    DDLHora.DataValueField = "Valor";
                    DDLHora.DataTextField = "Hora";
                    DDLHora.DataBind();
                }// si la fecha recuperada es igual ala fecha actual entra

                else if (result == -1)// si la fecha recuperada es posterior a la actual entra
                {
                    List<E_FHora> listnegra = new List<E_FHora>();
                    List<E_FHora> Lsthorario = new List<E_FHora>();


                    for (int f = 0; f < Listafecha.Count; f++)
                    {
                        switch (Listafecha[f].Hora)
                        {
                            case 8: listnegra.Add(new E_FHora { Valor = 8.00, Duracion = Listafecha[f].Duracion }); break;
                            case 9: listnegra.Add(new E_FHora { Valor = 9.00, Duracion = Listafecha[f].Duracion }); break;
                            case 10: listnegra.Add(new E_FHora { Valor = 10.00, Duracion = Listafecha[f].Duracion }); break;
                            case 11: listnegra.Add(new E_FHora { Valor = 11.00, Duracion = Listafecha[f].Duracion }); break;
                            case 12: listnegra.Add(new E_FHora { Valor = 12.00, Duracion = Listafecha[f].Duracion }); break;
                            case 13: listnegra.Add(new E_FHora { Valor = 13.00, Duracion = Listafecha[f].Duracion }); break;
                            case 14: listnegra.Add(new E_FHora { Valor = 14.00, Duracion = Listafecha[f].Duracion }); break;
                            case 15: listnegra.Add(new E_FHora { Valor = 15.00, Duracion = Listafecha[f].Duracion }); break;
                            case 16: listnegra.Add(new E_FHora { Valor = 16.00, Duracion = Listafecha[f].Duracion }); break;
                            case 17: listnegra.Add(new E_FHora { Valor = 17.00, Duracion = Listafecha[f].Duracion }); break;
                        }
                    }
                    for (int x = 0; x < 10; x++)
                    {
                        E_FHora temp = new E_FHora();
                        temp.Hora = hr[x];
                        temp.Valor = hrs[x];

                        Lsthorario.Add(temp);
                    }
                    for (int x = 0; x < listnegra.Count(); x++)
                    {

                        int ubi = 0;
                        if (listnegra[x].Duracion == 1)
                        {
                            switch (listnegra[x].Valor)
                            {
                                case 8: ubi = Findindex(Lsthorario, 8.00, "8:00"); Lsthorario.RemoveAt(ubi); break;
                                case 9: ubi = Findindex(Lsthorario, 9.00, "9:00"); Lsthorario.RemoveAt(ubi); break;
                                case 10: ubi = Findindex(Lsthorario, 10.00, "10:00"); Lsthorario.RemoveAt(ubi); break;
                                case 11: ubi = Findindex(Lsthorario, 11.00, "11:00"); Lsthorario.RemoveAt(ubi); break;
                                case 12: ubi = Findindex(Lsthorario, 12.00, "12:00"); Lsthorario.RemoveAt(ubi); break;
                                case 13: ubi = Findindex(Lsthorario, 13.00, "13:00"); Lsthorario.RemoveAt(ubi); break;
                                case 14: ubi = Findindex(Lsthorario, 14.00, "14:00"); Lsthorario.RemoveAt(ubi); break;
                                case 15: ubi = Findindex(Lsthorario, 15.00, "15:00"); Lsthorario.RemoveAt(ubi); break;
                                case 16: ubi = Findindex(Lsthorario, 16.00, "16:00"); Lsthorario.RemoveAt(ubi); break;
                                case 17: ubi = Findindex(Lsthorario, 17.00, "17:00"); Lsthorario.RemoveAt(ubi); break;
                            }
                        }
                        if (listnegra[x].Duracion == 2)
                        {
                            switch (listnegra[x].Valor)
                            {
                                case 8: ubi = Findindex(Lsthorario, 8.00, "8:00"); Lsthorario.RemoveAt(ubi); Lsthorario.RemoveAt(ubi); break;
                                case 9: ubi = Findindex(Lsthorario, 9.00, "9:00"); Lsthorario.RemoveAt(ubi); Lsthorario.RemoveAt(ubi); break;
                                case 10: ubi = Findindex(Lsthorario, 10.00, "10:00"); Lsthorario.RemoveAt(ubi); Lsthorario.RemoveAt(ubi); break;
                                case 11: ubi = Findindex(Lsthorario, 11.00, "11:00"); Lsthorario.RemoveAt(ubi); Lsthorario.RemoveAt(ubi); break;
                                case 12: ubi = Findindex(Lsthorario, 12.00, "12:00"); Lsthorario.RemoveAt(ubi); Lsthorario.RemoveAt(ubi); break;
                                case 13: ubi = Findindex(Lsthorario, 13.00, "13:00"); Lsthorario.RemoveAt(ubi); Lsthorario.RemoveAt(ubi); break;
                                case 14: ubi = Findindex(Lsthorario, 14.00, "14:00"); Lsthorario.RemoveAt(ubi); Lsthorario.RemoveAt(ubi); break;
                                case 15: ubi = Findindex(Lsthorario, 15.00, "15:00"); Lsthorario.RemoveAt(ubi); Lsthorario.RemoveAt(ubi); break;
                                case 16: ubi = Findindex(Lsthorario, 16.00, "16:00"); Lsthorario.RemoveAt(ubi); Lsthorario.RemoveAt(ubi); break;
                                case 17: ubi = Findindex(Lsthorario, 17.00, "17:00"); Lsthorario.RemoveAt(ubi); Lsthorario.RemoveAt(ubi); break;
                            }
                        }
                    }

                    DDLHora.DataSource = Lsthorario;
                    DDLHora.DataValueField = "Valor";
                    DDLHora.DataTextField = "Hora";
                    DDLHora.DataBind();

                }

            }
            else
            {
                if (result==1) 
                {

                    BtnAgendaCita.Enabled = false;
                    DDLHora.Enabled = false;
                    Hora.Text = "Horario NO Disponible: Fecha expirada";
                }
                else if(result == 0 || result == -1)
                {
                    List<E_FHora> Lstdis = new List<E_FHora>();


                    for (int j = 0; j < 10; j++)
                    {
                        E_FHora temp = new E_FHora();
                        temp.Hora = hr[j];
                        temp.Valor = hrs[j];

                        Lstdis.Add(temp);


                    }

                    DDLHora.DataSource = Lstdis;
                    DDLHora.DataValueField = "Valor";
                    DDLHora.DataTextField = "Hora";
                    DDLHora.DataBind();
                }
            
            }

        }

        protected int Findindex(List<E_FHora> hora, double hr,string hrs)
        {
            int i = 0;
            foreach (var xd in hora) 
            {
                if (xd.Hora == hrs && xd.Valor == hr)
                {
                    break;
                }
                i++;
            }
            return i;
        }

        
        protected void GvrBtnborrar_Click(object sender, EventArgs e)
        {
            GridViewRow row = (GridViewRow)((LinkButton)sender).Parent.Parent;
            GrvCitasAgen.SelectedIndex = row.RowIndex;
            string R = NC.BorrarCita(Convert.ToInt32(row.Cells[1].Text));

            if (R.Contains("Exito")) {  InicializaCitas(); }

        }

        protected void GrvCitasAgen_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            e.Cancel = true;
            
            HfIdUsuario.Value = GrvCitasAgen.DataKeys[e.RowIndex].Value.ToString();
            string R = NC.BorrarCita(Convert.ToInt16(HfIdUsuario.Value));
            if (R.Contains("Exito"))
                Response.Redirect("Citas.aspx");

        }

        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            Response.Redirect("Usuarios.aspx");
        }

        protected void GrvCitasAgen_RowEditing(object sender, GridViewEditEventArgs e)
        {
            e.Cancel = true;
            HfIdUsuario.Value = GrvCitasAgen.DataKeys[e.NewEditIndex].Value.ToString();
            E_Citas Cita = NC.BuscarCita(Convert.ToInt32(HfIdUsuario.Value));
            Session["EditarCitaActual"] = Cita;
            ObjetoEntidad_ControlesWebForm(Cita.Id);
            Verifica_fechas_CLientes();
            BtnCalendar.Enabled = false;
         
        }

        

        protected void BtnCalendar_Click(object sender, EventArgs e)
        {
            Calendar.Visible = !Calendar.Visible;
        }

        protected void Calendar_SelectionChanged(object sender, EventArgs e)
        {
            TbFechaCita.Text = string.Empty;
            TbFechaCita.Text = Calendar.SelectedDate.ToShortDateString();
            Calendar.Visible = false;
            BtnCalendar.Enabled = true;
            Verifica_fechas_CLientes();
        }

        protected void Calendar_DayRender(object sender, DayRenderEventArgs e)
        {
            
            
           
            
            
        }
    }
}