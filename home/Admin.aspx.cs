using System;
using System.Configuration;
using System.Data.SqlClient;

namespace home
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddNewArticle(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string title = txtTitle.Text.Trim();
                string content = txtContent.Text.Trim();
                string postType = ddlPostType.SelectedValue;

                string query = "INSERT INTO POST (Title, Content, PostType) VALUES (@Title, @Content, @PostType)";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Title", title);
                command.Parameters.AddWithValue("@Content", content);
                command.Parameters.AddWithValue("@PostType", postType);

                connection.Open();
                int rowsAffected = command.ExecuteNonQuery();

                if (rowsAffected == 1)
                {
                    // Article creation successful
                    Session["Notification"] = "Article creation successful.";
                    Response.Redirect("Admin.aspx");
                }
                else
                {
                    // Article creation failed
                    lblError.Text = "Article creation failed. Please try again.";
                }
            }
        }

    }
}
