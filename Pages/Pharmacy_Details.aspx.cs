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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection dbCon = new SqlConnection(ConfigurationManager.ConnectionStrings["IEMHRConnectionString"].ConnectionString);
                dbCon.Open();
                string checkuser = "SELECT count(*) FROM PharmacyMaster where PharmacyId = '" + txtPharmacyId.Text + "'";
                SqlCommand cmd = new SqlCommand(checkuser, dbCon);
                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Response.Write("Pharmacy Id already exists");
                }

                dbCon.Close();
            }
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection dbcon = new SqlConnection(ConfigurationManager.ConnectionStrings["IEMHRConnectionString"].ConnectionString);
                string insertQuery = "INSERT INTO PharmacyMaster (PharmacyId, PharmacyName, LocLat, LocLong, Location, Country, Email, URL, PhoneNum) VALUES (@PId, @Pname, @LocLat, @LocLong, @Loc, @Country, @Email, @URL, @Phnum)";
                SqlCommand cmd = new SqlCommand(insertQuery, dbcon);
                cmd.Parameters.AddWithValue("@PId", txtPharmacyId.Text);
                cmd.Parameters.AddWithValue("@Pname", txtPharmacyName.Text);
                cmd.Parameters.AddWithValue("@LocLat", txtLocLat.Text);
                cmd.Parameters.AddWithValue("@LocLong", txtLocLon.Text);
                cmd.Parameters.AddWithValue("@Loc", txtLocation.Text);
                cmd.Parameters.AddWithValue("@Country", txtCountry.Text);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
                cmd.Parameters.AddWithValue("@URL", txtURL.Text);
                cmd.Parameters.AddWithValue("@Phnum", txtPhoneNum.Text);


                dbcon.Open();
                cmd.ExecuteNonQuery();
                Response.Write("Submission is successful");
                Response.Redirect("Pharmacy_Review.aspx");
                dbcon.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }
    }
}