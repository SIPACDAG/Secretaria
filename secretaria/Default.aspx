<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="secretaria._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">

        <div class="row">
            <div class="col-md-4">

                <asp:Image ID="Image1" runat="server" Height="334px" ImageUrl="~/fonts/logoCdag.png" Width="280px" />
                <p>Secretaria General</p>

            </div>
            <div class="col-md-1"></div>
            <div class="col-md-4">

                <label ><span style="font-size: medium">Usuario</span>: </label>
                <asp:TextBox ID="txtusuario" Text="" CssClass="form-control" Width="80%" runat="server"></asp:TextBox>
                <label><span style="font-size: medium">Contraseña</span>: </label>
                <asp:TextBox ID="txtpassword" TextMode="Password" Text="" CssClass="form-control" Width="80%" runat="server"></asp:TextBox>
                <br/>
                    <asp:Button ID="btnIngresar" CssClass="btn btn-primary" Text="Ingresar" Width="80%" runat="server" />
                

            </div>


        </div>
    </div>

</asp:Content>
