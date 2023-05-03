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
            <h1>Báo Tháng Mười</h1>
        </a>
        <nav>
            <ul>
                <li><a href="News.aspx">Lời của sách</a></li>
                <li><a href="Entertainment.aspx">Văn học và Nghệ thuật</a></li>
                <li><a href="Sport.aspx">Bình luận</a></li>
                <li>
                    <% if (Session["username"] == null)
                        { %>
                    <a href="Login.aspx">Login</a>
                    <% }
                    else
                    { %>
                    <div class="dropdown">
                        <a class="dropbtn">Hi <%= Session["username"] %></a>
                        <div class="dropdown-content">
                            <% if (Session["username"].ToString() == "admin")
                                { %>
                            <a href="Admin.aspx">Add Article</a>
                            <a href="AllArticle.aspx">Delete Article</a>
                            <% } %>
                            <a href="Logout.aspx">Logout</a>
                        </div>
                    </div>
                    <% } %>
                </li>
            </ul>
        </nav>
    </header>
    <main>
        <h2>Văn học và Nghệ thuật</h2>
        <div runat="server" id="articleContainer"></div>
    </main>
    <footer>
        <p>© Báo Tháng Mười</p>
    </footer>
    <script src="js/JavaScript.js"></script>
</body>
</html>
