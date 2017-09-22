using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using MySql.Data.MySqlClient;
using Modelos;

namespace Controladores
{
    public class cDirigente
    {
        cConexion conectar;
        public DataTable Fill_FadnDDL()
        {
            DataTable dt = new DataTable();
            try
            {
                conectar = new cConexion();
                conectar.AbrirConexion();
                string query = string.Format("select id_fand as numero, nombre from dbsecretaria.sg_fadn; ");
                MySqlDataAdapter consulta = new MySqlDataAdapter(query, conectar.conectar);
                consulta.Fill(dt);
                conectar.CerrarConexion();
            }
            catch { };
            return dt;
        }

        public DataTable Obtener_Junta(int id)
        {
            conectar = new cConexion();
            DataTable dt = new DataTable();
            conectar.AbrirConexion();
            string query = string.Format("select td.descripcion Cargo, CONCAT(d.Nombres,' ', d.Apellidos) Nombre, c.Fecha_inicio as 'Fecha Inicio', c.Fecha_final as 'Fecha Final' " +
                " from dbsecretaria.sg_comite_ejecutivo c inner join dbsecretaria.sg_dirigente d on c.id_dirigente = d.idDirigente inner join dbsecretaria.sg_tipo_dirigente td on td.idTipo_dirigente = d.Tipo_dirigente" +
                " where c.id_fadn = {0} and c.Estado = 'electo' and c.Estado_Comite = 1 order by cargo;", id);
            MySqlDataAdapter consulta = new MySqlDataAdapter(query, conectar.conectar);
            consulta.Fill(dt);
            conectar.CerrarConexion();
            return dt;
        }
    }
}
