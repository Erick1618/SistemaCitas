using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocios;


namespace Presentacion.Catalogo
{
    public partial class Usuarios : System.Web.UI.Page
    {
        private N_Registro NC = new N_Registro();
        private N_Citas NE = new N_Citas();
        private N_Servicios NS = new N_Servicios();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) 
            {
                if (Session["Admin"] != null)
                {
                    InicializaGRV();
                    PnlNServ.Visible = false;
                    VisibleComponentesServ(false);
                    LbtnEditarServicio.Visible = false;
                }
                else 
                {
                    PnlNServ.Visible = false;
                    PnlServicios.Visible = false;
                    PnlCitas.Visible = false;
                    PnlUsers.Visible = false;
                    VisibleComponentesServ(false);
                }
                
            }
            
           
        }
        public void InicializaGRV() 
        {
            SqlConexion GrvCon = new SqlConexion();
            GriCitas.DataSource = GrvCon.GrvCitas();
            GriCitas.DataBind();
            GriCitas.Columns[0].Visible = false;
            GrvUsers.DataSource = GrvCon.GrvUsusarios();
            GrvUsers.DataBind();
            GrvUsers.Columns[0].Visible = false;
            GrvServicios.DataSource = GrvCon.GrvServicios();
            GrvServicios.DataBind();
            GrvServicios.Columns[0].Visible = false;
            PnlServicios.Visible = true;
            PnlCitas.Visible = true;
            PnlUsers.Visible = true;
        }
        public void VisibleComponentesServ(bool IO) 
        {
            LbNomServicio.Visible = IO;
            TbNomServicio.Visible = IO;
            LbDescServicio.Visible = IO;
            TbDescServicio.Visible = IO;
            LbPrecioServicio.Visible = IO;
            TbPrecioServicio.Visible = IO;
            LbtnCancelarServicio.Visible = IO;
        }
        #region Metodos generales


        //protected void ControlesOFF()
        //{

        //    PnlCapturaDatos.Visible = false;
        //    BtnEliminar.Visible = false;
        //    BtnModificar.Visible = false;

        //}
        //protected void ControlesClear()
        //{
        //    TbNombreCliente.Text = string.Empty;
        //    TbApellidosCliente.Text = string.Empty;
        //    TbCelular.Text = string.Empty;
        //    TbEmail.Text = string.Empty;
        //    TbContrasena.Text = string.Empty;

        //}
        //protected void ControlesOnOff(bool TrueOrFalse)
        //{

        //    TbNombreCliente.Enabled = TrueOrFalse;
        //    TbApellidosCliente.Enabled = TrueOrFalse;
        //    TbCelular.Enabled = TrueOrFalse;
        //    TbEmail.Enabled = TrueOrFalse;
        //    TbContrasena.Enabled = TrueOrFalse;
        //    TbFechaNacimiento.Enabled = TrueOrFalse;
        //    cbAdmin.Enabled = TrueOrFalse;




        //}
        #endregion Metodos generales

        #region Objeto Cliente
        protected E_Servicios ControlesWebForm_ObjetoEntidad()
        {
            E_Servicios Servicio = new E_Servicios()
            {
                Id = Convert.ToInt32(HfIdUsuario.Value),
                Nombre = TbNomServicio.Text,
                Descripcion = TbDescServicio.Text,
                Precio = Convert.ToDecimal(TbPrecioServicio.Text)
            };
            return Servicio;
        }
        protected void ObjetoEntidad_ControlesWebForm(int IdUsuario)
        {
            E_Servicios Servicio = NS.BuscarServicio(IdUsuario);
            TbNomServicio.Text = Servicio.Nombre;
            TbDescServicio.Text = Servicio.Descripcion;
            TbPrecioServicio.Text = Servicio.Precio.ToString();

        }
        #endregion

        #region Botones
        //protected void BtnCancelar_Click(object sender, EventArgs e)
        //{

        //    ControlesClear();
        //    ControlesOFF();
        //    PnlUsers.Visible = true;

        //}


        //protected void GrvUser_RowEditing(object sender, GridViewEditEventArgs e)
        //{
        //    e.Cancel = true;
        //    HfIdUsuario.Value = GrvUsers.DataKeys[e.NewEditIndex].Value.ToString();
        //    ObjetoEntidad_ControlesWebForm(Convert.ToInt16(HfIdUsuario.Value));
        //    ControlesOnOff(true);
        //    PnlCapturaDatos.Visible = true;
        //    BtnModificar.Visible = true;
        //    PnlUsers.Visible = false;

        //}

        //protected void BtnModificar_Click(object sender, EventArgs e)
        //{
        //    E_Registro Cliente = ControlesWebForm_ObjetoEntidad();
        //    Cliente.IdUsuario = Convert.ToInt32(HfIdUsuario.Value);
        //    string R = NC.ModifiarCliente(Cliente);

        //    if (R.Contains("Exito"))
        //        ControlesOFF();
        //        PnlUsers.Visible = true;
        //        Response.Redirect("Usuarios.aspx");
        //}

        //protected void BtnEliminar_Click(object sender, EventArgs e)
        //{
        //    string R = NC.BorrarCliente(Convert.ToInt32(HfIdUsuario.Value));

        //    if (R.Contains("Exito"))
        //        ControlesClear();
        //        ControlesOFF();
        //        PnlUsers.Visible = true;
        //        Response.Redirect("Usuarios.aspx");
        //}
        #endregion
        protected void GrvUser_RowDelete(object sender, GridViewDeleteEventArgs e)
        {
            e.Cancel = true;
            HfIdUsuario.Value = GrvUsers.DataKeys[e.RowIndex].Value.ToString();
            string r = NC.BorrarCliente(Convert.ToInt16(HfIdUsuario.Value));
            if (r.Contains("Exito")) 
            {
                Response.Redirect("Usuarios.aspx");
            }
        }

        protected void GriCitas_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            e.Cancel = true;
            HfIdUsuario.Value = GriCitas.DataKeys[e.RowIndex].Value.ToString();
            string R = NE.BorrarCita(Convert.ToInt16(HfIdUsuario.Value));
            if (R.Contains("Exito")) { }
            Response.Redirect("Usuarios.aspx");
        }
        protected void BtnDistrito_Click(object sender, EventArgs e)
        {
            VisibleComponentesServ(true);
            LbtnAgregarServicio.Visible = true;
            PnlNServ.Visible = true;
            PnlCitas.Visible = false;
            PnlUsers.Visible = false;
        }
        protected void LbtnAgregarServicio_Click(object sender, EventArgs e)
        {
            var r = NS.InsertarServicio(ControlesWebForm_ObjetoEntidad());
            if (r.Contains("Exito")) { Response.Redirect("Usuarios.aspx"); }
            LbtnEditarServicio.Visible = false;
        }
        protected void LbtnCancelarServicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("Usuarios.aspx");
        }

        protected void GrvServicios_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            e.Cancel = true;
            HfIdUsuario.Value = GrvServicios.DataKeys[e.RowIndex].Value.ToString();
            string R = NS.BorrarServicio(Convert.ToInt16(HfIdUsuario.Value));
            if (R.Contains("Exito")) { }
            Response.Redirect("Usuarios.aspx");
        }

        protected void GrvServicios_RowEditing(object sender, GridViewEditEventArgs e)
        {
            e.Cancel = true;
            HfIdUsuario.Value = GrvServicios.DataKeys[e.NewEditIndex].Value.ToString();
            ObjetoEntidad_ControlesWebForm(Convert.ToInt32(HfIdUsuario.Value));
            PnlNServ.Visible = true;
            PnlCitas.Visible = false;
            PnlUsers.Visible = false;
            VisibleComponentesServ(true);
            LbtnAgregarServicio.Visible = false;
            LbtnEditarServicio.Visible = true;
            
        }

        protected void GriCitas_RowEditing(object sender, GridViewEditEventArgs e)
        {
            e.Cancel = true;
            IdCitas.Value = GriCitas.DataKeys[e.NewEditIndex].Value.ToString();
            E_Citas Cita = NE.BuscarCita(Convert.ToInt32(IdCitas.Value));
            Session["EditarCita"] = Cita;
            Response.Redirect("Citas.aspx");
        }

        protected void BtnNuevaCita_Click(object sender, EventArgs e)
        { 
            Session["EditarCita"] = null;
            Response.Redirect("Citas.aspx");
        }

        protected void LbtnEditarServicio_Click(object sender, EventArgs e)
        {

            string R = NS.ModificarServicio(ControlesWebForm_ObjetoEntidad());
            if (R.Contains("Exito")) { Response.Redirect("Usuarios.aspx"); }
        }
    }

        


 }
