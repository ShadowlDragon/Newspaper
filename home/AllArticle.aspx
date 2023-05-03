<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AllArtice.aspx.cs" Inherits="home.AllArticle" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Article Page</title>
    <script defer src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" integrity="sha384-rOA1PnstxnOBLzCLMcre8ybwbTmemjzdNlILg8O7z1lUkLXozs4DHonlDtnE7fpc" crossorigin="anonymous"></script>
    <link href="css/styles.css" rel="stylesheet" />
    <style>
        #formAddArticle {
          margin: 20px;
        }

        #gridViewArticles {
          border-collapse: collapse;
          width: 100%;
        }

        #gridViewArticles th,
        #gridViewArticles td {
          border: 1px solid #ddd;
          padding: 8px;
          text-align: left;
          background: white;
        }

        #gridViewArticles th {
          background-color: #f2f2f2;
          color: #444;
        }

        #btnDelete {
          background-color: #f44336;
          border: none;
          color: white;
          padding: 8px 16px;
          text-align: center;
          text-decoration: none;
          display: inline-block;
          font-size: 14px;
          margin: 4px 2px;
          cursor: pointer;
        }

        #btnDelete:hover {
          background-color: #d6372d;
        }

    </style>
</head>
<body>
    <header>
        <a href="Home.aspx" class="logo">
            <h1>Báo Tháng Mười</h1>
        </a>
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
                            <a href="Admin.aspx">Add Article</a>
                            <a href="Logout.aspx">Logout</a>
                        </div>
                    </div>
                    <% } %>
                </li>
            </ul>
        </nav>
    </header>
    <div class="container">
        <form id="formAddArticle" runat="server">
            <asp:GridView ID="gridViewArticles" runat="server" AutoGenerateColumns="false" OnRowCommand="gridViewArticles_RowCommand" OnRowDataBound="gridViewArticles_RowDataBound" OnRowDeleting="gridViewArticles_RowDeleting" DataKeyNames="PostID">
                <Columns>
                    <asp:BoundField DataField="PostID" HeaderText="Post ID" ReadOnly="true" />
                    <asp:BoundField DataField="Title" HeaderText="Title" ReadOnly="true" />
                    <asp:TemplateField HeaderText="Actions">
                        <ItemTemplate>
                            <asp:Button ID="btnDelete" runat="server" Text="Delete" CausesValidation="false" />
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </form>
    </div>
    <script>
</script>
</body>
</html>

