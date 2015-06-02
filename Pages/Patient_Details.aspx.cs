using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace IEMHR.Pages
{
    public partial class Patient_Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection dbCon = new SqlConnection(ConfigurationManager.ConnectionStrings["IEMHRConnectionString"].ConnectionString);
                dbCon.Open();
                string checkuser = "SELECT count(*) FROM PatientMaster where PatientId = '" + txtPatientId.Text + "'";
                SqlCommand cmd = new SqlCommand(checkuser, dbCon);
                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Response.Write("Patient Id already exists");
                }

                dbCon.Close();
            }
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection dbcon = new SqlConnection(ConfigurationManager.ConnectionStrings["IEMHRConnectionString"].ConnectionString);
                string insertQuery = "INSERT INTO PatienMaster (PatientId, FirstName, MiddleName, LastName, Age, Gender, HomeAddress, PhoneNum, Email, Nationality, NextOfKin, NextOfKinContact) VALUES (@PatId, @Fname, @Mname, @Lname, @Age, @Gender, @HAddr,@Phnum, @Email, @Nat, @Nkin, @NKinContact)";
                SqlCommand cmd = new SqlCommand(insertQuery, dbcon);
                cmd.Parameters.AddWithValue("@PatId", txtPatientId.Text);
                cmd.Parameters.AddWithValue("@Fname", txtFirstName.Text);
                cmd.Parameters.AddWithValue("@Mname", txtMiddleName.Text);
                cmd.Parameters.AddWithValue("@Lname", txtLastName.Text);
                cmd.Parameters.AddWithValue("@Age", txtAge.Text);
                cmd.Parameters.AddWithValue("@Gender", txtGender.Text);
                cmd.Parameters.AddWithValue("@HAddr", txtHomeAddress.Text);
                cmd.Parameters.AddWithValue("@Phnum", txtPhoneNum.Text);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@Nat", txtNationality.Text);
                cmd.Parameters.AddWithValue("@Nkin", txtNextOfKin.Text);
                cmd.Parameters.AddWithValue("@NKinContact", txtNextOfkinContact.Text);
                
                dbcon.Open();
                cmd.ExecuteNonQuery();
                Response.Write("Submission is successful");
                Response.Redirect("Patient_Review.aspx");
                dbcon.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }
    }
}