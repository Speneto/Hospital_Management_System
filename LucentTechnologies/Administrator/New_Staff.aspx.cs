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
    public partial class New_Staff : System.Web.UI.Page
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

        protected void add_staff_Click(object sender, EventArgs e)
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
                cmd.CommandText = "staff_Insert";
                cmd.Parameters.AddWithValue("@Surname", surname.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Firstname", firstname.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Lastname", lastname.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Gender", gender.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Marital_status", status.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Birth_date", birthdate.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Department", department.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Rank", rank.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Phone_number", phone.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Home_address", address.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@State", state.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@LGA", lga.Text.Trim().ToString());
                cmd.ExecuteNonQuery();
            }
            catch (Exception ex)
            {
                ex.StackTrace.ToString();
            }
            finally
            {
                con.Close();
            }
        }
    }
}