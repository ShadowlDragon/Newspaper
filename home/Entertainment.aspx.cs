using System;
using System.Configuration;
using System.Data.SqlClient;

namespace home
{
    public partial class Entertainment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
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
                    int postId = (int)reader["PostId"];
                    string title = reader["Title"].ToString();
                    string content = reader["Content"].ToString();

                    // Create new article element
                    var article = new System.Web.UI.HtmlControls.HtmlGenericControl("article");
                    article.ID = "article-" + postId;
                    this.Controls.Add(article);

                    // Create h3 element and set title
                    var h3 = new System.Web.UI.HtmlControls.HtmlGenericControl("h3");
                    h3.InnerText = title;
                    article.Controls.Add(h3);

                    // Create p element and set content
                    var p = new System.Web.UI.HtmlControls.HtmlGenericControl("p");
                    p.InnerText = content;
                    article.Controls.Add(p);

                    // Create comments and likes elements
                    var comments = new System.Web.UI.HtmlControls.HtmlGenericControl("div");
                    comments.Attributes.Add("class", "comments");
                    article.Controls.Add(comments);

                    var h4 = new System.Web.UI.HtmlControls.HtmlGenericControl("h4");
                    h4.InnerText = "Comments:";
                    comments.Controls.Add(h4);

                    var ul = new System.Web.UI.HtmlControls.HtmlGenericControl("ul");
                    ul.Attributes.Add("class", "comment-list");
                    ul.ID = "comments-" + postId;
                    comments.Controls.Add(ul);

                    var form = new System.Web.UI.HtmlControls.HtmlGenericControl("form");
                    form.Attributes.Add("class", "comment-form");
                    form.ID = "comment-form-" + postId;
                    comments.Controls.Add(form);

                    var input = new System.Web.UI.HtmlControls.HtmlGenericControl("input");
                    input.Attributes.Add("type", "text");
                    input.Attributes.Add("placeholder", "Add a comment");
                    form.Controls.Add(input);

                    var button = new System.Web.UI.HtmlControls.HtmlGenericControl("button");
                    button.Attributes.Add("type", "submit");
                    button.InnerText = "Submit";
                    form.Controls.Add(button);

                    var likes = new System.Web.UI.HtmlControls.HtmlGenericControl("div");
                    likes.Attributes.Add("class", "likes");
                    article.Controls.Add(likes);

                    var likeButton = new System.Web.UI.HtmlControls.HtmlGenericControl("button");
                    likeButton.Attributes.Add("class", "like-btn");
                    likes.Controls.Add(likeButton);

                    var heartIcon = new System.Web.UI.HtmlControls.HtmlGenericControl("i");
                    heartIcon.Attributes.Add("class", "fas fa-heart");
                    likeButton.Controls.Add(heartIcon);

                    var likeCount = new System.Web.UI.HtmlControls.HtmlGenericControl("span");
                    likeCount.Attributes.Add("class", "like-count");
                    likeCount.InnerText = "0";
                    likes.Controls.Add(likeCount);

                    // Add your code below the article with ID "article-1"
                    if (article.ID == "article-1")
                    {
                        var div = new System.Web.UI.HtmlControls.HtmlGenericControl("div");
                        div.InnerText = "Your code goes here";
                        article.Controls.Add(div);
                    }
                }
            }
        }
    }
}
