<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas Maestras/MP_EntidadSesion.master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Presentacion.Catalogo.Registro" %>






<asp:Content ID="Content2" ContentPlaceHolderID="cphEntidadesSesion" runat="server">
    
    
        <br />
           <br />
           <br />
           <br />
        
    <asp:Panel ID="PnlCapturaDatos" runat="server" ScrollBars="Auto" BorderColor="White" BorderStyle="None" Font-Size="Large">
        <div class="container">
            <div class="card">
                <div class="card-header text-center">
                    <h5 class="car-tittle">
                        <asp:Label ID="Lbtitulo" runat="server" Text="" ForeColor="Black"></asp:Label>
                        </h5>
                </div>
                <div class="card-body text-center">
                    <div class="row p1-2 pr-2">
                         <div class="col-lg-5 col-md-12 col-12">
                            <div class="form-group">
                               <asp:Label ID="LbNombreCliente" runat="server" CssClass="font-weight-bold" Text="Nombre" ForeColor="Black"></asp:Label>
                               <br />
                                <asp:TextBox ID="TbNombreCliente"  runat="server" BorderColor="#CCCCCC" BorderStyle="Solid" CssClass="form-control-lg" ></asp:TextBox>                              
                               <%-- <asp:RequiredFieldValidator ID="RFVNombreCliente" runat="server" ErrorMessage="Nombre invalido" ControlToValidate="TbNombreCliente" ForeColor="#990000"></asp:RequiredFieldValidator>--%>
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-12 col-12">
                            <div class="form-group">
                               <asp:Label ID="LbApellidoP" runat="server" CssClass="font-weight-bold" Text="Apellido Paterno" ForeColor="Black"></asp:Label>
                                <br />
                                <asp:TextBox ID="TbApellidoP"  runat="server" BorderColor="#CCCCCC" BorderStyle="Solid" CssClass="form-control-lg"></asp:TextBox>                             
                                <%--<asp:RequiredFieldValidator ID="RFVApellidosCliente" runat="server" ErrorMessage="Apellido Invalido" ControlToValidate="TbApellidosCliente" ForeColor="#990000"></asp:RequiredFieldValidator>--%>
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-12 col-12">
                            <div class="form-group">
                               <asp:Label ID="LbApelliMaterno" runat="server" CssClass="font-weight-bold" Text="Apellido Materno" ForeColor="Black"></asp:Label>
                                <br />
                                <asp:TextBox ID="TBApelliM"  runat="server" BorderColor="#CCCCCC" BorderStyle="Solid" CssClass="form-control-lg" ></asp:TextBox>                             
                                <%--<asp:RequiredFieldValidator ID="RFVApellidosCliente" runat="server" ErrorMessage="Apellido Invalido" ControlToValidate="TbApellidosCliente" ForeColor="#990000"></asp:RequiredFieldValidator>--%>
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-12 col-12">
                            <div class="form-group">
                               <asp:Label ID="lbEmail" runat="server" CssClass="font-weight-bold" Text="Email" ForeColor="Black"></asp:Label>
                                <br />
                               <asp:TextBox ID="TbEmail"  runat="server" BorderColor="#CCCCCC" BorderStyle="Solid" CssClass="form-control-lg" ></asp:TextBox> 
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-12 col-12">
                            <div class="form-group">
                               <asp:Label ID="LbCelular" runat="server" CssClass="font-weight-bold" Text="Celular" ForeColor="Black"></asp:Label>
                                <br />
                                <asp:TextBox ID="TbCelular"  runat="server" BorderColor="#CCCCCC" BorderStyle="Solid" CssClass="form-control-lg" ></asp:TextBox>                              
                                <%--<asp:RequiredFieldValidator ID="RFVCelular" runat="server" ErrorMessage="Celular invalido" ControlToValidate="TbCelular" ForeColor="#990000"></asp:RequiredFieldValidator>--%>
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-12 col-12">
                            <div class="form-group">
                               <asp:Label ID="LbContrasena" runat="server" CssClass="font-weight-bold" Text="Contraseña" ForeColor="Black"></asp:Label>
                                <br />
                                 <asp:TextBox ID="TbContrasena" runat="server" TextMode="Password" BorderColor="#CCCCCC" BorderStyle="Solid" CssClass="form-control-lg"></asp:TextBox>
                                 <asp:TextBox ID="TbEditContra" runat="server" BorderColor="#CCCCCC" BorderStyle="Solid" CssClass="form-control-lg" ></asp:TextBox> 
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-12 col-12">
                            <div class="form-group">
                               <asp:Label ID="LbConfirmaContra" runat="server" CssClass="font-weight-bold" Text="Confirma Contraseña" ForeColor="Black"></asp:Label>
                                <br />
                                 <asp:TextBox ID="TbconfirmaConta" runat="server" TextMode="Password" BorderColor="#CCCCCC" BorderStyle="Solid" CssClass="form-control-lg"></asp:TextBox>  
                                <asp:TextBox ID="TbEditConfirmaContra" runat="server" BorderColor="#CCCCCC" BorderStyle="Solid" CssClass="form-control-lg" ></asp:TextBox> 
                                <asp:Label ID="LbError" runat="server" ForeColor="#CC3300"></asp:Label>
                            </div>
                        </div>
                       
                        <br />
                        
             </div>
                     <div class="card-footer text-center">
                                 <asp:LinkButton ID="BtnAlta" runat="server" class="btn-b btn-beauty" type="submit" OnClick="BtnAlta_Click">Registrarse</asp:LinkButton>
                                 <asp:LinkButton ID="BtnGuardar" runat="server" class="btn-b btn-beauty" type="submit" OnClick="BtnGuardar_Click">Guardar</asp:LinkButton>
                                 <br />
                             
                                 <asp:LinkButton ID="BtnCancelar" runat="server" class="btn-r btn-beauty" type="submit" OnClick="BtnCancelar_Click">Cancelar</asp:LinkButton>
                                 
                                 <br />
                                  <br />
                                 <asp:Label ID="lbResultados" runat="server" CssClass="font-weight-bold"  ForeColor="Black"></asp:Label>  
                        </div>     
             </div>  
            </div>
            </div>
    </asp:Panel>
        
</asp:Content>
