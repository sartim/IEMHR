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
    public partial class Physician_Details : System.Web.UI.Page
    {
        SqlConnection dbCon = new SqlConnection(ConfigurationManager.ConnectionStrings["IEMHRConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            dbCon.Open();
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            try
            {

                SqlCommand cmd = new SqlCommand("INSERT INTO PhysicianMaster VALUES ('" + txtFirstName.Text + "', '" + txtMiddleName.Text + "', '" + txtLastName.Text + "', '" + txtEmail.Text + "', '" + txtLastName.Text + "', '" + txtEmail.Text + "', '" + txtMpdbRegNum.Text + "', '" + txtDesignation.Text + "', '" + txtCompany.Text + "')", dbCon);
                cmd.ExecuteNonQuery();
                dbCon.Close();
                Response.Redirect("Physician_Review.aspx");

            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }
    }
}