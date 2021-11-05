<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas Maestras/MP_EntidadSesion.master" AutoEventWireup="true" CodeBehind="Usuarios.aspx.cs" Inherits="Presentacion.Catalogo.Usuarios" %>
<asp:Content ID="Content2" ContentPlaceHolderID="cphEntidadesSesion" runat="server">
   
        
        <br />
           <br />
           <br />
           <br />
     
       <asp:Panel ID="PnlCitas" runat="server">
        <div class="container">
            <div class="card">
                <div class="card-header text-center">
                    <h5 class="car-tittle">Citas</h5>
                      
                    <asp:GridView ID="GriCitas" runat="server" AutoGenerateColumns="False" BackColor="White" 
                        BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataSourceID="CitasSQL" 
                        ForeColor="Black" GridLines="Vertical" OnRowDeleting="GriCitas_RowDeleting" DataKeyNames="IdRegistroCita">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:BoundField DataField="IdRegistroCita" HeaderText="IdRegistroCita" SortExpression="IdRegistroCita" InsertVisible="False" ReadOnly="True" />
                            <asp:BoundField DataField="IdCliente" HeaderText="IdCliente" SortExpression="IdCliente" />
                            <asp:BoundField DataField="Cliente" HeaderText="Cliente" SortExpression="Cliente" />
                            <asp:BoundField DataField="Servicio" HeaderText="Servicio" SortExpression="Servicio" />
                            <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                             <asp:BoundField DataField="Hora" HeaderText="Hora" SortExpression="Hora" />
                            <asp:BoundField DataField="Total" HeaderText="Total" SortExpression="Total" />
                           <asp:TemplateField HeaderText="Cancelar Cita">
                             <ItemTemplate>
                                   <asp:LinkButton ID="GvrBtnborrar" runat="server" CssClass="btn btn-danger fa fa-trash" 
                                    CausesValidation="true" CommandName="Delete" >Cancelar</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="Gray" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="CitasSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConexionBD %>" SelectCommand="SELECT * FROM [Citas] ORDER BY [Fecha], [Hora]"></asp:SqlDataSource>
                   
                 </div>
              </div>
           </div>
        </asp:Panel>
       <asp:Panel ID="PnlCapturaDatos" runat="server">
        <div class="container">
            <div class="card">
                <div class="card-header text-center">
                    <h5 class="car-tittle">Cliente</h5>
                </div>
                <div class="card-body">
                    <div class="row p1-2 pr-2">
                         <div class="col-lg-5 col-md-12 col-12">
                            <div class="form-group">
                               <asp:Label ID="LbNombreCliente" runat="server" CssClass="font-weight-bold" Text="Nombre" ForeColor="Black"></asp:Label>
                                <asp:TextBox ID="TbNombreCliente" CssClass="form-control"  runat="server"  Width="449px"></asp:TextBox>                              
                               
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-12 col-12">
                            <div class="form-group">
                               <asp:Label ID="LbApellidosCliente" runat="server" CssClass="font-weight-bold" Text="Apellidos" ForeColor="Black"></asp:Label>
                                <asp:TextBox ID="TbApellidosCliente" CssClass="form-control"  runat="server" Width="449px"></asp:TextBox>                             
                                
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
                                 <asp:TextBox ID="TbContrasena" runat="server" CssClass="form-control" ></asp:TextBox>                           
                            </div>
                        </div>
                        <div class="col-lg-5 col-md-12 col-12">
                            <div class="form-group">
                               <asp:Label ID="lbAdmin" runat="server" CssClass="font-weight-bold" Text="Rol de Administrador" ForeColor="Black"></asp:Label>
                                <asp:CheckBox ID="cbAdmin" runat="server" />   
                                
                            </div>
                        </div>
                        <br />
                       <div class="card-footer text-center">
                           
                           <asp:LinkButton ID="BtnModificar" runat="server" class="btn btn-primary" type="submit" OnClick="BtnModificar_Click" >Modificar</asp:LinkButton>
                           <asp:LinkButton ID="BtnEliminar" runat="server" class="btn btn-primary" type="submit" OnClick="BtnEliminar_Click" >Eliminar</asp:LinkButton>
                           <asp:LinkButton ID="BtnCancelar" runat="server" class="btn btn-primary" type="submit" OnClick="BtnCancelar_Click">Cancelar</asp:LinkButton>
                      </div>   

                        
                      
                            
                          
                </div>
            </div>
                
            </div>
            </div>
    </asp:Panel>
    <asp:Panel ID="PnlUsers" runat="server">
        <div class="container">
            <div class="card">
                <div class="card-header text-center">
                    <h5 class="car-tittle">Usuarios</h5>
                    
                    <asp:GridView ID="GrvUsers" runat="server" AutoGenerateColumns="False" CellPadding="3"  ForeColor="Black" GridLines="Vertical"  BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" DataSourceID="UsuariosSQL" DataKeyNames="IdUsuario" OnRowDeleting="GrvUser_RowDelete" OnRowEditing="GrvUser_RowEditing" >
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:BoundField DataField="IdUsuario" HeaderText="IdUsuario" SortExpression="IdUsuario" InsertVisible="False" ReadOnly="True" />
                            <asp:BoundField DataField="NombreCliente" HeaderText="NombreCliente" SortExpression="NombreCliente" />
                            <asp:BoundField DataField="ApellidosCliente" HeaderText="ApellidosCliente" SortExpression="ApellidosCliente" />
                            <asp:BoundField DataField="CelularCliente" HeaderText="CelularCliente" SortExpression="CelularCliente" />
                            <asp:TemplateField HeaderText="Modificar">
                                <ItemTemplate>
                                        <asp:LinkButton ID="GvrBtnEditar" runat="server" CssClass="btn btn-primary  fa fa-edit" 
                                            CausesValidation="true" CommandName="Edit">Editar</asp:LinkButton>
                                 </ItemTemplate>
                            </asp:TemplateField>

                            

                            <asp:TemplateField HeaderText="Borrar">
                                <ItemTemplate>
                                   <asp:LinkButton ID="GvrBtnborrar" runat="server" CssClass="btn btn-danger fa fa-trash" 
                                    CausesValidation="true" CommandName="Delete">Borrar</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>

                            

                        </Columns>
                        <FooterStyle BackColor="#CCCCCC" />
                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="UsuariosSQL" runat="server" ConnectionString="<%$ ConnectionStrings:ConexionBD %>" SelectCommand="SELECT [IdUsuario], [NombreCliente], [ApellidosCliente], [CelularCliente] FROM [Clientes]"></asp:SqlDataSource>
                   
                    
                    <br />
                </div>
             </div>
         </div>
      </asp:Panel>
       
       <asp:HiddenField ID="HfIdUsuario" runat="server" />
        <br />
   
</asp:Content>
