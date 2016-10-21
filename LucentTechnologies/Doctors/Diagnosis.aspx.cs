using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LucentTechnologies.Doctors
{
    public partial class Doctors : System.Web.UI.Page
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
                cmd.CommandText = "Diagnosis_Insert";
                cmd.Parameters.AddWithValue("@Patient_id", patient_id.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Staff_id", staff_id.SelectedValue.Trim().ToString());
                cmd.Parameters.AddWithValue("@Diagnosis_date", diagnosis_date.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Diagnosis", diagnosis.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Prescriptions", prescription.Text.Trim().ToString());

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
               failure.Text =  ex.StackTrace.ToString();
               failure.Visible = true;
            }
            finally
            {
                con.Close();
                patient_id.Text = "";
                diagnosis_date.Text = "";
                diagnosis.Text = "";
                prescription.Text = "";



            }
        }

        protected void cancle_Click(object sender, EventArgs e)
        {
           
            patient_id.Text = "";
            diagnosis_date.Text = "";
            diagnosis.Text = "";
            prescription.Text = "";
        }

    }
}