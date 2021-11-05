<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas Maestras/MP_EntidadSesion.master" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Presentacion.Catalogo.Registro" %>






<asp:Content ID="Content2" ContentPlaceHolderID="cphEntidadesSesion" runat="server">
    
    
        <br />
           <br />
           <br />
           <br />
        
    <asp:Panel ID="PnlCapturaDatos" runat="server">
        <div class="container">
            <div class="card">
                <div class="card-header text-center">
                    <h5 class="car-tittle">Registro de nuevo cliente</h5>
                </div>
                <div class="card-body">
                    <div class="row p1-2 pr-2">
                         <div class="col-lg-5 col-md-12 col-12">
                            <div class="form-group">
                               <asp:Label ID="LbNombreCliente" runat="server" CssClass="font-weight-bold" Text="Nombre" ForeColor="Black"></asp:Label>
                                <asp:TextBox ID="TbNombreCliente" CssClass="form-control"  runat="server"  Width="449px"></asp:TextBox>                              
                               <%-- <asp:RequiredFieldValidator ID="RFVNombreCliente" runat="server" ErrorMessage="Nombre invalido" ControlToValidate="TbNombreCliente" ForeColor="#990000"></asp:RequiredFieldValidator>--%>
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-12 col-12">
                            <div class="form-group">
                               <asp:Label ID="LbApellidosCliente" runat="server" CssClass="font-weight-bold" Text="Apellidos" ForeColor="Black"></asp:Label>
                                <asp:TextBox ID="TbApellidosCliente" CssClass="form-control"  runat="server" Width="449px"></asp:TextBox>                             
                                <%--<asp:RequiredFieldValidator ID="RFVApellidosCliente" runat="server" ErrorMessage="Apellido Invalido" ControlToValidate="TbApellidosCliente" ForeColor="#990000"></asp:RequiredFieldValidator>--%>
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-12 col-12">
                            <div class="form-group">
                               <asp:Label ID="lbEmail" runat="server" CssClass="font-weight-bold" Text="Email" ForeColor="Black"></asp:Label>
                               <asp:TextBox ID="TbEmail" CssClass="form-control"  runat="server"  Width="449px"></asp:TextBox> 
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-12 col-12">
                            <div class="form-group">
                               <asp:Label ID="LbCelular" runat="server" CssClass="font-weight-bold" Text="Celular" ForeColor="Black"></asp:Label>
                                <asp:TextBox ID="TbCelular" CssClass="form-control"  runat="server" Width="449px"></asp:TextBox>                              
                                <%--<asp:RequiredFieldValidator ID="RFVCelular" runat="server" ErrorMessage="Celular invalido" ControlToValidate="TbCelular" ForeColor="#990000"></asp:RequiredFieldValidator>--%>
                            </div>
                        </div>
                       <div class="col-lg-5 col-md-12 col-12">
                            <div class="form-group">
                               <asp:Label ID="LbFechaNacimiento" runat="server" CssClass="font-weight-bold" Text="Fecha de Nacimiento" ForeColor="Black"></asp:Label>
                                 <asp:TextBox ID="TbFechaNacimiento" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>                           
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-12 col-12">
                            <div class="form-group">
                               <asp:Label ID="LbContrasena" runat="server" CssClass="font-weight-bold" Text="Contraseña" ForeColor="Black"></asp:Label>
                                 <asp:TextBox ID="TbContrasena" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
                                 <asp:TextBox ID="TbEditContra" runat="server" CssClass="form-control" ></asp:TextBox> 
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-12 col-12">
                            <div class="form-group">
                               <asp:Label ID="LbConfirmaContra" runat="server" CssClass="font-weight-bold" Text="Confirma Contraseña" ForeColor="Black"></asp:Label>
                                 <asp:TextBox ID="TbconfirmaConta" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>  
                                <asp:TextBox ID="TbEditConfirmaContra" runat="server" CssClass="form-control" ></asp:TextBox> 
                                <asp:Label ID="LbError" runat="server" ForeColor="#CC3300"></asp:Label>
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-12 col-12">
                            <div class="form-group">
                               <asp:Label ID="lbAdmin" runat="server" CssClass="font-weight-bold" Text="Rol de Administrador" ForeColor="Black"></asp:Label>
                                <asp:CheckBox ID="cbAdmin" runat="server" />   
                                
                            </div>
                        </div>
                        <br />
                        
             </div>
                     <div class="card-footer text-center">
                                 <asp:LinkButton ID="BtnAlta" runat="server" class="btn btn-primary" type="submit" OnClick="BtnAlta_Click">Registrarse</asp:LinkButton>
                                 <asp:LinkButton ID="BtnGuardar" runat="server" class="btn btn-primary" type="submit" OnClick="BtnGuardar_Click">Guardar</asp:LinkButton>
                                 <br />
                             
                                 <asp:LinkButton ID="BtnCancelar" runat="server" class="btn btn-primary" type="submit" OnClick="BtnCancelar_Click">Cancelar</asp:LinkButton>
                                 
                                 <br />
                                  <br />
                                 <asp:Label ID="lbResultados" runat="server" CssClass="font-weight-bold"  ForeColor="Black"></asp:Label>  
                        </div>     
             </div>  
            </div>
            </div>
    </asp:Panel>
        
</asp:Content>
