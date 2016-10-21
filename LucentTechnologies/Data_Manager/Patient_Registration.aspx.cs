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
    public partial class Patient_Registration : System.Web.UI.Page
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

       

        protected void register_Click(object sender, EventArgs e)
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
                cmd.CommandText = "Patient_Tbl_Insert_Proc";
                cmd.Parameters.AddWithValue("@Surname", surname.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Firstname", firstname.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Lastname", lastname.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Gender", gender.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Date", date.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Age", age.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Marital_Status", status.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Religion", religion.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@State", state.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@LGA", lga.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Nationality", nationality.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Phone_Number", phone.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Home_Address", address.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Next_of_Kin_Fullname", fullname.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Next_of_Kin_Phone", phonenumber.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Next_of_Kin_Address", nextofkinaddress.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Relationship", relationship.Text.Trim().ToString());
                cmd.Parameters.AddWithValue("@Email_Address", email.Text.Trim().ToString());


                try
                {
                    cmd.ExecuteNonQuery();
                    success.Visible = true;
                    //success.Text = "Payment added Successfully";
                    string url = "../Reports/PatientDetails_Print.aspx";
                    string s = "window.open('" + url + "', 'open_window', 'width=300,height=100,left=100,top=100,resizable=yes');";
                    ClientScript.RegisterStartupScript(this.GetType(), "script", s, true);
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
                firstname.Text = "";
                surname.Text = "";
                lastname.Text = "";
                date.Text = "";
                age.Text = "";
                
                lga.Text = "";
                phone.Text = "";
                address.Text = "";
                fullname.Text = "";
                nextofkinaddress.Text = "";
                phonenumber.Text = "";
                email.Text = "";

            }

            
        }

        protected void cancel_Click(object sender, EventArgs e)
        {
            firstname.Text = "";
            surname.Text = "";
            lastname.Text = "";
            date.Text = "";
            age.Text = "";
           
            lga.Text = "";
            phone.Text = "";
            address.Text = "";
            fullname.Text = "";
            nextofkinaddress.Text = "";
            phonenumber.Text = "";
            email.Text = "";

        }

       
    }
}