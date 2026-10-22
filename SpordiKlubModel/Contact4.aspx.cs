using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SpordiKlubModel
{
    public partial class Contact4 : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            lblSonum.Visible = true;
            if (e.Exception == null)
            {
                lblSonum.ForeColor = System.Drawing.Color.Green;
                lblSonum.Text = "Andmed on lisatud";
                GridView1.DataBind();
            }
            else
            {
                lblSonum.ForeColor = System.Drawing.Color.Red;
                lblSonum.Text = "Viga: andmeid ei lisatud";
                e.ExceptionHandled = true;
                e.KeepInInsertMode = true;
            }
        }
    }
}