<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="home.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <title>Newspaper Website</title>
        <script defer src="https://use.fontawesome.com/releases/v5.15.4/js/all.js" integrity="sha384-rOA1PnstxnOBLzCLMcre8ybwbTmemjzdNlILg8O7z1lUkLXozs4DHonlDtnE7fpc" crossorigin="anonymous"></script>
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <header>
            <a href="Home.aspx" class="logo"><h1>Newspaper Website</h1></a>
            <nav>
                <ul>
                    <li><a href="News.aspx">News</a></li>
                    <li><a href="Sport.aspx">Sports</a></li>
                    <li><a href="Entertainment.aspx">Entertainment</a></li>
                    <li><a href="Login.aspx">Sign In</a></li>
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
        <script src="js/JavaScript.js"></script>
    </body>
</html>
