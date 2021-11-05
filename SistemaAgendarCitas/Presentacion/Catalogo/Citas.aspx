<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas Maestras/MP_EntidadSesion.master" AutoEventWireup="true" CodeBehind="Citas.aspx.cs" Inherits="Presentacion.Catalogo.Citas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphEntidadesSesion" runat="server">
 
    
    
<%--<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

       <!-- Modal content-->
   <div class="modal-content">
      <div class="modal-header">

        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Cancelacion de Cita</h4>

      </div>
      <div class="modal-body">

        <p>Quieres canselar la Cita?</p>

      </div>
      <div class="modal-footer">
        <button type="button" id="No" class="btn btn-default" data-dismiss="modal">No</button>
          <button type="button" id="Si" class="btn btn-default" data-dismiss="modal">Si</button>
      </div>
   </div>
    </div>

</div>--%>

        <br />
           <br />
           <br />
           <br />
     
    <asp:Panel ID="PnlUsers" runat="server">
        <div class="container">
            <div class="card">
                <div class="card-header text-center">
                    <h5 class="car-tittle">Cita</h5>
                     
                </div>
                 
            <div class="card-body">
                <div class="row p1-2 pr-2">
                    <div class="col-lg-5 col-md-12 col-12">
                        <div class="form-group">
                              <asp:Label ID="LbServicios" runat="server" CssClass="font-weight-bold" Text="Servicios Disponibles:" ForeColor="Black"></asp:Label>
                              <br />
                              <asp:DropDownList ID="DDLServicio" runat="server" AutoPostBack="true" OnTextChanged="DDLServicio_TextChanged" Width="231px">
                              </asp:DropDownList>                           
                              
                         </div>
                    </div>
                    <div class="col-lg-5 col-md-12 col-12">
                        <div class="form-group">
                              <asp:Label ID="Fecha" runat="server" CssClass="font-weight-bold" Text="Fecha" ForeColor="Black"></asp:Label>
                            <br />
                              <asp:TextBox ID="TbFechaCita" runat="server" ></asp:TextBox> 
                             <asp:LinkButton ID="BtnCalendar"  CssClass="fa fa-calendar" runat="server" OnClick="BtnCalendar_Click" ForeColor="Black"></asp:LinkButton>
                            <asp:Calendar ID="Calendar" CssClass="table-sm" runat="server" BorderColor="Silver" CellPadding="1" OnSelectionChanged="Calendar_SelectionChanged" OnDayRender="Calendar_DayRender">
                                <DayHeaderStyle BackColor="White" BorderColor="White" Font-Bold="True" Font-Names="Bahnschrift Light Condensed" Font-Size="Smaller" ForeColor="#CC9900" />
                                <DayStyle Font-Names="Bahnschrift Condensed" Font-Size="Smaller" />
                                <OtherMonthDayStyle BackColor="White" ForeColor="Silver" />
                                <TitleStyle BackColor="White" BorderStyle="None" Font-Bold="True" Font-Italic="False" Font-Names="Bahnschrift" Font-Overline="False" Font-Size="Smaller" Font-Strikeout="False" Font-Underline="False" ForeColor="Black" />
                                <WeekendDayStyle ForeColor="#CC9900" />
                              </asp:Calendar>
                        </div>
                    </div>
                     <div class="col-lg-5 col-md-12 col-12">
                        <div class="form-group">
                              <asp:Label ID="Hora" runat="server" CssClass="font-weight-bold" Text="Horario Disponible:" ForeColor="Black"></asp:Label>
                              <br />
                            <asp:DropDownList ID="DDLHora" runat="server" Height="30px" Width="204px"></asp:DropDownList>                
                        </div>
                    </div>
                    <div class="col-lg-5 col-md-12 col-12">
                        <div class="form-group">
                              <asp:Label ID="LbTotal" runat="server" CssClass="font-weight-bold" Text="Total" ForeColor="Black"></asp:Label>
                            <br />
                            <asp:Label ID="Label1" runat="server" CssClass="font-weight-bold" Text="$" ForeColor="Black"></asp:Label>
                            <asp:Label ID="TbTotal" runat="server" CssClass="font-weight-bold" Text="" ForeColor="Black"></asp:Label>
                              
                          
                        </div>
                    </div>
                         <div class="col-lg-5 col-md-12 col-12">
                           <div class="form-group">
                             <asp:LinkButton ID="BtnAgendaCita" runat="server" class="btn-b btn-beauty" type="submit" OnClick="BtnAgendaCita_Click">Agendar Cita</asp:LinkButton>
                               <asp:LinkButton ID="BtnCancelar" runat="server" class="btn-r btn-beauty" type="submit" OnClick="BtnCancelar_Click" >Cancelar</asp:LinkButton>
                           </div>
                       </div>
                    <div class="col-lg-5 col-md-12 col-12">
                        <div class="form-group">
                              <asp:Label ID="LbCliente" runat="server" CssClass="font-weight-bold" Text="Servicio" ForeColor="Black">Cliente</asp:Label>
                              <br />
                              <asp:DropDownList ID="DDLClientes" runat="server" AutoPostBack="true"  Width="231px">
                              </asp:DropDownList>                           
                              
                         </div>
                    </div>
                    <br />
                    <br />
                    <br />
                   </div>
               </div>
           </div>
        </div>
      </asp:Panel>
      <asp:Panel ID="PnlCitas" runat="server">
          <div class="container">
            <div class="card"> 
                <div class="card-header text-center">
                    <h5 class="car-tittle">Citas Agendadas</h5>
                </div>
                <div class="card-body text-center"> 
                    <asp:GridView ID="GrvCitasAgen" runat="server" CssClass="table table-bordered table-responsive-sm" 
                        OnRowDeleting="GrvCitasAgen_RowDeleting" AutoGenerateColumns="False" DataKeyNames="id" HorizontalAlign="Center" AllowSorting="True" OnRowEditing="GrvCitasAgen_RowEditing">
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                            <asp:BoundField DataField="Fecha" HeaderText="Fecha" SortExpression="Fecha" />
                            <asp:BoundField DataField="Hora" HeaderText="Hora" SortExpression="Hora" />
                            <asp:BoundField DataField="Servicio" HeaderText="Servicio" SortExpression="Servicio" />
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                            <asp:BoundField DataField="Celular" HeaderText="Celular" SortExpression="Celular" />
                             <asp:BoundField DataField="Precio" HeaderText="Total" SortExpression="Total" />
                             <asp:BoundField DataField="Pagado" HeaderText="Pagado" SortExpression="Pagado" />

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
      </asp:Panel>
   <asp:HiddenField ID="HfIdUsuario" runat="server" />
</asp:Content>
