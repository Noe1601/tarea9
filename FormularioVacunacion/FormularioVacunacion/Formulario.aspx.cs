using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FormularioVacunacion
{
    public partial class Formulario : System.Web.UI.Page
    {
        string cs = ConfigurationManager.ConnectionStrings["dbCon"].ConnectionString;
        SqlConnection conexion;
        SqlCommand comando;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void ClearInputs()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";
            TextBox12.Text = "";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text != "" && TextBox2.Text != "" && 
                TextBox3.Text != "" &&TextBox4.Text != "" && TextBox5.Text != "" &&
                TextBox6.Text != "" && TextBox7.Text != "" && TextBox8.Text != "" && 
                TextBox9.Text != "" && TextBox10.Text != "" && 
                TextBox11.Text != "" && TextBox12.Text != ""){

                using(conexion=new SqlConnection(cs)){
                    conexion.Open();
                    comando = new SqlCommand("INSERT INTO PERSONAS (CEDULA,NOMBRE,APELLIDO,TELEFONO,FECHA_NACIMIENTO,TIPO_SANGRE,PROVINCIA,DIRECCION,LATITUD,LONGITUD,POSITIVIDAD,JUSTIFICACION) VALUES(@cedula,@nombre,@apellido,@telefono,@fecha,@sangre,@provincia,@direccion,@latitud,@longitud,@positividad,@justificacion)", conexion);

                    comando.Parameters.AddWithValue("@cedula", TextBox1.Text);
                    comando.Parameters.AddWithValue("@nombre", TextBox2.Text);
                    comando.Parameters.AddWithValue("@apellido", TextBox3.Text);
                    comando.Parameters.AddWithValue("@telefono", TextBox4.Text);
                    comando.Parameters.AddWithValue("@fecha", TextBox5.Text);
                    comando.Parameters.AddWithValue("@sangre", TextBox6.Text);
                    comando.Parameters.AddWithValue("@provincia", TextBox7.Text);
                    comando.Parameters.AddWithValue("@direccion", TextBox8.Text);
                    comando.Parameters.AddWithValue("@latitud", TextBox9.Text);
                    comando.Parameters.AddWithValue("@longitud", TextBox10.Text);
                    comando.Parameters.AddWithValue("@positividad", TextBox11.Text);
                    comando.Parameters.AddWithValue("@justificacion", TextBox12.Text);
                    comando.ExecuteNonQuery();
                    conexion.Close();

                    ClearInputs();

                    Label1.Text = "Datos insertados correctamente";
                }


            }
            else
            {
                Label1.Text = "Todos los campos deben estar llenos";
            }
        }
    }
}