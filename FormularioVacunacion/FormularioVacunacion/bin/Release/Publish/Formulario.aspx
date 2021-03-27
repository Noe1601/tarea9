<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Formulario.aspx.cs" Inherits="FormularioVacunacion.Formulario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
</head>
<body>

    <div class="container">
        <h1>Formulario de solicitud <small>Vacuna covid</small></h1>
        <asp:Label ID="Label1" class="text-danger" runat="server" Text=""></asp:Label>
        <a class="mt-3" href="Tabla.aspx">Ver datos</a>
        <a class="mt-3" href="Integrantes.aspx">Ver integrantes</a>
        <hr />
         <form id="form1" runat="server">

           <div class="form-group">
            <label>Cedula</label>
            <asp:TextBox ID="TextBox1" class="form-control input" placeholder="Ingrese su cedula aqui" runat="server"></asp:TextBox>
          </div>

              <div class="form-group">
    <label>Nombre</label>
    <asp:TextBox ID="TextBox2" class="form-control input" placeholder="Ingrese su nombre aqui" runat="server"></asp:TextBox>
  </div>

               <div class="form-group">
    <label>Apellido</label>
    <asp:TextBox ID="TextBox3" class="form-control input" placeholder="Ingrese su apellido aqui" runat="server"></asp:TextBox>
  </div>

               <div class="form-group">
    <label>Telefono</label>
    <asp:TextBox ID="TextBox4" class="form-control input" placeholder="Ingrese su telefono aqui" runat="server"></asp:TextBox>
  </div>

               <div class="form-group">
    <label>Fecha nacimiento</label>
    <asp:TextBox ID="TextBox5" class="form-control input" placeholder="Ingrese su fecha de nacimiento aqui" runat="server"></asp:TextBox>
  </div>

               <div class="form-group">
    <label>Sangre</label>
    <asp:TextBox ID="TextBox6" class="form-control input" placeholder="Ingrese su tipo de sangre aqui" runat="server"></asp:TextBox>
  </div>

               <div class="form-group">
    <label>Provincia</label>
    <asp:TextBox ID="TextBox7" class="form-control input" placeholder="Ingrese su provincia aqui" runat="server"></asp:TextBox>
  </div>

               <div class="form-group">
    <label>Direccion</label>
    <asp:TextBox ID="TextBox8" class="form-control input" placeholder="Ingrese su direccion aqui" runat="server"></asp:TextBox>
  </div>

               <div class="form-group">
    <label>Latitud</label>
    <asp:TextBox ID="TextBox9" class="form-control input" placeholder="Ingrese su latitud aqui" runat="server"></asp:TextBox>
  </div>

               <div class="form-group">
    <label>Longitud</label>
    <asp:TextBox ID="TextBox10" class="form-control input" placeholder="Ingrese su longitud aqui" runat="server"></asp:TextBox>
  </div>

               <div class="form-group">
    <label>Covid</label>
    <asp:TextBox ID="TextBox11" class="form-control input" placeholder="Le ha dado covid?" runat="server"></asp:TextBox>
  </div>

               <div class="form-group">
    <label>Justificacion</label>
    <asp:TextBox ID="TextBox12" class="form-control input" placeholder="Justifique porque hay que vacunarlo en su casa" runat="server"></asp:TextBox>
  </div>

            

      <asp:Button ID="Button1" class="btn btn-success btn-block mt-3 mb-3" runat="server" Text="Guardar" OnClick="Button1_Click" />

    </form>
    </div>
   
</body>
</html>
