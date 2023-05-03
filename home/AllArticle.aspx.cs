using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace home
{
    public partial class AllArticle : System.Web.UI.Page
    {
        public class Article
        {
            public int PostID { get; set; }
            public string Title { get; set; }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
            }
        }

        private void BindGrid()
        {
            List<Article> articles = GetArticle();
            gridViewArticles.DataSource = articles;
            gridViewArticles.DataBind();
        }

        public List<Article> GetArticle()
        {
            string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

            List<Article> articles = new List<Article>();

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT PostID, Title FROM POST ORDER BY PostID DESC";
                SqlCommand command = new SqlCommand(query, connection);

                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read())
                {
                    articles.Add(new Article()
                    {
                        PostID = reader.GetInt32(0),
                        Title = reader.GetString(1)
                    });
                }
            }

            return articles;
        }

        protected void gridViewArticles_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "DeleteArticle")
            {
                int rowIndex = int.Parse(e.CommandArgument.ToString());
                int postId = int.Parse(gridViewArticles.DataKeys[rowIndex].Value.ToString());

                string connectionString = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;

                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    string query = "DELETE FROM POST WHERE PostID=@PostID";
                    SqlCommand command = new SqlCommand(query, connection);
                    command.Parameters.AddWithValue("@PostID", postId);

                    connection.Open();
                    command.ExecuteNonQuery();
                }

                BindGrid();
            }
        }

        protected void gridViewArticles_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                int rowIndex = e.Row.RowIndex;
                Button btnDelete = (Button)e.Row.FindControl("btnDelete");

                if (btnDelete != null)
                {
                    btnDelete.CommandName = "DeleteArticle";
                    btnDelete.CommandArgument = rowIndex.ToString();
                }
            }
        }

        protected void gridViewArticles_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            // Do nothing - this is just here to prevent a runtime error since we're using CommandName instead of OnClick
        }
    }
}
