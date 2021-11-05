using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocios;
using Entidades;

namespace Presentacion.Catalogo
{
    public partial class Registro : System.Web.UI.Page
    {
        private N_Registro NC = new N_Registro();

        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {
                try
                {
                    if (Session["Usuario"] != null || Session["Admin"] != null) 
                    {
                        if (Session["Usuario"] != null)
                        {
                            E_Registro Cliente = (E_Registro)Session["Usuario"];
                            Lbtitulo.Text = string.Empty;
                            Lbtitulo.Text = "Edita tu Perfil "+Cliente.NombreCliente;
                            EditarDatos();
                        }

                        if (Session["Admin"] != null) 
                        {
                            E_Registro Cliente = (E_Registro)Session["Admin"];
                            Lbtitulo.Text = string.Empty;
                            Lbtitulo.Text = "Edita tu Perfil " + Cliente.NombreCliente;
                            EditarDatos();
                        }


                        PnlCapturaDatos.Visible = true;
                        BtnAlta.Visible = false;
                        BtnCancelar.Visible = true;
                        BtnGuardar.Visible = true;
                        TbEditConfirmaContra.Visible = true;
                        TbEditContra.Visible = true;
                        TbContrasena.Visible = false;
                        TbconfirmaConta.Visible = false;
                        
                        

                  
                    }
                    else
                    {
                        Lbtitulo.Text = string.Empty;
                        Lbtitulo.Text = "Registro de nuevo Cliente";
                        InicializaControles();
                            BtnGuardar.Visible = false;
                            TbEditConfirmaContra.Visible = false;
                            TbEditContra.Visible = false;
                            
                    }
                }
                catch (NullReferenceException) 
                { 

                } 
            }
          

        }
        #region Metodos generales
        public void EditarDatos() 
        {
            E_Registro User = (E_Registro)Session["Usuario"];
            E_Registro Admin = (E_Registro)Session["Admin"];
            try
            {
                if (User != null)
                {
                    Session["Edit"]= Session["Usuario"];
                    ControlesOnOff(true);
                    
                    ObjetoEntidad_ControlesWebForm(User.IdUsuario);
                }
                else 
                { 
                    if (Admin != null) 
                    {
                        Session["Edit"] = Session["Admin"];
                        ControlesOnOff(true);
                        
                        ObjetoEntidad_ControlesWebForm(Admin.IdUsuario); 
                    } 
                }
               
            }
            catch (NullReferenceException) { }


            
        }
        protected void InicializaControles()
        {
            
           
            ControlesOnOff(true);


        }
        
        protected void ControlesCler()
        {
            TbNombreCliente.Text = string.Empty;
            TbApellidoP.Text = string.Empty;
            TBApelliM.Text = string.Empty;
            TbCelular.Text = string.Empty;
            TbEmail.Text = string.Empty;
            TbContrasena.Text = string.Empty;
            TbconfirmaConta.Text = string.Empty;
            LbError.Text = "";
        }
        protected void ControlesOnOff(bool TrueOrFalse)
        {
           
            TbNombreCliente.Enabled = TrueOrFalse;
            TBApelliM.Enabled = TrueOrFalse;
            TbApellidoP.Enabled = TrueOrFalse;
            TbCelular.Enabled = TrueOrFalse;
            TbEmail.Enabled = TrueOrFalse;
            TbContrasena.Enabled = TrueOrFalse;
            TbconfirmaConta.Enabled = TrueOrFalse;


        }
        #endregion Metodos generales

        #region Objeto Cliente
        protected E_Registro ControlesWebForm_ObjetoEntidad()
        {
            E_Registro cliente = new E_Registro()
            {

                NombreCliente = TbNombreCliente.Text,
                ApellidoPaterno = TbApellidoP.Text,
                ApellidoMaterno = TBApelliM.Text,
                CelularCliente = TbCelular.Text,
                CorreoCliente = TbEmail.Text,
                Contrasena = TbContrasena.Text, 
            };
            return cliente;
        }
        protected E_Registro ControlesWebForm_ObjetoEditarPerfil()
        {
            E_Registro Edit = (E_Registro)Session["Edit"];
            
                E_Registro cliente = new E_Registro()
                {

                    IdUsuario = Edit.IdUsuario,
                    NombreCliente = TbNombreCliente.Text,
                    ApellidoPaterno = TbApellidoP.Text,
                    ApellidoMaterno = TBApelliM.Text,
                    CelularCliente = TbCelular.Text,
                    CorreoCliente = TbEmail.Text,
                    Contrasena = TbEditContra.Text,
                   


                };
                return cliente;

        }
        protected void ObjetoEntidad_ControlesWebForm(int IdUsuario)
        {
            E_Registro Cliente = NC.BuscarCliente(IdUsuario);

            TbNombreCliente.Text = Cliente.NombreCliente;
            TbApellidoP.Text = Cliente.ApellidoPaterno;
            TBApelliM.Text = Cliente.ApellidoMaterno;
            TbEmail.Text = Cliente.CorreoCliente;
            TbCelular.Text = Cliente.CelularCliente;
            TbEditContra.Text = Cliente.Contrasena;
            TbEditConfirmaContra.Text = Cliente.Contrasena;

        }
        #endregion

        #region Botones
        protected void BtnAlta_Click(object sender, EventArgs e)
        {
            InicializaControles();
            if (TbContrasena.Text == TbconfirmaConta.Text)
            {
                E_Registro Cliente = new E_Registro();
                Cliente = NC.BuscarCliente(TbEmail.Text);
                if (Cliente.CorreoCliente != TbEmail.Text)
                {
                    string R = NC.InsertarCliente(ControlesWebForm_ObjetoEntidad());
                    lbResultados.Text = R;
                    if (R.Contains("Exito"))
                        ControlesCler();
                    Response.Redirect("login.aspx");
                }
                else { LbError.Text = "El correo ya existe, intenta con otro"; } 
            }
            else
            {
                LbError.Text = "Las contraseñas no coinciden, intenta de nuevo";
            }
            
        }
        #endregion

        protected void BtnCancelar_Click(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
            {
                Response.Redirect("Citas.aspx");
            }
            else if (Session["Admin"] != null) 
            {
                Response.Redirect("Usuarios.aspx");
            }
            else
            {
                Response.Redirect("../Index.aspx");
            }
               
        }

        protected void BtnGuardar_Click(object sender, EventArgs e)
        {
            if (TbContrasena.Text == TbconfirmaConta.Text)
            {
                E_Registro Cliente = new E_Registro();
                string R = NC.ModificarCliente(ControlesWebForm_ObjetoEditarPerfil());
                lbResultados.Text = R;
                if (R.Contains("Exito")) {
                    ControlesCler();
                    E_Registro Edit = (E_Registro)Session["Edit"];
                    if (Edit.TipoUsuario==1) 
                    {
                        Response.Redirect("Usuarios.aspx");
                    } 
                    else
                    {
                        if (Edit.TipoUsuario== 2) 
                        {
                            Response.Redirect("Citas.aspx");
                        }

                    }
                }
            }
            else
            {
                LbError.Text = "Las contraseñas no coinciden, intenta de nuevo";
            }
        }
    }
}