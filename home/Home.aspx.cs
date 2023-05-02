using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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

                    string articleHTML = "<article id=\"" + postId + "\">" +
                                             "<h3>" + title + "</h3>" +
                                             "<p>" + content + "</p>" +
                                         "</article>";

                    articleContainer1.InnerHtml += articleHTML;
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
                string query = "SELECT * FROM POST WHERE PostType = 2";
                SqlCommand command = new SqlCommand(query, connection);

                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    int postId = reader.GetInt32(0);
                    string title = reader.GetString(1);
                    string content = reader.GetString(2);
                    string postType = reader.GetString(3);

                    string articleHTML = "<article id=\"" + postId + "\">" +
                                             "<h3>" + title + "</h3>" +
                                             "<p>" + content + "</p>" +
                                         "</article>";

                    articleContainer2.InnerHtml += articleHTML;
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
                string query = "SELECT * FROM POST WHERE PostType = 3";
                SqlCommand command = new SqlCommand(query, connection);

                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    int postId = reader.GetInt32(0);
                    string title = reader.GetString(1);
                    string content = reader.GetString(2);
                    string postType = reader.GetString(3);

                    string articleHTML = "<article id=\"" + postId + "\">" +
                                             "<h3>" + title + "</h3>" +
                                             "<p>" + content + "</p>" +
                                         "</article>";

                    articleContainer3.InnerHtml += articleHTML;
                }

                reader.Close();
                connection.Close();
            }
        }
    }
}