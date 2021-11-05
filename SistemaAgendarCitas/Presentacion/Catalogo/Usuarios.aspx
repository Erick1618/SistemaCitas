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
                        <asp:LinkButton ID="BtnNuevaCita" runat="server" class="btn-b btn-beauty" type="submit" OnClick="BtnNuevaCita_Click"  >Agendar Nueva Cita</asp:LinkButton>
                    </div>
                       <div class="card-group text-center">
                        
                           <asp:GridView ID="GriCitas" runat="server" AutoGenerateColumns="False" CssClass="table table-bordered table-responsive-sm" 
                               OnRowDeleting="GriCitas_RowDeleting" DataKeyNames="Id" OnRowEditing="GriCitas_RowEditing" 
                               AllowSorting="True" HorizontalAlign="Center">
                            <Columns>
                                <asp:BoundField DataField="Id" HeaderText="id"  SortExpression="id" />
                                <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                                <asp:BoundField DataField="Hora" HeaderText="Hora" SortExpression="Hora" />
                                <asp:BoundField DataField="Servicio" HeaderText="Servicio" SortExpression="Servicio" />
                                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                <asp:BoundField DataField="Celular" HeaderText="Celular" SortExpression="Celular" />
                                <asp:BoundField DataField="Precio" HeaderText="Total" SortExpression="Total" />
                                <asp:CheckBoxField HeaderText="Pagado" DataField="Pagado" SortExpression="Pagado" ReadOnly="True"  />
                               <asp:TemplateField HeaderText="Cancelar Cita">
                                 <ItemTemplate>
                                       <asp:LinkButton ID="GvrBtnborrar" runat="server" CssClass="table btn-sm btn-danger fa fa-trash" 
                                        CausesValidation="true" CommandName="Delete" >Cancelar</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Editar Cita">
                                    <ItemTemplate>
                                       <asp:LinkButton ID="GvrBtnEditar" runat="server" CssClass="table btn-sm btn-success fa fa-edit" 
                                        CausesValidation="true" CommandName="Edit">Editar</asp:LinkButton>
                                    </ItemTemplate>
                                </asp:TemplateField>
                          
                            </Columns>
                        </asp:GridView>
                 
               </div>
              </div>
            </div>
           
           <asp:HiddenField ID="IdCitas" runat="server" />
        </asp:Panel>

    <asp:Panel ID="PnlUsers" runat="server">
        <div class="container">
            <div class="card">
                <div class="card-header text-center">
                    <h5 class="car-tittle">Usuarios</h5>
                    </div>
                     <div class="card-group text-center"> 
                        <asp:GridView ID="GrvUsers" runat="server" CssClass="table table-bordered table-responsive-sm" 
                            AutoGenerateColumns="False" OnRowDeleting="GrvUser_RowDelete" 
                            DataKeyNames="id" AllowSorting="True" HorizontalAlign="Center"  >
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" InsertVisible="False" ReadOnly="True" />
                            <asp:BoundField HeaderText="Nombre" DataField="Nombre" SortExpression="Nombre" />
                            <asp:BoundField HeaderText="ApellidoPaterno" DataField="Apellido_paterno"  SortExpression="ApellidoPaterno" />
                             <asp:BoundField HeaderText="ApellidoMaterno" DataField="Apellido_materno" SortExpression="ApellidoMaterno"/>
                            <asp:BoundField HeaderText="Correo" DataField="Correo" SortExpression="Correo"/>
                            <asp:BoundField HeaderText="Contraseña" DataField="Contrasenia" SortExpression="Contrasenia"/>
                            <asp:BoundField DataField="Celular" HeaderText="Celular" SortExpression="Celular" />
                            <asp:TemplateField HeaderText="Borrar Usuario" SortExpression="Borrar Usuario">
                                <ItemTemplate>
                                   <asp:LinkButton ID="GvrBtnborrar" runat="server" CssClass="table btn-sm btn-danger fa fa-trash" 
                                    CausesValidation="true" CommandName="Delete">Borrar</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <br />
               
                </div>
             </div>
         </div>
      </asp:Panel>
     <asp:HiddenField ID="HfIdUsuario" runat="server" />
    <asp:Panel ID="PnlNServ" runat="server">
         <div class="container">
            <div class="card">
                <div class="card-header text-center">
                    <h5 class="car-tittle">Nuevo Servicio</h5>
                    </div>
                <div class="card-body">
                        <div class="row p1-2 pr-2">
                           <div class="col-lg-5 col-md-12 col-12">
                            <div class="form-group">
                               <asp:Label ID="LbNomServicio" runat="server" CssClass="font-weight-bold" Text="Nombre" ForeColor="Black"></asp:Label>
                                <br />
                                <asp:TextBox ID="TbNomServicio" runat="server" BorderColor="#CCCCCC" BorderStyle="Solid" CssClass="form-control-lg"  ></asp:TextBox>                              
                               
                            </div>
                        </div>
                            <div class="col-lg-5 col-md-12 col-12">
                            <div class="form-group">
                               <asp:Label ID="LbDescServicio" runat="server" CssClass="font-weight-bold" Text="Descripcion" ForeColor="Black"></asp:Label>
                                <br />
                                <asp:TextBox ID="TbDescServicio" TextMode="MultiLine"  runat="server" BorderColor="#CCCCCC" BorderStyle="Solid" CssClass="form-control-lg" ></asp:TextBox>                              
                               
                            </div>
                        </div>
                          <div class="col-lg-5 col-md-12 col-12">
                            <div class="form-group">
                               <asp:Label ID="LbPrecioServicio" runat="server" CssClass="font-weight-bold" Text="Precio" ForeColor="Black"></asp:Label>
                                <br />
                                <asp:TextBox ID="TbPrecioServicio"  runat="server" BorderColor="#CCCCCC" BorderStyle="Solid" CssClass="form-control-lg" ></asp:TextBox>                              
                               
                            </div>
                        </div>
                             <div class="col-lg-5 col-md-12 col-12">
                            <div class="form-group">
                               <asp:Label ID="Lbduracion" runat="server" CssClass="font-weight-bold" Text="Duracion del Servicio(hrs)" ForeColor="Black"></asp:Label>
                                <br />
                                <asp:TextBox ID="Tbduracion" runat="server" BorderColor="#CCCCCC" BorderStyle="Solid" CssClass="form-control-lg" ></asp:TextBox>                              
                               
                            </div>
                        </div>
                            <div class="col-lg-5 col-md-12 col-12">
                            <div class="form-group">
                               <asp:LinkButton ID="LbtnAgregarServicio" runat="server" class="btn-b btn-beauty" type="submit" OnClick="LbtnAgregarServicio_Click"  >Agregar</asp:LinkButton>
                                <asp:LinkButton ID="LbtnEditarServicio" runat="server" class="btn-b btn-beauty" type="submit" OnClick="LbtnEditarServicio_Click"   >Aplicar</asp:LinkButton>
                                <asp:LinkButton ID="LbtnCancelarServicio" runat="server" class="btn-r btn-beauty" type="submit" OnClick="LbtnCancelarServicio_Click"  >Cancelar</asp:LinkButton>
                            </div>
                        </div>
                      </div>
                    </div>
                </div>
             </div>
    </asp:Panel>
           <asp:Panel ID="PnlServicios" runat="server">
        <div class="container">
            <div class="card">
                <div class="card-header text-center">
                    <h5 class="car-tittle">Servicios</h5>
                        <asp:LinkButton ID="BtnDistrito" runat="server" class="btn-b btn-beauty"  type="submit" OnClick="BtnDistrito_Click"  >Agregar Nuevo Servicio</asp:LinkButton>
                    </div>
                       
                     <div class="card-group">
                    <asp:GridView ID="GrvServicios" runat="server" CssClass="table table-bordered table-responsive-sm" 
                        AutoGenerateColumns="False"  DataKeyNames="id" OnRowDeleting="GrvServicios_RowDeleting"  
                        OnRowEditing="GrvServicios_RowEditing" AllowSorting="True" HorizontalAlign="Center"  >
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="id" SortExpression="id" InsertVisible="False" ReadOnly="True" />
                            <asp:BoundField HeaderText="Nombre" DataField="Nombre" SortExpression="Nombre" />
                            <asp:BoundField HeaderText="Descripcion" DataField="Descripcion" SortExpression="Descripcion"/>
                            <asp:BoundField HeaderText="Precio" DataField="Precio" SortExpression="Precio"/>
                            <asp:TemplateField HeaderText="Borrar Servicio">
                                <ItemTemplate>
                                   <asp:LinkButton ID="GvrBtnborrar" runat="server" CssClass="table btn-sm btn-danger fa fa-trash" 
                                    CausesValidation="true" CommandName="Delete">Borrar</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Editar Servicio">
                                <ItemTemplate>
                                   <asp:LinkButton ID="GvrBtnEditar" runat="server" CssClass="table btn-sm btn-success fa fa-edit" 
                                    CausesValidation="true" CommandName="Edit">Editar</asp:LinkButton>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                   
                    
                    <br />
                </div>
               </div>
             </div>
       
      </asp:Panel>
       <asp:HiddenField ID="HfIdServicio" runat="server" />
        <br />
   
</asp:Content>
