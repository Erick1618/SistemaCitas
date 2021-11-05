using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentacion.Paginas_Maestras
{
    public partial class MP_EntidadSesion : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    controlesOFF();
                    if (Session["Admin"] != null)
                    {
                        BtnEditarPerfil.Visible = true;
                        BtnCerrarSesion.Visible = true;
                        BtnAgenda.Visible = true;
                    }
                    else
                    {
                        if (Session["Usuario"] != null)
                        {
                            BtnEditarPerfil.Visible = true;
                            BtnCerrarSesion.Visible = true;
                            BtnCitas.Visible = true;
                        }
                    }

                }
            }
            catch (NullReferenceException)
            {

            }


        }
        public void controlesOFF()
        {
            BtnCitas.Visible = false;
            BtnCerrarSesion.Visible = false;
            BtnAgenda.Visible = false;
            BtnEditarPerfil.Visible = false;
        }
        public void Enable() 
        { 

        }

        protected void BtnCerrarSesion_Click(object sender, EventArgs e)
        {
            try
            {
                if (Session["Admin"] != null)
                {
                    Logout("Admin");
                    Response.Redirect("Login.aspx");
                }
                if (Session["Usuario"] != null)
                {
                    Logout("Usuario");
                    Response.Redirect("Login.aspx");
                }
            }
            catch (NullReferenceException)
            {

            }
        }
        public void Logout(string cierra) 
        {
            System.Web.Security.FormsAuthentication.SignOut();
            Session.Abandon();
            Session[cierra] = null;
            Response.Cookies.Add(new HttpCookie("ASP.NET_SeccionId",cierra));
        }

        protected void BtnCitas_Click(object sender, EventArgs e)
        {
            Response.Redirect("Citas.aspx");
        }

        protected void BtnEditarPerfil_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registro.aspx");
        }

        protected void BtnAgenda_Click(object sender, EventArgs e)
        {
            Response.Redirect("Usuarios.aspx");
        }

       
    }
}