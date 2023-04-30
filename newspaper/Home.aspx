<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="newspaper.Home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<!DOCTYPE html>
<html>
    <style>
        /* Global styles */

        body {
          font-family: Arial, sans-serif;
          margin: 0;
          padding: 0;
          display: flex;
          flex-direction: column;
          min-height: 100vh;
        }

        h1,
        h2,
        h3,
        h4,
        h5,
        h6 {
          margin: 0;
        }

        h2 {
          text-align: center;
        }

        /* Header styles */

        header {
          background-color: #333;
          color: #fff;
          display: flex;
          justify-content: space-between;
          align-items: center;
          padding: 20px;
        }

        header nav ul {
          list-style: none;
          margin: 0;
          padding: 0;
          display: flex;
        }

        header nav ul li {
          margin-right: 20px;
        }

        header nav ul li:last-child {
          margin-right: 0;
        }

        header nav ul li a {
          color: #fff;
          text-decoration: none;
        }

        .logo {
          text-decoration: none;
        }

        h1 {
          font-size: 36px;
          font-weight: bold;
          color: #fff;
        }

        /* Main styles */

        main {
          max-width: 1000px;
          margin: 0 auto;
          padding: 20px;
        }

        section {
          margin-bottom: 40px;
        }

        section h2 {
          font-size: 24px;
          margin-bottom: 20px;
        }

        article {
          border: 1px solid #ddd;
          padding: 20px;
          margin-bottom: 20px;
        }

        article h3 {
          font-size: 20px;
          margin-bottom: 10px;
        }

        article p {
          font-size: 16px;
          line-height: 1.5;
          margin-bottom: 20px;
        }

        .comments {
          margin-bottom: 20px;
          padding-right: 20px;
          background-color: #f5f5f5;
          border-radius: 10px;
        }

        .comments h4 {
          font-size: 18px;
          margin-bottom: 10px;
        }

        .comment-list {
          list-style: none;
          margin: 0;
          padding: 0;
          width: 1;
        }

        .comment-list li {
          font-size: 16px;
          line-height: 1.5;
          margin-bottom: 20px;
          padding: 11px;
          background-color: #fff;
          border-radius: 5px;
          box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.2);
        }

        .comment-list li:last-child {
          margin-bottom: 0;
        }

        .comment-list li .author {
          font-weight: bold;
          margin-right: 10px;
        }

        .comment-list li .timestamp {
          color: #999;
          font-size: 14px;
        }

        .comment-form {
          margin-top: 20px;
        }

        .comment-form label {
          display: block;
          font-size: 16px;
          margin-bottom: 10px;
        }

        .comment-form input[type="text"],
        .comment-form textarea {
          display: block;
          width: 100%;
          padding: 10px;
          font-size: 16px;
          line-height: 1.5;
          border: 1px solid #ccc;
          border-radius: 5px;
          margin-bottom: 10px;
        }

        .comment-form button[type="submit"] {
          background-color: #333;
          color: #fff;
          border: none;
          padding: 10px 20px;
          font-size: 16px;
          border-radius: 5px;
          cursor: pointer;
        }

        .likes {
          display: flex;
          align-items: center;
        }

        .likes h4 {
          font-size: 18px;
          margin-right: 10px;
        }

        .like-btn {
          background-color: transparent;
          color: #262626;
          border: none;
          padding: 0;
          font-size: 24px;
          cursor: pointer;
          transition: color 0.3s ease, text-shadow 0.3s ease;
        }

        .like-btn:focus {
          outline: none;
        }

        .like-btn.liked {
          color: #ed4956;
          text-shadow: 0 0 5px #ed4956, 0 0 10px #ed4956, 0 0 20px #ed4956;
        }

        .like-count {
          font-size: 18px;
          font-weight: bold;
          margin-left: 10px;
        }

        .like-btn i {
          font-size: 36px;
        }

        article {
          width: 500px;
          border: 1px solid #ddd;
          padding: 20px;
          margin-bottom: 20px;
          background-color: #fff;
          box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
          transition: box-shadow 0.2s ease-in-out;
        }

        article:hover {
          box-shadow: 0 8px 12px rgba(0, 0, 0, 0.2);
        }

        article h3 {
          font-size: 24px;
          margin-bottom: 10px;
        }

        article p {
          font-size: 18px;
          line-height: 1.6;
          margin-bottom: 20px;
        }

        .article-img {
          margin-bottom: 20px;
        }

        .article-img img {
          max-width: 100%;
        }

        #add-article-modal {
          display: none;
          position: fixed;
          z-index: 1;
          left: 0;
          top: 0;
          width: 100%;
          height: 100%;
          overflow: auto;
          background-color: rgba(0, 0, 0, 0.4);
        }

        .modal-content {
          background-color: #fefefe;
          margin: 10% auto;
          padding: 20px;
          border: 1px solid #888;
          width: 80%;
        }

        .close {
          color: #aaa;
          float: right;
          font-size: 28px;
          font-weight: bold;
        }

        .close:hover,
        .close:focus {
          color: black;
          text-decoration: none;
          cursor: pointer;
        }

        /* Footer styles */

        footer {
          background-color: #333;
          color: #fff;
          text-align: center;
          padding: 20px;
          margin-top: auto;
        }

    </style>
    <head>
        <title>Newspaper Website</title>
        <script defer src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" integrity="sha384-rOA1PnstxnOBLzCLMcre8ybwbTmemjzdNlILg8O7z1lUkLXozs4DHonlDtnE7fpc" crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="styles.css">
    </head>
    <body>
        <header>
            <a href="index.html" class="logo"><h1>Newspaper Website</h1></a>
            <nav>
                <ul>
                    <li><a href="news.html">News</a></li>
                    <li><a href="sports.html">Sports</a></li>
                    <li><a href="entertainment.html">Entertainment</a></li>
                </ul>
            </nav>
        </header>
        <main>
            <section class="top-stories">
                <h2>Top Stories</h2>
                <div class="story">
                    <img src="https://via.placeholder.com/300x200.png?text=Story+Image" alt="Story Image">
                    <div class="story-text">
                        <h3><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit</a></h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id nulla vitae nunc commodo tristique. Aliquam erat volutpat.</p>
                    </div>
                </div>
                <div class="story">
                    <img src="https://via.placeholder.com/300x200.png?text=Story+Image" alt="Story Image">
                    <div class="story-text">
                        <h3><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit</a></h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id nulla vitae nunc commodo tristique. Aliquam erat volutpat.</p>
                    </div>
                </div>
                <div class="story">
                    <img src="https://via.placeholder.com/300x200.png?text=Story+Image" alt="Story Image">
                    <div class="story-text">
                        <h3><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit</a></h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed id nulla vitae nunc commodo tristique. Aliquam erat volutpat.</p>
                    </div>
                </div>
            </section>
        </main>
        <footer>
            <p>© Newspaper Website 2023</p>
        </footer>
        <script src="script.js"></script>
    </body>
</html>
</asp:Content>
