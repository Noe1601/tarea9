<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Tabla.aspx.cs" Inherits="FormularioVacunacion.Tabla" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" />
</head>
        <body>
   <div class="container" style="width: 90%">
       <h1>Personas registradas <small>Datos</small></h1>
       <a class="mt-3" href="Formulario.aspx">Ir al formulario</a>
       <hr />

       <form id="form1" runat="server">
       <asp:SqlDataSource ID="Personas" 
           connectionString="Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\HP\source\repos\FormularioVacunacion\FormularioVacunacion\App_Data\VACUNASCOVID.mdf;Integrated Security=True" providerName="System.Data.sqlClient"
           runat="server" SelectCommand="SELECT [CEDULA],[NOMBRE],[APELLIDO],[FECHA_NACIMIENTO],[PROVINCIA] FROM [PERSONAS]"
          ></asp:SqlDataSource>


<asp:GridView ID="GridView1" class="table table-bordered" AutoGenerateColumns="false" DataKeyNames="CEDULA" DataSourceID="Personas"
           runat="server">
            <Columns>
                <asp:BoundField DataField="CEDULA" HeaderText="CEDULA" />
                <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" />
                <asp:BoundField DataField="APELLIDO" HeaderText="APELLIDO" />
                <asp:BoundField DataField="FECHA_NACIMIENTO" HeaderText="FECHA NACIMIENTO" />
                <asp:BoundField DataField="PROVINCIA" HeaderText="PROVINCIA" />
           </Columns>
</asp:GridView>
          
          
       </form>
   </div>
</body>
</html>
