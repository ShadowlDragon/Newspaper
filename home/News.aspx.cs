using System;
using System.Configuration;
using System.Data.SqlClient;

namespace home
{
    public partial class News : System.Web.UI.Page
    {
        protected System.Web.UI.HtmlControls.HtmlGenericControl articleContainer;

        protected void Page_Load(object sender, EventArgs e)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM POST WHERE PostType = 1";
                SqlCommand command = new SqlCommand(query, connection);

                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    int postId = reader.GetInt32(0);
                    string title = reader.GetString(1);
                    string content = reader.GetString(2);
                    string postType = reader.GetString(3);
                    long imageSize = reader.GetBytes(4, 0, null, 0, 0); // Get the size of the image data
                    byte[] imageBytes = new byte[imageSize];
                    reader.GetBytes(4, 0, imageBytes, 0, (int)imageSize); // Read the image data into the byte array

                    string base64Image = Convert.ToBase64String(imageBytes);

                    string articleHTML = "<article id=\"" + postId + "\">" +
                                             "<h3>" + title + "</h3>" +
                                             "<img src=\"data:image/png;base64," + base64Image + "\" />" +
                                             "<p>" + content + "</p>" +
                                             "<div class=\"comments\">" +
                                                 "<h4>Comments:</h4>" +
                                                 "<ul class=\"comment-list\" id=\"comments-" + postType + "\"></ul>" +
                                                 "<form class=\"comment-form\" id=\"comment-form-" + postType + "\">" +
                                                     "<input type=\"text\" placeholder=\"Add a comment\" />" +
                                                     "<button type=\"submit\">Submit</button>" +
                                                 "</form>" +
                                             "</div>" +
                                             "<div class=\"likes\">" +
                                                 "<button class=\"like-btn\"><i class=\"fas fa-heart\"></i></button>" +
                                                 "<span class=\"like-count\">0</span>" +
                                             "</div>" +
                                         "</article>";

                    articleContainer.InnerHtml += articleHTML;
                }

                reader.Close();
                connection.Close();
            }

        }
    }
}
