﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Controladores;
using System.Data;

namespace secretaria.FADN
{
    public partial class ListadoFADN : System.Web.UI.Page
    {
        cFADN objFadn;
        protected void Page_Load(object sender, EventArgs e)
        {
            
            objFadn = new cFADN();
            gvListado.DataSource = objFadn.ListadoFADN();
          
            gvListado.DataBind();
           
           
        }

     

        protected void gvListado_SelectedIndexChanged(object sender, EventArgs e)
        {
            ViewState["numero"] = gvListado.SelectedValue;
            Response.Redirect("ModificacionFADN.aspx?numero=" + Convert.ToString(ViewState["numero"]));
        }
        
    }
}