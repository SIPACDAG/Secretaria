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
                if (!string.IsNullOrEmpty(dr.GetValue(5).ToString()))
                {
                    objFand.logo = (byte[])dr.GetValue(5);
                }

            }
            return objFand;
        }

        public DataTable Obtener_Junta(int id)
        {
            conectar = new cConexion();
            DataTable dt = new DataTable();
            conectar.AbrirConexion();
            string query = string.Format("select td.descripcion Cargo, CONCAT(d.Nombres,' ', d.Apellidos) Nombre, c.Fecha_inicio as 'Fecha Inicio', c.Fecha_final as 'Fecha Final',d.dpi,d.Lugar_extendio AS 'Lugar Extendido', c.acuerdo_cej as 'Acuerdo', fecha_acuerdo AS 'Fecha', c.Acreditacion_cdag 'Acreditacion', c.Fecha_acreditacion as 'Fecha.' " +
                " from dbsecretaria.sg_comite_ejecutivo c inner join dbsecretaria.sg_dirigente d on c.id_dirigente = d.idDirigente inner join dbsecretaria.sg_tipo_dirigente td on td.idTipo_dirigente = d.Tipo_dirigente" +
                " where c.id_fadn = {0} and c.Estado = 'electo' and c.Estado_Comite = 1 order by cargo;", id);
            MySqlDataAdapter consulta = new MySqlDataAdapter(query, conectar.conectar);
            consulta.Fill(dt);
            conectar.CerrarConexion();
            return dt;
        }

        public void Actualizar_FADN(mFadn objFand)
        {
            conectar = new cConexion();
            DataTable dt = new DataTable();
            conectar.AbrirConexion();
            string query = "";
            if (objFand.logo == null)
            {
                 query = string.Format("update dbsecretaria.sg_fadn set " +
                    "Direccion = '{0}',telefono = '{1}',correo_electronico='{2}' where id_fand={3}", objFand.Direccion, objFand.Telefono, objFand.correo_electronico, objFand.id_fand);

            }
            else
            {
                query = string.Format("update dbsecretaria.sg_fadn set " +
                "Direccion = '{0}',telefono = '{1}',correo_electronico='{2}',logo='" + objFand.logo.ToArray() + "' where id_fand={4}", objFand.Direccion, objFand.Telefono, objFand.correo_electronico, objFand.logo.ToArray(), objFand.id_fand);
            }
            try
            {
                MySqlDataAdapter consulta = new MySqlDataAdapter(query, conectar.conectar);
                consulta.Fill(dt);

            }
            catch (Exception ex)
            {
                string error = ex.Message;
                throw;
            }

            conectar.CerrarConexion();
        }
    }
}
