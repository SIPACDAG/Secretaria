<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="DirigentesFADN.aspx.cs" Inherits="secretaria.Dirigentes.DirigentesFADN" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <link href="content/bootstrap.css" rel="stylesheet" type="text/css" media="screen" />
    <div class="form-horizontal">
        <h4>Seleccionar FADN</h4>
        <div class="row">
            <div class="col-sm-4" style="padding:0px">
                <asp:DropDownList ID="ddl_fadn" runat="server" CssClass="form-control"></asp:DropDownList>
            </div>
            <div class="col-sm-2" style="padding:0px">
                <asp:Button ID="btn_buscar" runat="server" Text="Mostrar" CssClass="btn btn-primary" OnClick="btn_buscar_Click" />
            </div>
        </div>
        <div class="row" style="margin-top:10px">
            <div class="col-sm-6">
                <asp:Panel ID="panel_junta" runat="server" CssClass="panel" Visible="false">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-xs-6">
                                <asp:Label ID="Label1" runat="server" Text="FADN" Font-Bold="true"></asp:Label>
                            </div>
                            <div class="col-xs-6">
                                <asp:Label ID="Label2" runat="server" Text="Correo" Font-Bold="true"></asp:Label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-6">
                                <asp:Label ID="lbl_fadn" runat="server" Text=""></asp:Label>
                            </div>
                            <div class="col-xs-6">
                                <asp:Label ID="lbl_correo" runat="server" Text=""></asp:Label>
                            </div>
                        </div>
                        <div class="row" style="margin-top:10px">
                            <div class="col-xs-6">
                                <asp:Label ID="Label5" runat="server" Text="Comité Ejecutivo" CssClass="h4"></asp:Label>
                            </div>
                        </div>
                        <div class="row" style="margin-top:10px">
                            <div class="col-sm-6">
                                <asp:GridView ID="gv_fadn" runat="server" CssClass="table table-hover table-responsive" OnSelectedIndexChanged="gv_fadn_SelectedIndexChanged">
                                    <Columns>
                                        <asp:CommandField ButtonType="Button" HeaderText="Seleccionar"  ControlStyle-CssClass="btn btn-primary" ShowSelectButton="True">
                                            <HeaderStyle BorderStyle="Inset"  HorizontalAlign="Center" VerticalAlign="Middle" />
                                            <ItemStyle BorderStyle="Inset" HorizontalAlign="Center" VerticalAlign="Middle" />
                                        </asp:CommandField>
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </asp:Panel>
            </div>
            <div class="col-sm-6">
                <asp:Panel ID="panel_cambio" runat="server" CssClass="panel panel-primary" Visible="false">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-xs-6">
                                <asp:Label ID="Label16" runat="server" Text="Seleccionar Dirigente" CssClass="h4"></asp:Label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-6">
                                <asp:LinkButton ID="lbtn_buscar" runat="server" CssClass="btn btn-success" OnClick="lbtn_buscar_Click">
                                    Buscar <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                                </asp:LinkButton>
                            </div>
                            <div class="col-xs-6">
                                <asp:LinkButton ID="lbtn_agregar" runat="server" CssClass="btn btn-success" OnClick="lbtn_agregar_Click">
                                    Agregar <span class="glyphicon glyphicon-plus" aria-hidden="true"></span>
                                </asp:LinkButton>
                            </div>
                        </div>
                        <asp:Panel ID="panel_agregar" runat="server" Visible="false">
                            <div class="row">
                                <div class="col-xs-6">
                                    <asp:Label ID="Label6" runat="server" Text="Nombres"></asp:Label>
                                </div>
                                <div class="col-xs-6">
                                    <asp:Label ID="Label7" runat="server" Text="Apellidos"></asp:Label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-6">
                                    <asp:TextBox ID="tb_nombres" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-xs-6">
                                    <asp:TextBox ID="tb_apellidos" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-6">
                                    <asp:Label ID="Label8" runat="server" Text="CUI (Dpi)"></asp:Label>
                                </div>
                                <div class="col-xs-6">
                                    <asp:Label ID="Label9" runat="server" Text="Extendido en"></asp:Label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-6">
                                    <asp:TextBox ID="tb_dpi" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                </div>
                                <div class="col-xs-6">
                                    <asp:DropDownList ID="ddl_dpto" runat="server" CssClass="form-control"></asp:DropDownList>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-6">
                                    <asp:Label ID="Label10" runat="server" Text="NIT"></asp:Label>
                                </div>
                                <div class="col-xs-6">
                                    <asp:Label ID="Label11" runat="server" Text="Fecha de nacimiento"></asp:Label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-6">
                                    <asp:TextBox ID="tb_nit" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                </div>
                                <div class="col-xs-6">
                                    <asp:TextBox ID="tb_fecha_nac" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-6">
                                    <asp:Label ID="Label12" runat="server" Text="Fecha de posesión"></asp:Label>
                                </div>
                                <div class="col-xs-6">
                                    <asp:Label ID="Label13" runat="server" Text="Fecha de finalización"></asp:Label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-6">
                                    <asp:TextBox ID="tb_fecha_pos" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                </div>
                                <div class="col-xs-6">
                                    <asp:TextBox ID="tb_fecha_fin" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-6">
                                    <asp:Label ID="Label14" runat="server" Text="Correo electrónico"></asp:Label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-6">
                                    <asp:TextBox ID="tb_correo" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row" style="margin-top:5px">
                                <div class="col-xs-6">
                                    <asp:Button ID="bt_agregar_nuevo" runat="server" Text="Agregar nuevo dirigente" CssClass="btn btn-primary" Width="100%" />
                                </div>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="panel_buscar" runat="server" Visible="false">
                            <div class="row">
                                <div class="col-xs-6">
                                    <asp:Label ID="Label15" runat="server" Text="Buscar dirigente"></asp:Label>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xs-6">
                                    <asp:TextBox ID="tb_busqueda_dir" runat="server" placeHolder="Nombre dirigente" CssClass="form-control"></asp:TextBox>
                                </div>
                                <div class="col-xs-6">
                                    <asp:LinkButton ID="lbtn_busqueda_nombre" runat="server" CssClass="btn btn-primary">
                                        <span class="glyphicon glyphicon-search" aria-hidden="true"></span>
                                    </asp:LinkButton>
                                </div>
                            </div>
                        </asp:Panel>
                    </div>
                </asp:Panel>
                <asp:Panel ID="panel_informacion_cambio" runat="server" CssClass="panel panel-default">
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-xs-6">
                                <asp:Label ID="Label17" runat="server" Text="Cambio de dirigente" CssClass="h4"></asp:Label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-6">
                                <asp:Label ID="Label18" runat="server" Text="Nuevo dirigente" CssClass="h5"></asp:Label>
                            </div>
                            <div class="col-xs-6">
                                <asp:Label ID="Label4" runat="server" Text="Sustituye a" CssClass="h5"></asp:Label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-6">
                                <asp:TextBox ID="tb_dirigente_nuevo" runat="server" ReadOnly="true" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-xs-6">
                                <asp:TextBox ID="tb_dirigente_cambio" runat="server" ReadOnly="true" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-6">
                                <asp:Label ID="Label3" runat="server" Text="Por el cargo de" CssClass="h5"></asp:Label>
                            </div>
                            <div class="col-xs-6">
                                <asp:Label ID="Label19" runat="server" Text="Período" CssClass="h5"></asp:Label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-xs-6">
                                <asp:TextBox ID="tb_dirigente" runat="server" ReadOnly="true" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-xs-6">
                                <asp:TextBox ID="tb_periodo" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </asp:Panel>
            </div>
        </div>
    </div>
</asp:Content>
