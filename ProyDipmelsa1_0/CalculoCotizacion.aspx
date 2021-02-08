<%@ Page Language="C#"  MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CalculoCotizacion.aspx.cs" Inherits="ProyDipmelsa1_0.CalculoCotizacion" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <section class="col-12">
        <ul class="nav nav-tabs">
          <li class="nav-item">
            <a class="nav-link active" href="#">Active</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Link</a>
          </li>
          <li class="nav-item">
            <a class="nav-link disabled" href="#">Disabled</a>
          </li>
        </ul>
    </section>
    <section id="dvManoObra" runat="server" visible="true" class="col-md-12 col-lg-12 col-sm-12">
        <section class="col-md-12 col-sm-12 col-lg-12 modal-body">
        <div class="col-md-12 col-sm-12 col-lg-12 modal-header">
            <h4><asp:Label runat="server" Text="Salarios"></asp:Label></h4>
        </div>
        <asp:gridview ID="gvSalarios" runat="server" ShowFooter="true" ShowHeader="true" RowHeaderColumn="test"
                             AutoGenerateColumns="false">
            <Columns>
            
            <asp:BoundField DataField="Descripcion" HeaderText="PERSONAL TECNICO"/>
            <asp:TemplateField HeaderText="Personal">
                <ItemTemplate>
                    <asp:TextBox ID="txtPersonal" TextMode="Number" runat="server">0</asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Dias">
                <ItemTemplate>
                    <asp:TextBox ID="txtDias" TextMode="Number" AutoPostBack="true" runat="server">0</asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            </Columns>
        </asp:gridview>
       
    </section>

    </section>

    <section id="dvMateriales" runat="server" visible="false" class="col-md-12 col-lg-12 col-sm-12">
    <section class="col-md-12 col-lg-12 col-sm-12 modal-header text-center">
        <h3><asp:Label runat="server" Text="Materiales y Consumibles a Administrar"></asp:Label></h3>
    </section>
    <br />
    <section class="col-md-12 col-sm-12 col-lg-12 modal-body">
        <div class="col-md-12 col-sm-12 col-lg-12 modal-header">
            <h4><asp:Label runat="server" Text="Materiales"></asp:Label></h4>
        </div>
       <%-- <asp:GridView runat="server" ID="gvMateriales" CssClass="table table-bordered table-condensed" AllowPaging="true" 
            AllowSorting="true" >

        </asp:GridView>--%>
        <asp:gridview ID="gvMateriales" runat="server" ShowFooter="true" ShowHeader="true" RowHeaderColumn="test"
                             AutoGenerateColumns="false">
            <Columns>
            <asp:BoundField DataField="RowNumber" HeaderText="Item" />
            <asp:TemplateField HeaderText="Descripción">
                <ItemTemplate>
                    <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Unidad">
                <ItemTemplate>
                    <asp:TextBox ID="txtUnidad" TextMode="Number" runat="server">0</asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Cantidad">
                <ItemTemplate>
                    <asp:TextBox ID="txtCantidad" TextMode="Number" AutoPostBack="true" OnTextChanged="txtCantidad_TextChanged" runat="server">0</asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Precio Unitario">
                <ItemTemplate>
                     <asp:TextBox ID="txtPreUnitario" TextMode="Number" AutoPostBack="true" OnTextChanged="txtPreUnitario_TextChanged" runat="server">0</asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Precio Total">
                <ItemTemplate>
                    <asp:TextBox ID="txtPreTotal" runat="server" Enabled="false">0</asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Proveedor">
                <ItemTemplate>
                     <asp:TextBox ID="txtProveedor" runat="server"></asp:TextBox>
                </ItemTemplate>
                <FooterStyle HorizontalAlign="Right" />
                <FooterTemplate>
                     <asp:Button ID="btnAgregarMaterial" runat="server" Text="Nueva Fila" OnClick="btnAgregarMaterial_Click" />
                </FooterTemplate>
            </asp:TemplateField>
            </Columns>
        </asp:gridview>
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="col-md-6">
                <h4><asp:Label runat="server" Text="Total Materiales:" ID="lblTotalMateriales"></asp:Label></h4>
            </div>
            <div class="col-md-4">
                <h4><b><asp:Label runat="server" ID="Label2"></asp:Label></b></h4>
            </div>
        </div>
    </section>

    <section class="col-md-12 col-sm-12 col-lg-12 modal-body">
        <div class="col-md-12 col-sm-12 col-lg-12 modal-header">
            <h4><asp:Label runat="server" Text="Consumibles"></asp:Label></h4>
        </div>
        <asp:gridview ID="gvConsumibles" runat="server" ShowFooter="true" ShowHeader="true" RowHeaderColumn="test"
                             AutoGenerateColumns="false">
            <Columns>
            <asp:BoundField DataField="RowNumber" HeaderText="Item" />
            <asp:TemplateField HeaderText="Descripción">
                <ItemTemplate>
                    <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Unidad">
                <ItemTemplate>
                    <asp:TextBox ID="txtUnidad" TextMode="Number" runat="server">0</asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Cantidad">
                <ItemTemplate>
                    <asp:TextBox ID="txtCantidad" TextMode="Number" AutoPostBack="true" OnTextChanged="txtCantidad_TextChanged" runat="server">0</asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Precio Unitario">
                <ItemTemplate>
                     <asp:TextBox ID="txtPreUnitario" TextMode="Number" AutoPostBack="true" OnTextChanged="txtPreUnitario_TextChanged" runat="server">0</asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Precio Total">
                <ItemTemplate>
                    <asp:TextBox ID="txtPreTotal" runat="server" Enabled="false">0</asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Proveedor">
                <ItemTemplate>
                     <asp:TextBox ID="txtProveedor" runat="server"></asp:TextBox>
                </ItemTemplate>
                <FooterStyle HorizontalAlign="Right" />
                <FooterTemplate>
                     <asp:Button ID="btnAgregarMaterial" runat="server" Text="Nueva Fila" OnClick="btnAgregarMaterial_Click" />
                </FooterTemplate>
            </asp:TemplateField>
            </Columns>
        </asp:gridview>
        <div class="col-md-12 col-sm-12 col-lg-12">
            <div class="col-md-6">
                <h4><asp:Label runat="server" Text="Sub Total Consumibles:"></asp:Label></h4>
            </div>
            <div class="col-md-4">
                <h4><b><asp:Label runat="server" ID="Label1"></asp:Label></b></h4>
            </div>
        </div>
    </section>
   </section>
</asp:Content>
