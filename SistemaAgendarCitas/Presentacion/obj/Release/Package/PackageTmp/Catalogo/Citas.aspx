<%@ Page Title="" Language="C#" MasterPageFile="~/Paginas Maestras/MP_EntidadSesion.master" AutoEventWireup="true" CodeBehind="Citas.aspx.cs" Inherits="Presentacion.Catalogo.Citas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="cphEntidadesSesion" runat="server">
    
        <br />
           <br />
           <br />
           <br />
     
    <asp:Panel ID="PnlUsers" runat="server">
        <div class="container">
            <div class="card">
                <div class="card-header text-center">
                    <h5 class="car-tittle">Cita</h5>
                     <div class="text-left">
                         <asp:Label ID="LbInfo" runat="server" Text="ID Cliente: " ForeColor="Black" ></asp:Label>
                         <asp:Label ID="LbIdUsuario" runat="server" ForeColor="Black"></asp:Label>
                         <br>
                         <asp:Label ID="LbNombre" runat="server" Text="" ForeColor="Black"></asp:Label>
                     </div>
                </div>
                 
              
             
             
            <div class="card-body">
                <div class="row p1-2 pr-2">
                    <div class="col-lg-5 col-md-12 col-12">
                        <div class="form-group">
                              <asp:Label ID="LbServicios" runat="server" CssClass="font-weight-bold" Text="Servicio" ForeColor="Black"></asp:Label>
                              <br />
                              <asp:DropDownList ID="DDLServicio" runat="server" AutoPostBack="true" OnTextChanged="DDLServicio_TextChanged" Width="231px">
                                  <asp:ListItem>Masaje Reductivo</asp:ListItem>
                                  <asp:ListItem>Maquillaje Novia</asp:ListItem>
                                  <asp:ListItem>Facial</asp:ListItem>
                              </asp:DropDownList>                           
                              
                         </div>
                    </div>
                    <div class="col-lg-5 col-md-12 col-12">
                        <div class="form-group">
                              <asp:Label ID="Fecha" runat="server" CssClass="font-weight-bold" Text="Fecha" ForeColor="Black"></asp:Label>
                              <asp:TextBox ID="TbFechaCita" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox> 
                             
                        </div>
                    </div>
                     <div class="col-lg-5 col-md-12 col-12">
                        <div class="form-group">
                              <asp:Label ID="Hora" runat="server" CssClass="font-weight-bold" Text="Hora" ForeColor="Black"></asp:Label>
                              <br />
                            <asp:DropDownList ID="DDLHora" runat="server" Height="30px" Width="204px">
                                <asp:ListItem>8:00am</asp:ListItem>
                                <asp:ListItem>9:00am</asp:ListItem>
                                <asp:ListItem>10:00am</asp:ListItem>
                                <asp:ListItem>11:00am</asp:ListItem>
                                <asp:ListItem>12:00pm</asp:ListItem>
                                <asp:ListItem>1:00pm</asp:ListItem>
                                <asp:ListItem>2:00pm</asp:ListItem>
                                <asp:ListItem>3:00pm</asp:ListItem>
                                <asp:ListItem>4:00pm</asp:ListItem>
                                <asp:ListItem>5:00pm</asp:ListItem>
                              </asp:DropDownList>                
                        </div>
                    </div>
                    <div class="col-lg-5 col-md-12 col-12">
                        <div class="form-group">
                              <asp:Label ID="LbTotal" runat="server" CssClass="font-weight-bold" Text="Total" ForeColor="Black"></asp:Label>
                              <asp:TextBox ID="TbTotal" runat="server" CssClass="form-control" ></asp:TextBox> 
                          
                        </div>
                    </div>
                         <div class="col-lg-5 col-md-12 col-12">
                           <div class="form-group">
                             <asp:LinkButton ID="BtnAgendaCita" runat="server" class="btn btn-primary" type="submit" OnClick="BtnAgendaCita_Click">Agendar Cita</asp:LinkButton>
                           </div>
                       </div>
                    <asp:Label ID="lbResultados" runat="server" CssClass="font-weight-bold" Text="Resultados" ForeColor="Black"></asp:Label>
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
                    <asp:GridView ID="GrvCitasAgen" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical" OnRowDeleting="GrvCitasAgen_RowDeleting" AutoGenerateColumns="False" DataKeyNames="IdRegistroCita" DataSourceID="SqlAgenda">
                        <AlternatingRowStyle BackColor="#CCCCCC" />
                        <Columns>
                            <asp:BoundField DataField="IdRegistroCita" HeaderText="IdRegistroCita" InsertVisible="False" ReadOnly="True" SortExpression="IdRegistroCita" />
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
                        <SortedAscendingHeaderStyle BackColor="#808080" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#383838" />
                         
                    </asp:GridView>
                   
                    <asp:SqlDataSource ID="SqlAgenda" runat="server" ConnectionString="<%$ ConnectionStrings:ConexionBD %>" SelectCommand="SELECT * FROM [Citas] WHERE ([IdCliente] = @IdCliente) ORDER BY [Fecha], [Hora]">
                        <SelectParameters>
                            <asp:ControlParameter ControlID="LbIdUsuario" Name="IdCliente" PropertyName="Text" Type="Int32" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                   
                </div>
            </div>
        </div>
      </asp:Panel>
   <asp:HiddenField ID="HfIdUsuario" runat="server" />
</asp:Content>
