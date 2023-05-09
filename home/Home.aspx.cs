using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;

namespace home
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            GetPost1();
            GetPost2();
            GetPost3();
        }

        public void GetPost1()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT TOP 1 * FROM POST WHERE PostType = 1 ORDER BY PostID DESC";
                SqlCommand command = new SqlCommand(query, connection);

                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    int postId = reader.GetInt32(0);
                    string title = reader.GetString(1);
                    string content = reader.GetString(2);
                    // Get the first 50 words of the content
                    string summary = string.Join(" ", content.Split().Take(50));

                    string articleHTML = "<article id=\"" + postId + "\">" +
                                             "<h3>" + title + "</h3>" +
                                             "<p>" + summary + "</p>" +
                                             "<a href=\"News.aspx?id=" + postId + "\">See More</a>" +
                                         "</article>";

                    articleContainer1.InnerHtml += articleHTML.Replace("\r\n", "<br />").Replace("\n", "<br />");
                }

                reader.Close();
                connection.Close();
            }
        }
        public void GetPost2()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT TOP 1 * FROM POST WHERE PostType = 2 ORDER BY PostID DESC";
                SqlCommand command = new SqlCommand(query, connection);

                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    int postId = reader.GetInt32(0);
                    string title = reader.GetString(1);
                    string content = reader.GetString(2);
                    // Get the first 50 words of the content
                    string summary = string.Join(" ", content.Split().Take(50));


                    string articleHTML = "<article id=\"" + postId + "\">" +
                                             "<h3>" + title + "</h3>" +
                                             "<p>" + summary + "</p>" +
                                             "<a href=\"Entertainment.aspx?id=" + postId + "\">See More</a>" +
                                         "</article>";

                    articleContainer2.InnerHtml += articleHTML.Replace("\r\n", "<br />").Replace("\n", "<br />");
                }

                reader.Close();
                connection.Close();
            }
        }
        public void GetPost3()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT TOP 1 * FROM POST WHERE PostType = 3 ORDER BY PostID DESC";
                SqlCommand command = new SqlCommand(query, connection);

                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    int postId = reader.GetInt32(0);
                    string title = reader.GetString(1);
                    string content = reader.GetString(2);
                    // Get the first 50 words of the content
                    string summary = string.Join(" ", content.Split().Take(50));

                    string articleHTML = "<article id=\"" + postId + "\">" +
                                             "<h3>" + title + "</h3>" +
                                             "<p>" + summary + "</p>" +
                                             "<a href=\"Sport.aspx?id=" + postId + "\">See More</a>" +
                                         "</article>";

                    articleContainer3.InnerHtml += articleHTML.Replace("\r\n", "<br />").Replace("\n", "<br />");
                }

                reader.Close();
                connection.Close();
            }
        }
    }
}