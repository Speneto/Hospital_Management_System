using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LucentTechnologies.Administrator
{
    public partial class Staff_Education : System.Web.UI.Page
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
                Response.Redirect("../SessionError.aspx");
                Response.End();
            }
        }

        protected void save_Click(object sender, EventArgs e)
        {
             String consett =  ConfigurationManager.ConnectionStrings["Conn"].ConnectionString;
        SqlConnection con = new SqlConnection();
        con.ConnectionString = consett;
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;

        try
        {
            if(con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "staff_education_Insert";
            cmd.Parameters.AddWithValue("@Staff_id", staffid.Text.Trim().ToString());
            cmd.Parameters.AddWithValue("@Highest_Education", hiegheducation.Text.Trim().ToString());
            cmd.Parameters.AddWithValue("@Institution_Name", institutionname.Text.Trim().ToString());
            cmd.Parameters.AddWithValue("@Graduation_date", date.Text.Trim().ToString());
            cmd.ExecuteNonQuery();
        }catch(Exception ex){
            ex.StackTrace.ToString();
        }
        finally{
            con.Close();
        }
    }
        }

        
    }
