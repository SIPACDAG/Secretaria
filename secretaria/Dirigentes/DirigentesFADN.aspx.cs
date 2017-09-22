using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Controladores;
using Modelos;
using System.Data;
namespace secretaria.Dirigentes
{
    public partial class DirigentesFADN : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                ddl_fadn.AppendDataBoundItems = true;
                ddl_fadn.Items.Add("-- Seleccione uno --");
                ddl_fadn.Items[0].Value = "-1";

                cDirigente cd = new cDirigente();
                DataTable dt = cd.Fill_FadnDDL();
                ddl_fadn.DataSource = dt;
                ddl_fadn.DataTextField = "nombre";
                ddl_fadn.DataValueField = "numero";
                ddl_fadn.DataBind();
            }
        }

        protected void gv_fadn_SelectedIndexChanged(object sender, EventArgs e)
        {
            panel_cambio.Visible = true;
        }

        protected void btn_buscar_Click(object sender, EventArgs e)
        {
            int value = int.Parse(ddl_fadn.SelectedValue);
            if (value > 0)
            {
                cFADN controladorFand = new cFADN();
                //Datos Federacion.
                mFadn modeloFand = controladorFand.Obtener_Fadn(value);
                lbl_fadn.Text = modeloFand.Nombre;
                lbl_correo.Text = modeloFand.correo_electronico;
                //Datos junta
                cDirigente controladorDirigente = new cDirigente();
                gv_fadn.DataSource = controladorDirigente.Obtener_Junta(value);
                gv_fadn.DataBind();
                panel_junta.Visible = true;

            }
            else
            {
                lbl_fadn.Text = "";
                lbl_correo.Text = "";
                panel_junta.Visible = false;
                ddl_fadn.Focus();
            }
            panel_cambio.Visible = false;
        }

        protected void lbtn_agregar_Click(object sender, EventArgs e)
        {
            panel_buscar.Visible = false;
            panel_agregar.Visible = true;
        }

        protected void lbtn_buscar_Click(object sender, EventArgs e)
        {
            panel_agregar.Visible = false;
            panel_buscar.Visible = true;
        }
    }
}