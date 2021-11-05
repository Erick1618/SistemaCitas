using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocios;

namespace Presentacion
{
    public partial class contact : System.Web.UI.Page
    {
        N_Registro NC = new N_Registro();
        protected void Page_Load(object sender, EventArgs e)
        {
            
                Lbaviso.Visible = false;
                Lbaviso.Text= string.Empty;
            
        }



        protected void ObjetoEntidad_ControlesWebForm(string correo)
        {
            E_Registro Cliente = new E_Registro();
            Cliente = NC.BuscarCliente(correo);
            if (Cliente.Equals(0))
            {
                Lbaviso.Visible = true;
                Lbaviso.Text = "El Usuario no existe, Registrate!";
                
            }
            else
            {
                if (Tbemail.Text == Cliente.CorreoCliente && TbPass.Text == Cliente.Contrasena)
                {
                    if (Cliente.TipoUsuario == 1)
                    {

                        Session["Admin"] = Cliente;
                        Response.Redirect("Usuarios.aspx");
                    }
                    else if(Cliente.TipoUsuario == 2)
                    {
                        Session["Usuario"] = Cliente;
                        Response.Redirect("Citas.aspx");
                    }

                }
                else 
                {
                    Lbaviso.Visible = true;
                    Lbaviso.Text = "Correo o Contraseña incorrecta, vuelve a intertarlo!";
                   
                }
            }

            
        }

        protected void BtnRegistrate_Click(object sender, EventArgs e)
        {
            
           Response.Redirect("Registro.aspx");
            
        }

        protected void BtnIniciarSesion_Click(object sender, EventArgs e)
        {

            ObjetoEntidad_ControlesWebForm(Tbemail.Text.Trim());
        }

        protected void TbPass_TextChanged(object sender, EventArgs e)
        {
            ObjetoEntidad_ControlesWebForm(Tbemail.Text.Trim());
        }
    }
}