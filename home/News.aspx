<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="home.News" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script defer
        src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
        integrity="sha384-rOA1PnstxnOBLzCLMcre8ybwbTmemjzdNlILg8O7z1lUkLXozs4DHonlDtnE7fpc"
        crossorigin="anonymous"></script>
    <link href="css/styles.css" rel="stylesheet" />
    <title>Lời của sách</title>
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
        <h2>Lời của sách</h2>
        <article id="article-0">
            <h3>Dịch thuật - Vladimir và hành trình đi tìm đức tin</h3>
            <img src="images/86278083_119326919628729_2649668502901751808_n.jpg" />
            <p>
                🌻[01130220][LỜI CỦA SÁCH – DỊCH THUẬT] VLADIMIR VÀ HÀNH TRÌNH ĐI TÌM ĐỨC TIN🌻
                <br />
                📜The Primary Chronicle - sử ký Nga , hay còn gọi là biên niên sử chính, là một đoạn sử ký của Kievan Rus ' (1) (Đông Slav cổ) từ khoảng 850 đến 1110, công trình này được xem như là cơ sở để giải thích lịch sử của Đông Slav. Câu chuyện mà chúng tôi sắp gửi đến các bạn nằm trong phần đầu của biên niên sử, giải thích lí do vì sao Vladimir không chấp nhận Islam giáo của người Bulgars, Công giáo La Mã của người Đức và Do Thái giáo của người Khazar.
                <br />
                --------------------
                <br />
                Vladimir được những người Bulgar của đức tin Mahomet viếng thăm, họ đã nói rằng , "Mặc dù Ngài là một quốc vương khôn ngoan và cẩn trọng, nhưng Ngài lại không có lòng tín ngưỡng. Hãy chấp nhận đức tin của chúng tôi và tôn kính Mahomet."
                <br />
                Vladimir đã hỏi lại bản chất của tôn giáo họ là gì. Họ trả lời rằng họ tin vào Chúa, và Mahomet đã hướng dẫn họ thực hành cắt bao quy đầu, không ăn thịt lợn, không uống rượu và sau khi chết, ông hứa sẽ hoàn thành những ham muốn xác thịt của họ. Họ còn khẳng định "Mahomet sẽ trao cho mỗi người đàn ông bảy mươi ngừơi phụ nữ đẹp. Anh ta có thể chọn lấy người đẹp nhất, Mahomet sẽ ban cho người phụ nữ đó tất cả sự quyến rũ, cô ấy sẽ trở thành vợ của anh ta. Mahomet hứa rằng người ta khi đó sẽ được thoả mãn mọi dục vọng. Nếu ai nghèo khổ trên thế gian này [về chuyện nhục dục ấy] thì sẽ không còn khác biệt thế nữa ở kiếp sau”. Họ còn nói những chuyện dối trá nữa mà do e ngại mà không được viết ra đây
                <br />
                Vladimir vui vẻ lắng nghe họ vì nó liên quan đến phụ nữ và sự khoái lạc, những điều mà Ngài thích. Nhưng cắt bao quy đầu với kiêng thịt lợn và rượu thì Ngài không đồng ý. "Uống rượu", ông nói, "là niềm vui của người Nga. Chúng tôi không thể sống mà không có nó."
                <br />
                Sau đó, người Đức đến, họ khẳng định họ đến với tư cách là sứ giả của Giáo hoàng. Họ nói thêm: "Đức Giáo hoàng nói: 'Đất nước của Ngài giống như đất nước của chúng tôi, nhưng đức tin của Ngài không giống như của chúng tôi. Vì đức tin của chúng tôi là ánh sáng. Chúng tôi tôn thờ Thiên Chúa, người đã tạo ra trời và đất, các ngôi sao, mặt trăng và mọi sinh vật, trong khi các vị thần của Ngài chỉ là gỗ."
                <br />
                Vladimir hỏi họ dạy bảo điều gì. Họ trả lời: "Ăn chay dựa trên sức mạnh của một người. Nhưng bất cứ ai ăn hay uống đều là vinh quang của Chúa, như thánh Paul của chúng tôi đã nói." Sau đó, Vladimir trả lời: "Từ khi khai sinh đất nước, ông cha chúng tôi không chấp nhận nguyên tắc nào như vậy.''.
                <br />
                Người Khazar theo Do Thái đã hay tin về những chuyến viếng thăm này, nên họ liền đích thân tới:" Chúng tôi đã học được rằng Bulgars và Kito giáo đã đến để truyền đạo cho Ngài về đức tin của họ. Đạo Kitô tin vào người mà chúng ta đóng đinh, nhưng chúng tôi tin vào Thiên Chúa của Abraham, Issac và Jacob.''
                <br />
                Sau đó, Vladimir hỏi tôn giáo của họ là gì. Họ trả lời rằng các giáo lý của nó bao gồm cắt bao quy đầu, không ăn thịt lợn hoặc thỏ rừng và cử hành ngày Sabbath. Sau đó quốc vương hỏi quê hương của họ ở đâu, và họ trả lời rằng đó là ở Jerusalem. Khi Vladimir hỏi nơi đó, họ đã trả lời: "Chúa đã giận dữ với tổ tiên của chúng tôi và phân tán chúng tôi giữa những người không phải người Do Thái vì tội lỗi của chúng tôi. Đất đai của chúng tôi sau đó được trao cho Kitô giáo." Quốc vương tiếp tục hỏi: "Các vị có thể hy vọng dạy được cho người khác trong khi chính các vị lại bị đuổi ra và phân tán ra ngoài bởi bàn tay của Chúa không? Nếu Chúa yêu các vị và đức tin của các vị, thì các vị sẽ không bị phân tán ở những vùng đất xa lạ.
                <br />
                Các vị có mong chúng tôi cũng chấp nhận số phận đó không? "
                <br />
                ---------------------
                <br />
                (1) Kievan Rus '(Đông Slav cổ: ѹьь) Liên đoàn của các dân tộc Đông Slav và Finnic ở châu Âu từ cuối thế kỷ 9 đến giữa thế kỷ 13.
                <br />
                (2) Kiev hoặc Kyiv [a] (tiếng Ukraina: Київ, romanized: Kyiv; tiếng Nga: tiếng Nga, tiếng La Mã: Kiyev) là thủ đô và thành phố đông dân nhất của Ukraine. Nó nằm ở phía bắc miền trung Ukraine dọc theo sông Dnieper.
                <br />
                (3) Sabbath - ngày nghỉ nổi bật và quan trọng nhất trong tất cả các ngày nghỉ của Do Thái giáo. Trong ngày Sabbath, giao thông công cộng tạm ngừng hoạt động, các hoạt động buôn bán đóng cửa, không TV, không sử dụng các thiết bị điện sinh hoạt trong gia đình. Đây là ngày "thiền định" của người Do Thái giáo nhằm tập trung giữ cho tâm mình được nghỉ ngơi tĩnh lặng trong sự hiện diện của Thượng Đế. Vào tối thứ sáu, ngày Sabbath được mở đầu với nghi thức Kiddush, làm phép trên rượu vang hoặc bánh mỳ, sau đó đốt đèn và làm phép đèn cầy Sabbath, do phụ nữ trong nhà thực hiện. Theo truyền thống, thức ăn ngon nhất trong tuần được dọn ra vào bữa ăn tối thứ sáu. Sang sáng thứ bảy người Do Thái giáo Chính thống và Bảo thủ dự lễ ở Hội đường để nghe giảng một phần trong Kinh Torah. Cứ mỗi tuần một đoạn thì khoảng một năm là đọc hết cuốn Torah. Vào ngày đọc đoạn cuối cùng của Kinh Torah và chuẩn bị trở lại chương Sáng-thế để bắt đầu cho một vòng mới, người Do Thái giáo ăn mừng Simchar Torah, có nghĩa là “lễ mừng về luật pháp”. Vào ngày đó, họ rước những cuốn Kinh Torah và diễu hành quanh Hội trường, hát lời cảm tạ Thiên Chúa. Theo truyền thống, tín hữu Do Thái giáo cầu nguyện ba lần mỗi ngày và bốn lần trong ngày Sabbath hoặc các ngày lễ khác của Do Thái giáo. Trọng tâm của mỗi buổi cầu nguyện là “Amidah” hay còn gọi là “Shemoneh Esrei”, đây là lời nguyện chính bao gồm 19 lời chúc lành.
                <br />
                (3) Thánh Phaolo hoặc sứ đồ Phaolo, ngày sinh chưa rõ, mất vào khoảng 64-65 SCN tại Roma. Ngài được xem là “Sứ đồ của dân ngoại” (dân ngoại bao gồm những người không phải người Do Thái). Ngài được tôn kính là một trong những cột trụ của Hội Thánh Kitô giáo tiên khởi, và là một nhân tố quan trọng đóng góp cho sự phát triển Kitô giáo thời kỳ sơ khai. Theo ký thuật của Tân Ước, Phaolo là người Do Thái chịu ảnh hưởng văn minh Hy Lạp, và là công dân của Đế quốc La Mã, đến từ thành Tarsus (nay thuộc Thổ Nhĩ Kỳ). Phaolo là người săn đuổi những Kito hữu ban đầu để đàn áp họ, việc này cứ diễn ra cho đến khi Phaolo gặp Chúa Giesu trong một khải tượng trên đường đến thành Damascus. Từ đó, Phaolo đến với đức tin Kito giáo, trở thành một sứ đồ của Chúa Giêsu và hoạt động tích cực cho việc loan truyền Kitô giáo. Sự kiện này được các nhà nghiên cứu ước đoán xảy ra vào khoảng năm 33-36 SCN.
                <br />
                --------------------
                <br />
                Nguồn văn bản gốc:
                <br />
                http://www.mgh-bibliothek.de/dokumente/a/a011458.pdf
                <br />
                --------------------
                <br />
                Tài liệu tham khảo:
                <br />
                1. Đặng Hoàng Xa (Xa Dang), "Câu chuyện Do Thái - lịch sử thăng trầm của một dân tộc" (2015).
                <br />
                2. Sứ đồ Phaolô, Wikipedia.
                <br />
                https://vi.wikipedia.org/.../S%E1%BB%A9_%C4%91%E1%BB%93... (9/2/2020)
                <br />
                3. Primary Chronicle, Wikipedia.
                <br />
                https://en.wikipedia.org/wiki/Primary_Chronicle (8/2/2020)
                <br />
                Dịch: Тхи Хыонг
                <br />
                Hình ảnh: Тхи Хыонг
                <br />
                Nguồn ảnh:
                <br />
                https://en.wikipedia.org/wiki/Primary_Chronicle
                <br />
                --------------------
                <br />
                📜Mọi thắc mắc, đóng góp cũng như các vấn đề khác, vui lòng gửi ngay đến hộp thư của “Tháng Mười” để được hỗ trợ tốt nhất.
                <br />
                Trân trọng!
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
