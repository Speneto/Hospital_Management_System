using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LucentTechnologies
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            PlaceHolder ph = new PlaceHolder();
            ph.Controls.Add(LoadControl("~/Controls/General.ascx"));
            Session.Clear();
        }

        protected void Login_Click(object sender, EventArgs e)
        {
            string Username, password, Adminis, Administrator, Doctor, Nurse, DataManager, LaboratoryScientist;
            Session.Clear();
            Username = this.username.Text.ToString();
            password = this.Password.Text.ToString();
            //User = "Staff";
            Administrator = "Administrator";
            Doctor = "Doctor";
            Nurse = "Nurse";
            DataManager = "Data Manager";
            LaboratoryScientist = "Laboratory Scientist";

            //group2 = "Admin";
            Session.Clear();

            DateTime me = new DateTime();
            me.Date.ToString();
            me.GetDateTimeFormats();

            String consett = ConfigurationManager.ConnectionStrings["Conn"].ConnectionString;

            SqlConnection conn = new SqlConnection();
            conn.ConnectionString = consett;
            SqlCommand cmd = new SqlCommand();

            cmd.Connection = conn;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = string.Concat("SELECT * FROM Users_Tbl where (Users_Tbl.Username='", Username, "') and (Users_Tbl.Password='", password, "') ;");
            /* cmd.CommandText = "Login";
             SqlParameter user = new SqlParameter("@username", Username);
             user.SqlDbType = SqlDbType.NVarChar;
             cmd.Parameters.Add(user);

             SqlParameter pass = new SqlParameter("@password", Password);
             pass.SqlDbType = SqlDbType.NVarChar;
             cmd.Parameters.Add(pass);
             */
            ConnectionState previousConnectionState = conn.State;

            try
            {
                try
                {
                    if (conn.State == ConnectionState.Closed)
                    {
                        conn.Open();

                    }

                }
                catch (SqlException esc)
                {
                    esc.StackTrace.ToString();
                    Response.Redirect("~/LoginException.aspx");

                }
                SqlDataReader result = cmd.ExecuteReader();

                if (result.Read())
                {

                    Adminis = result.GetString(3);
                    Session["usern"] = result.GetString(1);
                    Session["name"] = result.GetString(1);



                    if (Adminis == "Data Manager")
                    {

                        if ((Category.SelectedValue == "3") && (Adminis == "Data Manager"))
                        {
                            string currentuser;
                            currentuser = string.Concat(result.GetString(1), "(", result.GetString(1), ")", " - ", DataManager);
                            System.Web.Security.FormsAuthentication.RedirectFromLoginPage(currentuser, true);

                            Session["userty"] = DataManager;
                            Response.Redirect("~/Account/Users.aspx");

                        }

                    }

                    if (Adminis == "Doctor")
                    {
                        if ((Category.SelectedValue == "2") && (Adminis == "Doctor"))
                        {
                            string currentuser1;
                            currentuser1 = string.Concat(result.GetString(1), "(", result.GetString(1), ")", "-", Doctor);
                            System.Web.Security.FormsAuthentication.RedirectFromLoginPage(currentuser1, true);
                            Session["userty"] = Doctor;
                            Response.Redirect("~/Account/Users.aspx");
                        }
                    }


                    if (Adminis == "Laboratory Scientist")
                    {
                        if ((Category.SelectedValue == "4") && (Adminis == "Laboratory Scientist"))
                        {
                            string currentuser2;
                            currentuser2 = string.Concat(result.GetString(1), "(", result.GetString(1), ")", "-", LaboratoryScientist);
                            System.Web.Security.FormsAuthentication.RedirectFromLoginPage(currentuser2, true);
                            Session["userty"] = LaboratoryScientist;
                            Response.Redirect("~/Account/Users.aspx");
                        }
                    }

                    if (Adminis == "Nurse")
                    {
                        if ((Category.SelectedValue == "5") && (Adminis == "Nurse"))
                        {
                            string curentuser3;
                            curentuser3 = string.Concat(result.GetString(1), "(", result.GetString(1), ")", "-", Nurse);
                            System.Web.Security.FormsAuthentication.RedirectFromLoginPage(curentuser3, true);
                            Session["userty"] = Nurse;
                            Response.Redirect("~/Account/Users.aspx");
                        }
                    }



                    if (Adminis == "Administrator")
                    {


                        if ((Category.SelectedValue == "1") && (Adminis == "Administrator"))
                        {

                            SqlConnection conn1 = new SqlConnection();
                            conn1.ConnectionString = conn.ConnectionString;
                            SqlCommand cmd1 = new SqlCommand();

                            cmd1.Connection = conn1;
                            cmd1.CommandType = CommandType.Text;
                            cmd1.CommandText = string.Concat("SELECT * From Users_tbl where (Username ='", result.GetString(1), "');");

                            ConnectionState previousConnectionState1 = conn1.State;
                            if (conn1.State == ConnectionState.Closed)
                            {
                                conn1.Open();

                                try
                                {

                                    SqlDataReader result2 = cmd1.ExecuteReader();

                                    if (result2.Read())
                                    {
                                        Session["Admin"] = result2.GetString(3);
                                        // Session["Position"] = result2.GetString(3);

                                        string currentuser;
                                        currentuser = string.Concat("(", result.GetString(1), ")-", Session["Admin"]);
                                        System.Web.Security.FormsAuthentication.RedirectFromLoginPage(currentuser, true);

                                        if ((Category.SelectedValue == "1"))
                                        {
                                            Session["userty"] = Administrator;
                                            Response.Redirect("~/Account/Users.aspx");
                                        }


                                    }

                                }
                                catch (Exception h)
                                {
                                    h.StackTrace.ToString();

                                }
                            }
                        }
                    }
                }
            }


            finally
            {
                credentials.Visible = true;

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Close();
                }
            }
        }
    }
}