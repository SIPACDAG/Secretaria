﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="secretaria.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="Content/bootstrap.css" rel="stylesheet" type="text/css" media="screen" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="screen" />
    <title></title>



</head>
<body id="body3">
   
    <form>
    </form>

    <form id="form1" runat="server">
        <br />
        <br />
        <br />
        <br />
        <br />
        <div id="DivContenedorMenu_EW2">
        </div>
        <div class="col-md-10" />
        <div class="col-md-10" />
        <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-4">

                <asp:Image ID="Image1" runat="server" Height="334px" ImageUrl="~/fonts/logoCdag.png" Width="280px" />
                <h3>Secretaria General</h3>

            </div>

            <div class="col-md-4">

                <label><span style="font-size: medium">Usuario</span>: </label>
                <asp:TextBox ID="txtusuario" Text="" CssClass="form-control" Style="" Width="80%" runat="server"></asp:TextBox>
                <label><span style="font-size: medium">Contraseña</span>: </label>
                <asp:TextBox ID="txtpassword" TextMode="Password" Text="" CssClass="form-control" Width="80%" runat="server"></asp:TextBox>
                <br />
                <asp:Button ID="btnIngresar" CssClass="btn btn-primary" Text="Ingresar" Width="80%" runat="server" OnClick="btnIngresar_Click" />
                <asp:Label ID="lblError" CssClass="label label-danger" runat="server"></asp:Label>

            </div>


        </div>


    </form>
</body>
</html>
