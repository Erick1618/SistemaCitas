<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas Maestras/MP_Entidades.master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Presentacion.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphEntidades" runat="server">
    <section class="hero-wrap hero-wrap-2" style="background-image: url('../images/bg_1.jpg');" data-stellar-background-ratio="0.5">
      <div class="overlay"></div>
      <div class="container">
        <div class="row no-gutters slider-text js-fullheight align-items-center justify-content-center">
          <div class="col-md-9 ftco-animate text-center">
            <h1 class="mb-3 bread">Inicia Sesión</h1>
            <p style="color: black" class="breadcrumbs"><span>Inicia Sesión o Registrate para agendar una cita</span></p>
          </div>
        </div> 
      </div>
    </section>
 <asp:Panel ID="PnlLogin" runat="server">
        <div class="container">
            <div class="card">
                <div class="card-header text-center" >  
                    <form runat="server">
                        <asp:Label ID="lbEmail" runat="server"  Text="Correo Electronico" CssClass="font-italic" ForeColor="Black" Font-Bold="True" Font-Italic="True" ></asp:Label>
                        <br />
                        <i class="fas fa-envelope icon"></i>
                        <asp:TextBox ID="Tbemail" runat="server"   placeholder="Introduce Correo" BorderColor="#CCCCCC" BorderStyle="Solid" CssClass="form-control-lg" ></asp:TextBox>
                        <br />
                        <asp:Label ID="LbPassword" runat="server" Text="Contraseña" CssClass="font-italic" ForeColor="Black" Font-Bold="True" Font-Italic="True"></asp:Label>
                        <br />
                        <i class="fas fa-key icon"></i>
                        <asp:TextBox ID="TbPass" runat="server" TextMode="Password" placeholder="Introduce Contraseña" OnTextChanged="TbPass_TextChanged" BorderColor="#CCCCCC" BorderStyle="Solid" CssClass="form-control-lg"></asp:TextBox> 
                        <br />
                        <asp:Label ID="Lbaviso" runat="server" Text="Correo o Contraseña incorrecta, vuelve a intertarlo!" Font-Bold="False" Font-Italic="True" Font-Size="Smaller" ForeColor="#CC3300"></asp:Label>
                        
                        <br />
                        <asp:LinkButton ID="BtnIniciarSesion" runat="server" class="btn-b btn-beauty" type="submit"  OnClick="BtnIniciarSesion_Click" >Iniciar sesión</asp:LinkButton>
                        <br />    <br />         
                        <asp:LinkButton ID="BtnRegistrar" runat="server" class="btn-b btn-beauty" type="submit"  OnClick="BtnRegistrate_Click" >Registrate</asp:LinkButton>
                      </form>
                </div>
            </div>
       </div>
  </asp:Panel>
    
</asp:Content>
