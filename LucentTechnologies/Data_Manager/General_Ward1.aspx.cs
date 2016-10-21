using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LucentTechnologies.Data_Manager
{
    public partial class General_Ward1 : System.Web.UI.Page
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
            String consett = ConfigurationManager.ConnectionStrings["Conn"].ConnectionString;
            SqlConnection con = new SqlConnection();
            con.ConnectionString = consett;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "Ward2_Insert";
                cmd.Parameters.AddWithValue("@Patient_id", patient_id.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Admission_date", admission_date.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Admitted_by", admitted_by.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Ward_name", ward_name.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Bed_number", bed_number.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Discharge_date", discharge_date.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Status", status.Text.Trim().ToString());
                try
                {
                    cmd.ExecuteNonQuery();
                    success.Visible = true;
                    //success.Text = "Payment added Successfully";
                }
                catch (System.Data.SqlClient.SqlException)
                {
                    failure.Text = "Record Entry Fail, Please try again";
                    failure.Visible = true;
                }
            }
            catch (Exception ex)
            {
               failure.Text = ex.StackTrace.ToString();
            }
            finally
            {
                con.Close();
                patient_id.Text = "";
                admission_date.Text = "";
                ward_name.Text = "";
                bed_number.Text = "";
                discharge_date.Text = "";
            }
           
            

        }
        protected void cancle_Click(object sender, EventArgs e)
        {
            patient_id.Text = "";
            admission_date.Text = "";
            ward_name.Text = "";
            bed_number.Text = "";
            discharge_date.Text = "";
            
        }
    }
}