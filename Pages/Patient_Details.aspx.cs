using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace IEMHR_ASP_App.Pages
{
    public partial class Patient_Details : System.Web.UI.Page
    {
        SqlConnection dbcon = new SqlConnection(ConfigurationManager.ConnectionStrings["IEMHRConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {   
            dbcon.Open();
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            try
            {

                SqlCommand cmd = new SqlCommand("INSERT INTO PatientMaster VALUES ('" + txtFirstName.Text + "', '" + txtMiddleName.Text + "', '" + txtLastName.Text + "', '" + txtAge.Text + "', '" + txtGender.Text + "', '" + txtHomeAddress.Text + "', '" + txtPhoneNum.Text + "', '" + txtEmail.Text + "', '" + txtNationality.Text + "', '" + txtNextOfKin.Text + "', '" + txtNextOfkinContact + "')", dbcon);
                cmd.ExecuteNonQuery();
                dbcon.Close();
                Response.Redirect("Patient_Review.aspx");

            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }
    }
}