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
    public partial class Pharmacy_Details : System.Web.UI.Page
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

                SqlCommand cmd = new SqlCommand("INSERT INTO PharmacyMaster VALUES ('" + txtPharmacyName.Text + "', '" + txtLocLat.Text + "', '" + txtLocLon.Text + "', '" + txtLocation.Text + "', '" + txtCountry.Text + "', '" + txtEmail.Text + "', '" + txtURL.Text + "', '" + txtPhoneNum.Text + "')", dbcon);
                cmd.ExecuteNonQuery();
                dbcon.Close();
                Response.Redirect("Pharmacy_Review.aspx");

            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }
    }
}