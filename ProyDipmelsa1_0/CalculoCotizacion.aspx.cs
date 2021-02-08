using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProyDipmelsa1_0
{
    public partial class CalculoCotizacion : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                SetInitialRow();
            }
        }

        private void SetInitialRow()
        {
            
        }

        private void AddNewRowToGrid()
        {
            

        }

        private void SetPreviousData()
        {
          
        }

        private void SetTotal(decimal nueva)
        {
           
            
        }


        protected void btnAgregarMaterial_Click(object sender, EventArgs e)
        {
           
        }

        protected void txtCantidad_TextChanged(object sender, EventArgs e)
        {
                
        }

        protected void txtPreUnitario_TextChanged(object sender, EventArgs e)
        {
        }
    }
}