using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LucentTechnologies.Lab_Technicians
{
    public partial class Laboratory : System.Web.UI.Page
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
                cmd.CommandText = "Laboratory_Insert";
                cmd.Parameters.AddWithValue("@Patient_id", patient_id.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Staff_id", staff_id.SelectedValue.Trim().ToString());
                cmd.Parameters.AddWithValue("@Test_date", test_date.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Test_1", test_1.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Test_2", test_2.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Test_3", test_3.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Test_4", test_4.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Test_5", test_5.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Result_1", result_1.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Result_2", result_2.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Result_3", result_3.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Result_4", result_4.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Result_5", result_5.Text.Trim().ToString());

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
                 test_date.Text = "";
                test_1.Text = "";
                test_2.Text = "";
                test_3.Text = "";
                test_4.Text = "";
                test_5.Text = "";
                result_1.Text = "";
                result_2.Text = "";
                result_3.Text = "";
                result_4.Text = "";
                result_5.Text = "";
            }
        }
    }


}