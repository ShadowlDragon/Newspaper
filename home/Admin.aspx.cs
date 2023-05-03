using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace home
{
    public partial class Admin : System.Web.UI.Page
    {
        public class Article
        {
            public int PostID { get; set; }
            public string Title { get; set; }
        }

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

                // Get the filename of the uploaded image (if any)
                string filename = Path.GetFileName(imgUpload.FileName);
                string path = Server.MapPath("~/images/") + filename;
                byte[] bytes = null;
                if (!string.IsNullOrEmpty(filename))
                {
                    imgUpload.SaveAs(path);
                    bytes = File.ReadAllBytes(path);
                }

                string query = "INSERT INTO POST (Title, Content, PostType, Image) VALUES (@Title, @Content, @PostType, @Image)";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.AddWithValue("@Title", title);
                command.Parameters.AddWithValue("@Content", content);
                command.Parameters.AddWithValue("@PostType", postType);
                if (bytes != null)
                {
                    command.Parameters.AddWithValue("@Image", bytes);
                }
                else
                {
                    command.Parameters.Add("@Image", SqlDbType.VarBinary, -1).Value = DBNull.Value;
                }

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
