using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace RepApp
{
    public partial class Prescription_Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
   
        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            try
            {
                Guid newGUID = Guid.NewGuid();

                SqlConnection dbCon = new SqlConnection(ConfigurationManager.ConnectionStrings["IEMHRConnectionString"].ConnectionString);

                string insertQuery = "INSERT INTO EPrescription(PrescriptionId, PrescriberName, PatientName, PatientId, Diagnosis, Allergies, SIG, Refills, Quantity, IssueTo, date) VALUES (@PresId, @PresName, @PatName,@PatId,@Diagnosis, @Allergies, @Sig, @Refill, @Quantity, @IssueTo, @date)";

                SqlCommand cmd = new SqlCommand(insertQuery, dbCon);
                cmd.Parameters.AddWithValue("@PresId", newGUID.ToString());
                cmd.Parameters.AddWithValue("@PresName", PrescriberNameTextBox.Text);
                cmd.Parameters.AddWithValue("@PatName", PatientNameTextBox.Text);
                cmd.Parameters.AddWithValue("@PatId", PatientIdTextBox.Text);
                cmd.Parameters.AddWithValue("@Diagnosis", DiagnosisTextBox.Text);
                cmd.Parameters.AddWithValue("@Allergies", AllergiesTextBox.Text);
                cmd.Parameters.AddWithValue("@Sig", SigTextBox.Text);
                cmd.Parameters.AddWithValue("@Refill", RefillsTextBox.Text);
                cmd.Parameters.AddWithValue("@Quantity", QuantityTextBox.Text);
                cmd.Parameters.AddWithValue("@IssueTo", IssueToTextBox.Text);
                cmd.Parameters.AddWithValue("@date", DateTextBox.Text);
                dbCon.Open();
                cmd.ExecuteNonQuery();
                Response.Write("Prescription submitted successfully");
                Response.Redirect("Review_Prescription.aspx");
                dbCon.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }
    }
}