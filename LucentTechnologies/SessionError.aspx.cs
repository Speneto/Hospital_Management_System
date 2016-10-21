using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LucentTechnologies
{
    public partial class SessionError : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            PlaceHolder ph = new PlaceHolder();
            ph.Controls.Add(LoadControl("~/Controls/General.ascx"));
            Session.Clear();
            // Stop Loading the page , restrictions dey!
            Response.Redirect("~/SessionError.aspx");
            Response.End();
        }
    }
}