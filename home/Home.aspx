<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="home.Home" %>

<!DOCTYPE html>

<html lang="en">
    <head>
        <title>Báo Tháng Mười</title>
        <script defer src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" integrity="sha384-rOA1PnstxnOBLzCLMcre8ybwbTmemjzdNlILg8O7z1lUkLXozs4DHonlDtnE7fpc" crossorigin="anonymous"></script>
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <header>
            <a href="Home.aspx" class="logo"><h1>Báo Tháng Mười</h1></a>
            <nav>
            <ul>
                <li><a href="News.aspx">Lời của sách</a></li>
                <li><a href="Sport.aspx">Văn học và Nghệ thuật</a></li>
                <li><a href="Entertainment.aspx">Bình luận</a></li>
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
                            <a href="Admin.aspx">Go to Admin Page</a>
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
            <h2>Top Stories</h2>
            <div runat="server" id="articleContainer1"></div>
            <div runat="server" id="articleContainer2"></div>
            <div runat="server" id="articleContainer3"></div>
        </main>
        <footer>
            <p>© Báo Tháng Mười</p>
        </footer>
        <script src="js/JavaScript.js"></script>
    </body>
</html>
