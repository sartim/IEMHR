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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            SqlConnection dbCon = new SqlConnection(ConfigurationManager.ConnectionStrings["IEMHRConnectionString"].ConnectionString);
            dbCon.Open();
            string checkuser = "SELECT count(*) FROM Users where UserName = '" + UserNameTextBox.Text + "'";
            SqlCommand cmd = new SqlCommand(checkuser, dbCon);
            int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
            dbCon.Close();
            if (temp == 1)
            {
                dbCon.Open();
                string checkPasswordQuery = "SELECT Password FROM Users WHERE UserName = '" + UserNameTextBox.Text + "'";
                SqlCommand passCmd = new SqlCommand(checkPasswordQuery, dbCon);
                string password = passCmd.ExecuteScalar().ToString().Replace(" ", "");
                if (password == PasswordTextBox.Text)
                {
                    Session["New"] = UserNameTextBox.Text;
                    Response.Write("Password is correct");
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    Response.Write("Password is NOT correct");
                }
            }
            else
            {
                Response.Write("User Name is NOT correct");
            }
        }
    }
}