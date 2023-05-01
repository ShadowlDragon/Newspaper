using System;
using System.Configuration;
using System.Data.SqlClient;

namespace home
{
    public partial class Login : System.Web.UI.Page
    {
        protected System.Web.UI.WebControls.TextBox UserName;
        protected System.Web.UI.WebControls.TextBox PassWord;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UserLogin(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string username = UserName.Text.Trim();
                string password = PassWord.Text.Trim();

                string query = "SELECT * FROM UserInfo WHERE Username=@UserName AND Password=@Password";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@UserName", username);
                command.Parameters.AddWithValue("@Password", password);

                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                if (reader.Read())
                {
                    // Login successful, set the username in the session and redirect to Home.aspx
                    Session["username"] = username;
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    // Login failed, display error message
                    lblError.Text = "Invalid username or password";
                }
            }
        }

    }
}
