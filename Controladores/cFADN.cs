using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.UI.WebControls;
using Modelos;

namespace Controladores
{
    public class cFADN
    {
        cConexion conectar;
        public DataTable ListadoFADN()
        {
            conectar = new cConexion();
            DataTable dt = new DataTable();
            conectar.AbrirConexion();
            string query = string.Format("select id_fand as numero, Nombre,Direccion,Telefono,correo_electronico as Correo,Logo from dbsecretaria.sg_fadn; ");
            MySqlDataAdapter consulta = new MySqlDataAdapter(query, conectar.conectar);
            consulta.Fill(dt);
            conectar.CerrarConexion();
            return dt;
        }

        public mFadn Obtener_Fadn(int id)
        {   
            mFadn objFand = new mFadn();
            conectar = new cConexion();
            string permiso = string.Format(" select id_fand,Nombre,Direccion,Telefono,correo_electronico as Correo,Logo from dbsecretaria.sg_fadn where id_fand = {0}; "
            , id);


            conectar.AbrirConexion();
            MySqlCommand cmd = new MySqlCommand(permiso, conectar.conectar);

            MySqlDataReader dr = cmd.ExecuteReader();
            while (dr.Read())
            {
                objFand.id_fand = dr.GetInt16("id_fand");
                objFand.Nombre = dr.GetString("Nombre");
                objFand.Direccion = dr.GetString("Direccion");
                objFand.Telefono = dr.GetString("Telefono");
                objFand.correo_electronico = dr.GetString("Correo");
                if (!string.IsNullOrEmpty (dr.GetValue(5).ToString()))
                {
                    objFand.logo = (byte[])dr.GetValue(5);
                }
                
            }
            return objFand;
        }
    }
}
