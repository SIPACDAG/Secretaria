<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModificacionFADN.aspx.cs" Inherits="secretaria.FADN.ModificacionFADN" %>


<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="content/bootstrap.css" rel="stylesheet" type="text/css" media="screen" />
    <div class="jumbotron">
        <div class="col-md-4"></div>
        <div class="col-md-8">
            <asp:Image ID="ImagenFADN" runat="server" ImageUrl="~/fonts/download.png" Height="65%" Width="45%" />
        </div>

        <div class="form-horizontal">
            <div class="form-group">
            </div>
            <div class="form-group">

                <label class="col-sm-2"><span style="font-size: medium">Nombre</span>: </label>
                <div class="col-sm-4">
                    <asp:Label ID="lblFederacion" Text="Ajedrez" runat="server"></asp:Label>
                </div>
                <label class="col-sm-1">
                    <span style="font-size: medium">Dirección</span>: 
                </label>
                <div class="col-sm-4">
                    <asp:TextBox ID="txtDireccion" CssClass="form-control input" runat="server"></asp:TextBox>
                </div>

            </div>
            <div class="form-group">

                <label class="col-sm-2"><span style="font-size: medium">Telefono</span>: </label>
                <div class="col-sm-4">
                    <asp:TextBox ID="txtTelefono" CssClass="form-control input" runat="server"></asp:TextBox>
                </div>
                <label class="col-sm-1">
                    <span style="font-size: medium">Correo</span>: 
                </label>
                <div class="col-sm-4">
                    <asp:TextBox ID="txtCorreo" CssClass="form-control input" runat="server"></asp:TextBox>
                </div>

            </div>
            <div class="form-group">
                <div class="col-md-4"></div>
                <div class="col-md-4">
                    <asp:Button ID="btnGuardar" Text="Guardar" CssClass="btn btn-success" runat="server" Width="100%" />
                </div>
            </div>

        </div>
        
    </div>
    <asp:GridView ID="gvComite" runat="server" AllowPaging="True" DataKeyNames="dpi" CssClass="table table-hover table-responsive" style="margin-right: 0px">
            <Columns>

                <asp:CommandField ButtonType="Button" HeaderText="Seleccionar" ControlStyle-CssClass="btn btn-primary" ShowSelectButton="True">
                    <HeaderStyle BorderStyle="Inset" HorizontalAlign="Center" VerticalAlign="Middle" />
                    <ItemStyle BorderStyle="Inset" HorizontalAlign="Center" VerticalAlign="Middle" />
                </asp:CommandField>


            </Columns>
        </asp:GridView>
</asp:Content>
