<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sport.aspx.cs" Inherits="home.Sport" %>

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
    <title>Văn học và Nghệ thuật</title>
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
        <h2>Bình luận</h2>
        <article id="article-0">
            <h3>Bài học từ Raskolnikov</h3>
            <img src="images/90075965_133247708236650_23976831023579136_n.jpg" />
            <p>
                [03150320][BÌNH LUẬN CÙNG THÁNG MƯỜI] BÀI HỌC TỪ RASKOLNIKOV
                <br />
                📜“Tội ác và trừng phạt (tiếng Nga: Преступление и наказание) là một tiểu thuyết của nhà văn Nga Fyodor Mikhailovich Dostoyevsky. Tiểu thuyết này cùng với Anh em nhà Karamazov là hai tác phẩm nổi tiếng nhất của Dostoevsky. Tạp chí Times đã bình chọn Tội ác và trừng phạt là một trong số những cuốn sách vĩ đại nhất mọi thời đại”
                <br />
                (Wikipedia)
                <br />
                📜Câu chuyện xoay quanh Raskolnikov – một anh chàng sinh viên bỏ học vì nghèo túng, cuộc sống cùng quẫn, bế tắc đã biến anh thành một kẻ sát nhân. Khi những sự bất công và uất ức trong con người này đã không thể nào dồn nén thêm được nữa, Raskolnikov đã giết chết mụ cầm đồ Alyona Ivanovna và em gái mụ, lấy đi khối tài sản khổng lồ để rồi sau đó người đọc theo chân anh trải qua hết thải những cung bật cảm xúc của một kẻ sát nhân, nửa điên nửa tỉnh nhưng cũng đầy ắp lương thiện và tình người.
                <br />
                📜 Raskolnikov với một tâm hồn đầy rẫy những bất ổn, sống một cuộc sống nghèo nàn, thiếu thốn nhưng anh lại mang giấc mơ trở thành một người phi thường. Giấc mơ là thứ mà con người ta luôn mong muốn đạt được, nhưng hiện thực lại không đáp ứng được những mong muốn mãnh liệt đó. Raskolnikov kẹt giữa những cái gọi là giấc mơ về một phiên bản hoàn hảo của mình và hiện thực thảm hại. Trước khi đi đến quyết định giết chết mụ cầm đồ, anh ta đã phải sống trong sự dằn vặt khủng khiếp của lương tâm. Là một thanh niên chịu nhiều ảnh hưởng của những quan niệm triết học mới phương Tây. Theo quan niệm này, nói một cách đơn giản là trên đời này có hai loại người: thiên tài và người bình thường. Thay vì cam chịu hiện thực cuộc sống, thiên tài có thể vượt lên trên những khuôn khổ của xã hội và chiến đấu để mang đến một tương lai tốt đẹp hơn. Raskolnikov muốn giết chết mụ cầm đồ - người mà anh cho là có tiếp tục sống cũng không mang lại hạnh phúc và lợi ích cho xã hội.
                <br />
                📜 Thật không may, cái cơ hội ngàn vàng để anh thực hiện giấc mơ của mình lại đến, khi biết mụ cầm đồ ở nhà một mình, anh đã đến giết cả mụ và em gái mụ. Đến đây mới thực sự là khỏi đầu cho bản án lương tâm mà chính Raskolnikov đã tự tuyên án cho mình. Anh sống như một kẻ điên giữa thành phố Saint Petersburg, anh cố trấn an tâm hồn rằng mình đúng, rằng mọi thứ vẫn ổn và rồi sẽ chìm vào quên lãng. Mặt khác, Raskolnikov mơ màng và vô thức quay lại hiện trường vụ án như thể bằng mọi nỗ lực để xóa hết những vết tích tội ác của mình, gồng mình trong những cuộc lẩn trốn nghẹt thở với cảnh sát, cư xử bất thường với tất cả mọi người và luôn trong tạng thái trốn chạy. Sau tất cả, có lẽ sự mệt mỏi và kiệt quệ trong tâm hồn mới chính là bản án nghiêm khắc nhất.
                <br />
                📜Song, chúng ta vẫn dễ dàng nhận thấy ở kẻ sát nhân lý thuyết kia một tâm hồn nhận hậu và đầy ắp tình người. Cướp tiền từ mụ cầm đồ, anh mang tất cả giấu đi nhưng không tiêu lấy một đồng, anh sẵn sàng chắt mót những đồng tiền cuối cùng để cưu mang người bạn học ho lao của mình cả một học kỳ. Rồi cả việc lo ma chay cho bác công nhân nghèo Marmeladov. Trái tim nhận hậu còn giúp anh nhìn ra được phẩm giá của Sonia - một cô gái phải bán mình để nuôi gia đình. Anh ngưỡng mộ chân thành trước sự hi sinh của cô. Anh khóc thương không ngừng trước hình ảnh 1 chú ngựa già yếu bị hành hạ đến chết bởi lũ người man rợ và ác ôn.
                <br />
                📜Phải chăng, vì chính hoàn cảnh khốn cùng đã đẩy con người ta đến bờ vực của tội ác, phải chăng phần xấu xa nào đó trong tâm hồn của một con người đã bị chính những bất công và oan trái của xã hội khơi dậy, để rồi trong những lúc yếu đuối nhất của tâm hồn, con người tìm đến tội ác như thể cố gắng nắm lấy tia hi vọng cho cuộc đời mình. Nhưng không, một con người lương thiện sẽ không thể nào tha thứ cho chính bản thân mình một khi đã gây nên tội ác. Raskolnikov chính là con ngời lương thiện đó, anh ta dằn vặt và dày vò tâm hồn mình đến kiệt sức, trước khi giết chị em mụ cầm đồ và bị xử tội, anh ta đã phải chịu hình phạt từ chính lương tâm của mình.
                <br />
                📜Trong hiện thực xã hội khốc liệt của “Tội ác và trừng phạt”, những bất công và oan trái đang đè nặng lên vai những con người cùng khổ như Raskolnikov, đó chính là cái vòng lẩn quẩn đến ám ảnh, những lớp người nghèo túng bị cám dỗ bởi mộng tưởng, những giấc mơ đổi đời, rồi chuốc lấy tội ác, rồi dằn vặt lương tâm và ngày càng lún sâu vào đau khổ đến cùng cực. Thế nhưng, chính cái vòng lẩn quẩn đó mà ta thấy được tình người và sự lương thiện, những bản chất tốt đẹp của một con người không vì hoàn cảnh mà bị vùi lấp. Chúng vẫn luôn hiện hữu, sáng ngời và đáng trân quý.
                <br />
                📜Raskolnikov là một nhân vật mà theo tôi, anh ta là một kẻ sát nhân lương thiện, cả cuộc đời anh ta quanh quẩn trong đói nghèo, cơ cực. Thế nhưng, anh ta lại là một con người rất mực lương thiện và dạt dào tình yêu thương. Cuối cùng, dù phải đi đày 8 năm ở Siberia nhưng có lẽ cuộc sống vẫn không lấy đi của anh tất cả, sự lương thiện của anh đã mang đến cho anh một người phụ nữ mà có thể bỏ hết tất cả để theo anh.
                <br />
                Theo nhận định của Wikipedia,
                <br />
                “Tội ác và trừng phạt là cuốn tiểu thuyết hoàn chỉnh và hay nhất của toàn bộ hệ thống tác phẩm Dostoevsky, là một trong những tác phẩm có nội dung bi thảm nhất của nền văn học nhân loại. Với tấm lòng nhân đạo vô bờ bến, tác giả đã dựng lên một bức tranh ảm đạm về số phận bế tắc của lớp người dưới đáy xã hội Nga, nhất là tầng lớp trẻ trong trắng, nhiều khát vọng. Tác phẩm còn là lời tố cáo mãnh liệt tầng lớp tư sản hãnh tiến, giẫm đạp lên đạo đức, nhân phẩm, tài năng.
                <br />
                Nội dung sâu sắc như trên được chuyển tải bằng nghệ thuật phân tích tâm lý sâu sắc, tinh tế đến mức kì diệu đào đến tận đáy sâu tâm hồn nhân vật, tới cả đường gân thớ thịt dưới làn da con người; bằng sự đan xen giữa tuyến cốt truyện trung tâm "tội ác và trừng phạt" với một số tuyến độc lập khác, như tuyến cốt truyện gia đình Marmêlađôp, tuyến cốt truyện Đunhia... Chính trong quan hệ đối chiếu đó mà chiều sâu xã hội cùng những tâm tư phức tạp của con người có điều kiện được bộc lộ một cách chân thật.”
                <br />
                📜Bên cạnh những nhận định trên, “Tội ác và trừng phạt” còn cho chúng ta thấy được một cái nhìn bao dung hơn trước tội ác, đó không phải là sự bao biện mù quáng hay lời bênh vực cho những tội ác mà con người đã gây ra, đó chính là một cách nhìn khác trước những sai lầm. Trong xã hội ngày nay, những người như Raskolnikov hiển nhiên sẽ phải nhận lấy những phản ứng gay gắt và sự bày xích của cộng đồng thông qua mọi mặt của đời sống và đặc biệt là truyền thông. Thế nhưng không phải tội ác nào cũng bắt nguồn từ một kẻ xấu và không phải ai cũng đúng đắn trong những quyết định của mình. Những con người lầm lạc như Raskolnikov giúp chúng ta nhìn nhận và kiểm điểm một cách nghiêm túc hơn đối với những sai lầm của bản thân, tìm thấy một cái nhìn khách quan hơn cho những lầm lỡ của chính mình và của những người khác.
                <br />
                --------------------
                <br />
                Tài liệu tham khảo:
                <br />
                1. Tội ác và hình phạt, Wikipedia (15/3/2020)
                <br />
                https://sum.vn/Y792D
                <br />
                2. Nguyễn Ngọc Bảo Trâm, Vấn đề tội ác và trừng phạt qua 'Macbeth' và 'Tội ác và trừng phạt', Khoa Văn Học (15/3/2020)
                <br />
                https://sum.vn/u9oIA
                <br />
                3. Review Sách “Tội Ác Và Trừng Phạt”: Đối Diện Với Tội Lỗi, Bookademy (15/3/2020)
                <br />
                https://sum.vn/1KAf2
                <br />
                Nội dung và Hình ảnh: Тхи Хыонг
                <br />
                --------------------
                <br />
                Mọi thắc mắc, đóng góp cũng như các vấn đề khác, vui lòng gửi ngay đến hộp thư của “Tháng Mười” để được hỗ trợ tốt nhất.
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
