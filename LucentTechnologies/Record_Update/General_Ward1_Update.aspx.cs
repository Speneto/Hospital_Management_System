using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LucentTechnologies.Record_Update
{
    public partial class General_Ward1_Update : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usern"] != null)
            {
                //Carry Go, No Rstrictions!
            }
            else
            {
                // Stop Loading the page , restrictions dey!
                Response.Redirect("~/SessionError.aspx");
                Response.End();
            }
        }
        protected void DeleteButton_Click(object sender, EventArgs e)
        {

        }
        protected void DeleteButton_Click2(object sender, EventArgs e)
        {

        }
    }
}