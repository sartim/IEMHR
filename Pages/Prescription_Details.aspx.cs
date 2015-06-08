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
                SqlConnection dbcon = new SqlConnection(ConfigurationManager.ConnectionStrings["IEMHRConnectionString"].ConnectionString);
                string insertQuery = "INSERT INTO PrescriptionMaster (PrescriptionId, PrescriberName, PhysicianId, PatientName, PatientId, Diagnosis, DrugName, Dose, DoseUnits, Frequency, NumOfDays, SubmitDate, ProcessedDate, Allergies, Comments, Refills, IssueTo, PharmacyId) VALUES (@PresId, @PresName, @PracId, @PatName, @PatId, @Diagnosis, @Dname, @Dose, @Dunits, @Freq, @NDays, @SDate, @PDate, @Allergies, @Comments, @Refills, @IssueTo, @PhamId)";
                SqlCommand cmd = new SqlCommand(insertQuery, dbcon);

                string presName = txtPrescriberName.Text;
                string physId = txtPhysicianId.Text;
                string patName = txtPatientName.Text;
                string patId = txtPatientName.Text;
                string diag = txtDiagnosis.Text;
                string drugName = txtDrugName.Text;
                string dose = txtDose.Text;
                string doseUnits = ddlDoseUnits.Text;
                string freq = txtFrequency.Text;
                string nofdays = txtNumOfDays.Text;
                string subDate = txtSubmitDate.Text;
                string proDate = txtProcessedDate.Text;
                string allergies = txtAllergies.Text;
                string comments = txtComments.Text;
                string refills = txtRefills.Text;
                string issueto = txtIssueTo.Text;
                string pharId = txtPharmacyId.Text;

                cmd.Parameters.Clear();
                cmd.Parameters.AddWithValue("@PresId", newGUID.ToString());
                cmd.Parameters.AddWithValue("@PresName", presName);
                cmd.Parameters.AddWithValue("@PracId", physId);
                cmd.Parameters.AddWithValue("@PatName", patName);
                cmd.Parameters.AddWithValue("@PatId", patId);
                cmd.Parameters.AddWithValue("@Diagnosis", diag);
                cmd.Parameters.AddWithValue("@Dname", drugName);
                cmd.Parameters.AddWithValue("@Dose", dose);
                cmd.Parameters.AddWithValue("@Dunits", doseUnits);
                cmd.Parameters.AddWithValue("@Freq", freq);
                cmd.Parameters.AddWithValue("@NDays", nofdays);
                cmd.Parameters.AddWithValue("@SDate", "'" + subDate + "'");
                cmd.Parameters.AddWithValue("@PDate", "'" + proDate + "'");
                cmd.Parameters.AddWithValue("@Allergies", allergies);
                cmd.Parameters.AddWithValue("@Comments", comments);
                cmd.Parameters.AddWithValue("@Refills", refills);
                cmd.Parameters.AddWithValue("@IssueTo", issueto);
                cmd.Parameters.AddWithValue("@PhamId", pharId);



                dbcon.Open();
                cmd.ExecuteNonQuery();
                Response.Write("Submission is successful");
                Response.Redirect("Prescription_Review.aspx");
                dbcon.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }
    }
}