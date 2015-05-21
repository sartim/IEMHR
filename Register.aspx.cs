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
    public partial class Register1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection dbCon = new SqlConnection(ConfigurationManager.ConnectionStrings["IEMHRConnectionString"].ConnectionString);
                dbCon.Open();
                string checkuser = "SELECT count(*) FROM Users where UserName = '" + UserNameTextBox.Text + "'";
                SqlCommand cmd = new SqlCommand(checkuser, dbCon);
                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (temp == 1)
                {
                    Response.Write("User already exists");
                }

                dbCon.Close();
            }
        }

        protected void RegisterButton_Click(object sender, EventArgs e)
        {
            try
            {
                Guid newGUID = Guid.NewGuid();

                SqlConnection dbCon = new SqlConnection(ConfigurationManager.ConnectionStrings["IEMHRConnectionString"].ConnectionString);

                string insertQuery = "INSERT INTO Users (Id, UserName, Email, Password) VALUES (@Id, @Uname, @Email, @Password, @Sname)";
                SqlCommand cmd = new SqlCommand(insertQuery, dbCon);
                cmd.Parameters.AddWithValue("@Id", newGUID.ToString());
                cmd.Parameters.AddWithValue("@Uname", UserNameTextBox.Text);
                cmd.Parameters.AddWithValue("@Email", EmailTextBox.Text);
                cmd.Parameters.AddWithValue("@Password", PassTextBox.Text);

                dbCon.Open();
                cmd.ExecuteNonQuery();
                Response.Write("Registration is successful");
                Response.Redirect("Login.aspx");
                dbCon.Close();
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());
            }
        }
        }
    }

