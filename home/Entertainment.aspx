<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Entertainment.aspx.cs" Inherits="home.Entertainment" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script defer
        src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
        integrity="sha384-rOA1PnstxnOBLzCLMcre8ybwbTmemjzdNlILg8O7z1lUkLXozs4DHonlDtnE7fpc"
        crossorigin="anonymous"></script>
    <link href="css/styles.css" rel="stylesheet" />
    <title>Bình luận</title>
</head>
<body>
    <header>
        <a href="Home.aspx" class="logo">
            <h1>Newspaper Website</h1>
        </a>
        <nav>
            <ul>
                <li><a href="News.aspx">Lời của sách</a></li>
                <li><a href="Sport.aspx">Văn học và Nghệ thuật</a></li>
                <li><a href="Entertainment.aspx">Bình luận</a></li>
                <li>
                    <div class="dropdown" runat="server" visible='<%# Session["username"] != null %>'>
                        <a class="dropbtn">Hi <%= Session["username"] %></a>
                        <div class="dropdown-content">
                            <% if (Session["username"].ToString() == "admin")
                                { %>
                            <a href="Admin.aspx">Go to Admin Page</a>
                            <% } %>
                            <a href="Logout.aspx">Logout</a>
                        </div>
                    </div>
                    <a href="Login.aspx" runat="server" visible='<%# Session["username"] == null %>'>Login</a>
                </li>
            </ul>
        </nav>
    </header>
    <main>
        <section>
            <h2>Bình luận</h2>
            <article id="article-1">
                <h3>Article Title 1</h3>
                <p>Article Content 1</p>
                <div class="comments">
                    <h4>Comments:</h4>
                    <ul class="comment-list" id="comments-1"></ul>
                    <form class="comment-form" id="comment-form-1">
                        <input type="text" placeholder="Add a comment" />
                        <button type="submit">Submit</button>
                    </form>
                </div>
                <div class="likes">
                    <button class="like-btn"><i class="fas fa-heart"></i></button>
                    <span class="like-count">0</span>
                </div>
            </article>
        </section>
    </main>
    <footer>
        <p>© Báo Tháng Mười 2023</p>
    </footer>
    <script src="js/JavaScript.js"></script>
</body>
</html>
