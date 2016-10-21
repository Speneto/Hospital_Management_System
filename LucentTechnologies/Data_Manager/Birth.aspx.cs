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
    public partial class Birth : System.Web.UI.Page
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
            ConnectionState prev = con.State;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "Birth_Insert";
                cmd.Parameters.AddWithValue("@Patient_Id", patient_id.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Staff_Id", staff_id.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Birth_date", date.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Time", time.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Infant_gender", gender.Text.Trim().ToString());

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
            catch (Exception er)
            {
                failure.Text = er.StackTrace.ToString();
                failure.Visible = true;
            }
            finally
            {
                con.Close();
                //good.Visible = false;
                patient_id.Text = "";
                date.Text = " ";
                time.Text = " ";
          

            }
            


        }
        protected void cancle_Click(object sender, EventArgs e)
        {
            ;
            patient_id.Text = "";
            date.Text = " ";
            time.Text = " ";
           
        }
    }
}