using Modelos;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Controladores
{
    public class cUsuario
    {
        cConexion conectar;
        public bool login(string usuario,string pass)
        {
            conectar = new cConexion();
            
            conectar.AbrirConexion();
            string query = string.Format("select a.nombre from (select nombre, CAST(AES_DECRYPT(Contrasena, 'SCOGA') AS CHAR(50)) as Contrasena from dbsecretaria.sg_usuario where habilitado = 1) as a where a.nombre = '{0}' and a.Contrasena = '{1}'; ", 
                usuario,pass);
            MySqlCommand cmd = new MySqlCommand(query, conectar.conectar);
            MySqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                if (!string.IsNullOrEmpty(dr.GetString("nombre")))
                {
                    return true;
                }
            }
            

            return false;
        }


        public void InsertUsuario(mUsuario objUsuario)
        {

        }
    }
}
