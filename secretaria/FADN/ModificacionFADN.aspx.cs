using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Controladores;
using Modelos;

namespace secretaria.FADN
{
    public partial class ModificacionFADN : System.Web.UI.Page
    {
        cFADN controladorFand;
        mFadn modeloFand;
        protected void Page_Load(object sender, EventArgs e)
        {
            int nom = Convert.ToInt16(Request.QueryString["numero"]);
            controladorFand = new cFADN();
            //Datos Federacion.
            modeloFand = controladorFand.Obtener_Fadn(nom);
            lblFederacion.Text = modeloFand.Nombre;
            txtDireccion.Text = modeloFand.Direccion;
            txtTelefono.Text = modeloFand.Telefono;
            txtCorreo.Text = modeloFand.correo_electronico;
            //Datos junta
            gvComite.DataSource = controladorFand.Obtener_Junta(nom);
            gvComite.DataBind();
        }
    }
}