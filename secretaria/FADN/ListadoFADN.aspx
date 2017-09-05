﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ListadoFADN.aspx.cs" Inherits="secretaria.FADN.ListadoFADN" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Listado FADN</h2>
    <asp:GridView ID="gvListado" runat="server" OnSelectedIndexChanged="gvListado_SelectedIndexChanged" AllowPaging="True" DataKeyNames="numero" CssClass="table table-hover table-responsive">
        <Columns>
            
            <asp:CommandField ButtonType="Button" HeaderText="Seleccionar"  ControlStyle-CssClass="btn btn-primary" ShowSelectButton="True">
                <HeaderStyle BorderStyle="Inset"  HorizontalAlign="Center" VerticalAlign="Middle" />
                <ItemStyle BorderStyle="Inset" HorizontalAlign="Center" VerticalAlign="Middle" />
            </asp:CommandField>
           

        </Columns>
    </asp:GridView>
</asp:Content>
