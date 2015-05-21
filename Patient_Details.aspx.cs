using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data.SqlClient;
using System.Configuration;

namespace RepApp
{
    public partial class Patient_Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection dbCon = new SqlConnection(ConfigurationManager.ConnectionStrings["IEMHRConnectionString"].ConnectionString);
                dbCon.Open();
                string checkuser = "SELECT count(*) FROM PatientDetails where PatientId = '" + PatientIDTextBox.Text + "'";
                SqlCommand cmd = new SqlCommand(checkuser, dbCon);
                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Response.Write("Patient already exists");
                }

                dbCon.Close();
            }
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection dbcon = new SqlConnection(ConfigurationManager.ConnectionStrings["IEMHRConnectionString"].ConnectionString);
                string insertQuery = "INSERT INTO PatientDetails (PatientId, FirstName, MiddleName, LastName, Age, Gender, NextOfKin, Email, Phoneno, address, Nationality) VALUES (@PatId, @Fname, @Mname, @Lname, @Age, @Gender, @Nkin, @Email, @Pno, @Addr, @Nat)";
                SqlCommand cmd = new SqlCommand(insertQuery, dbcon);
                cmd.Parameters.AddWithValue("@PatId", PatientIDTextBox.Text);
                cmd.Parameters.AddWithValue("@Fname", FirstNameTextBox.Text);
                cmd.Parameters.AddWithValue("@Mname", MiddleNameTextBox.Text);
                cmd.Parameters.AddWithValue("@Lname", LastNameTextBox.Text);
                cmd.Parameters.AddWithValue("@Age", AgeTextBox.Text);
                cmd.Parameters.AddWithValue("@Gender", GenderTextBox.Text);
                cmd.Parameters.AddWithValue("@Nkin", NextOfKinTextBox.Text);
                cmd.Parameters.AddWithValue("@Email", EmailTextBox.Text);
                cmd.Parameters.AddWithValue("@Pno", PhoneNoTextBox.Text);
                cmd.Parameters.AddWithValue("@Addr", AddressTextBox.Text);
                cmd.Parameters.AddWithValue("@Nat", NationalityTextBox.Text);

                dbcon.Open();
                cmd.ExecuteNonQuery();
                Response.Write("Registration is successful");
                Response.Redirect("Review_Patient.aspx");
                dbcon.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }
    }
}