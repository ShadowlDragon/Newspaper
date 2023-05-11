<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="home.Admin" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Page</title>
    <script defer src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" integrity="sha384-rOA1PnstxnOBLzCLMcre8ybwbTmemjzdNlILg8O7z1lUkLXozs4DHonlDtnE7fpc" crossorigin="anonymous"></script>
    <link href="css/styles.css" rel="stylesheet" />
    <style>
        .container {
          max-width: 500px;
          margin: auto;
        }

        form {
          background-color: #f7f7f7;
          border-radius: 10px;
          padding: 20px;
          box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.2);
        }

        form label {
          display: block;
          margin-bottom: 5px;
        }

        form input[type="text"],
        form textarea,
        form select {
          border-radius: 5px;
          border: 1px solid #ccc;
          padding: 5px;
          margin-bottom: 10px;
          width: 100%;
          font-size: 1em;
        }

        form textarea {
          height: 100px; /* set an initial height */
          resize: vertical; /* allow vertical resizing */
        }

        form textarea:focus {
          height: auto; /* expand height when focused */
        }

        form select {
          -webkit-appearance: none;
          -moz-appearance: none;
          appearance: none;
          background-image: url("data:image/svg+xml,%3Csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 12 8'%3E%3Cpath d='M1.5 1L6 5.5 10.5 1' stroke='%23ccc' stroke-width='1.5' fill='none' fill-rule='evenodd'/%3E%3C/svg%3E");
          background-repeat: no-repeat;
          background-position: right 5px center;
          padding-right: 30px;
        }

        form button {
          background-color: #4CAF50;
          color: white;
          border: none;
          border-radius: 5px;
          padding: 10px 20px;
          cursor: pointer;
          font-size: 1em;
        }

        form button:hover {
          background-color: #3e8e41;
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
			    <h1 style="color: black">Add New Article</h1>
			    <asp:Label ID="lblNotification" runat="server" Text="" ForeColor="Green"></asp:Label>
			    <asp:Label ID="lblError" runat="server" Text="" ForeColor="Red"></asp:Label>
			    <asp:TextBox ID="txtTitle" runat="server" placeholder="Title" required></asp:TextBox>
			    <asp:TextBox ID="txtContent" runat="server" placeholder="Content" TextMode="MultiLine" Rows="20" required></asp:TextBox>
                <asp:DropDownList ID="ddlPostType" runat="server" CssClass="form-control" required>
                    <asp:ListItem Text="Lời của sách" Value="1"></asp:ListItem>
                    <asp:ListItem Text="Văn học và Nghệ thuật" Value="2"></asp:ListItem>
                    <asp:ListItem Text="Bình luận" Value="3"></asp:ListItem>
                </asp:DropDownList>
                <asp:FileUpload ID="imgUpload" runat="server" />
			    <asp:Button ID="btnAddArticle" runat="server" Text="Add Article" OnClick="AddNewArticle" />
		    </form>
	    </div>
    <footer>
        <p>© Báo Tháng Mười</p>
    </footer>
    <script>
        
    </script>
</body>
</html>

