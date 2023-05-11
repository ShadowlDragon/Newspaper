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
        <article id="article-0">
            <h3>Nhật ký người điên của Gogol- tiếng khóc đằng sau sự châm biếm</h3>
            <img src="images/89266863_129099195318168_4178961947321958400_n.jpg" />
            <p>
                🌻[02050320][VĂN HỌC VÀ NGHỆ THUẬT] NHẬT KÝ NGƯỜI ĐIÊN CỦA GOGOL- TIẾNG KHÓC ĐẰNG SAU SỰ CHÂM BIẾM🌻
                <br />
                📜Xin chào các bạn đọc giả, vừa qua các bạn đã cùng tạp chí Tháng Mười điểm qua vài nét về tiểu sử của nhà văn vĩ đại nước Nga N.V Gogol. Để đem đến cho bạn đọc nhiều góc nhìn hơn từ nhà văn này, Tháng Mười xin giới thiệu với các bạn một trong những tác phẩm nổi tiếng của ông, đó chính là Nhật ký người điên, tác phẩm được viết năm 1834 và xuất bản lần đầu tiên trong tập truyện Ả Rập năm 1835 dưới tên “Zapiski sumasshedshego”.
                <br />
                📜Nhật ký người điên là một trong những truyện ngắn vĩ đại của Gogol, nó thay đổi hoàn toàn kết cấu từ hiện thực đến thế giới siêu thực, hoang tưởng. Câu chuyện xảy ra trong thời kỳ nước Nga ở chế độ nông nô. Bằng giọng văn châm biếm, Gogol mượn lời “người điên” để vạch trần bộ mặt xấu xa của tầng lớp giai cấp quan liêu.
                <br />
                📜 Từ một người làm việc giấy tờ như tên sai vặt trong văn phòng, đến đem lòng yêu cô tiểu thư nhà quan giám đốc, tình yêu ngày càng dâng đầy mà khoảng cách giai cấp là làn ranh rõ rệt. Không đạt được tình yêu Poprishchin dần trở nên hóa rồ, làm những việc kỳ quặc, anh ta say mê đọc lá thư của hai chú chó Metji và Philip, tất nhiên là không có một lá thư nào ở đây cả. Hoặc tưởng mình là vị vua Ferdinand VIII của nước Tây Ban Nha đến mức bị tống vào nhà giam dành cho những người tâm thần. Dường như khoảnh khắc tình yêu ngắn hạn dành cho cô tiểu thư Xôphia đã khiến Poprishchin phát điên, đây chính là điểm mấu chốt để đạt đến nút thắt của thiên truyện.
                <br />
                📜Ở một khía cạnh khác có thể lý giải Poprishchin phát điên vì chính anh ta không chấp nhận được số phận, giữa hoàn cảnh cấp bậc thấp, khốn khó tài chính thay vì cố gắng để trở nên giàu có và có địa vị thì Poprishchin lại đưa nó vào tưởng tượng, hoang tưởng đến mức đánh mất chính mình. Gogol đã xây dựng một Poprishchin hoang tưởng, không có nghị lực còn thiếu thực tế đến mức nực cười. N.V.Gogol như một nhà văn đi trước thời đại bởi một phần lớn con người trong xã hội hiện đại chính là hiện thân của Poprishchin, những con người dùng hoang tưởng để thắng thế thay vì cố gắng nỗ lực để phát triển bản thân. Cũng như nhà văn Trung Quốc Lỗ Tấn đã dùng “phép thắng lợi tinh thần” trong tác phẩm AQ Chính Truyện, và chính Lỗ Tấn cũng là người say mê những tác phẩm của Gogol, tập truyện ngắn đầu tay của Lỗ Tấn “Nhật ký người điên” là một ví dụ.
                <br />
                📜Chất văn Gogol dung dị, châm biếm, hài hước nhưng cô đọng chạm vào trái tim người đọc bằng cách khắc họa tâm trí ảo tưởng dần dần và bước vào sự điên rồ của tinh thần.
                <br />
                Cũng chính qua đó, Gogol mượn “Nhật ký người điên” để ẩn hiện sự tàn bạo của con người với con người bằng cách cô lập những con người bị chấn thương về mặt tinh thần. Đặt vào bối cảnh xã hội Nga lúc đó lại thấy nhân vật người điên Poprishchin đáng thương hơn đáng ghét bởi chính anh ta là người bị xã hội xem thường và ghét bỏ. Từ Quan giám đốc, nàng Xôphia, đến mụ Mavra,… chính anh ta bị xã hội từ chối dẫn đến việc anh ta hay cáu gắt, ganh tị với mọi người và một loạt chấn thương tinh thần sau này. Qua nhân vật Poprishchin, Gogol đã đưa người đọc vào những cung bậc đau đớn nhất của con người.
                <br />
                📜 Gogol như người cuốc bộ trong thế giới văn chương của nhân loại, để tìm ra để khám phá thế giới nội tâm của con người trước sự chuyển biến khắc nghiệt của xã hội. Vạch trần bộ mặt “mua quan bán chức” của tầng lớp quan lại dựa trên việc đọc lá thư của hai chú chó Metji và Philip. Khéo léo và tinh tế, nụ cười châm biếm trong tác phẩm “Nhật ký người điên” trở nên càng cay đắng, nghiệt ngã.
                <br />
                --------------------
                <br />
                Tài liệu tham khảo
                <br />
                1. Nhật ký người điên (N.V.Gogol), dịch giả Phạm Thủy Ba (2/3/2020)
                <br />
                https://bom.to/77LNFp
                <br />
                2. Kỷ niệm 200 năm ngày sinh đại văn hào Nga N.V. Gogol, Cục Văn thư và Lưu trữ nhà nước (2/3/2020)
                <br />
                https://bom.to/G2eKos
                <br />
                3. Diary of a Madman Background (2/3/2020)
                <br />
                https://bom.to/GrES8N
                <br />
                Nội dung: Aнь Тхы
                <br />
                Hình ảnh: Тхи Хыонг
                <br />
                --------------------
                <br />
                Mọi thắc mắc, đóng góp cũng như các vấn đề khác, vui lòng gửi ngay đến hộp thư của “Tháng Mười” để được hỗ trợ tốt nhất.
                <br />
                Trân trọng!. ✍️
            </p>
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
        <div runat="server" id="articleContainer"></div>
    </main>
    <footer>
        <p>© Báo Tháng Mười</p>
    </footer>
    <script src="js/JavaScript.js"></script>
</body>
</html>
