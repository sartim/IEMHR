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
    public partial class Clinic_Management : System.Web.UI.Page
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

                SqlCommand cmd = new SqlCommand("INSERT INTO ClinicMaster VALUES ('" + txtClinicName.Text + "', '" + txtLatitude.Text + "', '" + txtLongitude.Text + "', '" + txtLocation.Text + "', '" + txtCountry.Text + "', '" + txtEmail.Text + "', '" + txtAddress.Text + "', '" + txtURL.Text + "', '" + txtPhoneNum.Text + "')", dbcon);
                cmd.ExecuteNonQuery();
                dbcon.Close();
                Response.Redirect("Clinic_Management.aspx");

            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }
    }
}