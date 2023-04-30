using System;
using System.Configuration;
using System.Data.SqlClient;

namespace home
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UserSignup(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string username = txtUsername.Text.Trim();
                string email = txtEmail.Text.Trim();
                string password = txtPassword.Text.Trim();
                string confirmPassword = txtConfirmPassword.Text.Trim();

                if (password != confirmPassword)
                {
                    lblError.Text = "Passwords do not match.";
                    return;
                }

                string query = "INSERT INTO UserInfo (Username, Email, Password) VALUES (@Username, @Email, @Password)";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Username", username);
                command.Parameters.AddWithValue("@Email", email);
                command.Parameters.AddWithValue("@Password", password);

                connection.Open();
                int rowsAffected = command.ExecuteNonQuery();

                if (rowsAffected == 1)
                {
                    // Sign-up successful
                    Session["Notification"] = "Sign-up successful. Please log in.";
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    // Sign-up failed
                    lblError.Text = "Sign-up failed. Please try again.";
                }
            }
        }
    }
}
