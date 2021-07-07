<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Epam.Library.AspNetPL.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div id ="first">
            <asp:Label ID="Label28" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Библиотека"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label42" runat="server">ВОЙТИ В СИСТЕМУ</asp:Label>
            <br />
            <asp:Label ID="Label9" runat="server" Text="Логин (ID)"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="LoginIn" runat="server" Height="18px" style="margin-left: 48px" Width="184px"></asp:TextBox>
            <br />
            <asp:Label ID="Label11" runat="server" Text="Пароль"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="PasswordIn" runat="server" Height="18px" style="margin-left: 72px" Width="184px"></asp:TextBox>
            <br />
            <br />
            <asp:GridView ID="GridView2" runat="server">
            </asp:GridView>
            <asp:Label ID="Label13" runat="server" Text="Такого пользователя нет" Visible="False"></asp:Label>
            <br />
            <asp:Label ID="Label40" runat="server"></asp:Label>
            <br />
            <asp:Button ID="SignIn" runat="server" Text="Войти" Width="68px" OnClick="SignIn_Click" />
            <br />
            <asp:Label ID="Label39" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label44" runat="server" Text="ВПЕРВЫЕ НА НАШЕМ ПОРТАЛЕ? "></asp:Label>
            <br />
            <asp:Label ID="Label45" runat="server" Text="Для использования всех функций библиотеки вам необходимо пройти регистрацию"></asp:Label>
            <br />
            <asp:Label ID="Label38" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Логином является присвоенный вам id"></asp:Label>
            <br />
            <asp:Label ID="Label10" runat="server" Text="Пароль"></asp:Label>
            <asp:TextBox ID="Password" runat="server" Height="18px" style="margin-left: 85px" Width="184px"></asp:TextBox>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Тип пользователя"></asp:Label>
&nbsp;&nbsp;
            <asp:DropDownList ID="UserType" runat="server" Height="24px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" style="margin-left: 1px" Width="121px">
                <asp:ListItem Selected="True">читатель</asp:ListItem>
                <asp:ListItem>сотрудник</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Фамилия"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="Surname" runat="server" Height="18px" style="margin-left: 59px" Width="185px"></asp:TextBox>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Имя"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="Name" runat="server" Height="18px" style="margin-left: 94px; margin-top: 4px" Width="185px"></asp:TextBox>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Отчество"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="Patronymic" runat="server" Height="18px" style="margin-left: 58px" Width="185px"></asp:TextBox>
            <br />
            <asp:Label ID="Label8" runat="server" Text="Пол"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="Gender" runat="server" Height="24px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" style="margin-left: 91px" Width="134px">
                <asp:ListItem Selected="True">м</asp:ListItem>
                <asp:ListItem>ж</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Label ID="Label7" runat="server" Text="Дата рождения"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;<asp:Calendar ID="Calendar" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                <NextPrevStyle VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="#808080" />
                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                <SelectorStyle BackColor="#CCCCCC" />
                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                <WeekendDayStyle BackColor="#FFFFCC" />
            </asp:Calendar>
            <br />
            <asp:Label ID="Label37" runat="server"></asp:Label>
            <br />
            <asp:Button ID="SignUp" runat="server" OnClick="SignUp_Click" style="margin-left: 0px" Text="Зарегистрироваться" />
            <br />
            <asp:Label ID="Label36" runat="server"></asp:Label>
            <br />
            <asp:Label ID="Label12" runat="server" Text="Убедиться в успешности регистрации вы сможете ниже"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <asp:Label ID="Label35" runat="server"></asp:Label>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Перейти в библиотеку" Visible="False" />
            <br />
            </div>
        <!--style="margin:-450px 0 0 0"-->
        
            <div id="second" style="margin:-450px 0 0 0" >&nbsp;<asp:Label ID="Label27" runat="server" Text="Здравствуйте!" Visible="False"></asp:Label>
            <br />
            <br />
            <asp:Button ID="UserButton" runat="server" OnClick="UserButton_Click" Text="Получить свой профиль" Visible="False" />
&nbsp;&nbsp;
            <br />
            <br />
            <asp:GridView ID="UserProfile" runat="server" Visible="False">
            </asp:GridView>
            <br />
            <asp:Label ID="Label24" runat="server" Font-Size="Large" Text="Вы можете проводить следующие операции над книгами:" Visible="False"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label29" runat="server" Font-Bold="True" Text="1. Просмотр всех имеющихся книг в нашей библиотеке" Visible="False"></asp:Label>
&nbsp;<br />
            <br />
            <asp:Button ID="ReadingBooksBut" runat="server" Height="30px" OnClick="ReadingBooksBut_Click" style="margin-left: 141px" Text="Чтение" Width="72px" Visible="False" />
            <br />
            <br />
            <asp:GridView ID="AllBooks" runat="server" style="margin-left: 0px" Visible="False">
            </asp:GridView>
            <br />
            <asp:Label ID="Label25" runat="server" Font-Bold="True" Text="2. Поиск нужных вам книг по названию" Visible="False"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label26" runat="server" Text="Введите название" Visible="False"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="FindingBook" runat="server" style="margin-left: 17px" Width="185px" Visible="False"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="FindingBookBut" runat="server" Height="30px" OnClick="FindingBookBut_Click" style="margin-left: 141px; margin-top: 0px; margin-bottom: 6px" Text="Поиск" Width="72px" Visible="False" />
            <br />
            <asp:GridView ID="ChosenBooks" runat="server" Visible="False">
            </asp:GridView>
            <br />
            <br />
            <asp:Label ID="Label30" runat="server" Font-Bold="True" Text="3. Добавление новой книги в библиотеку" Visible="False"></asp:Label>
&nbsp;<br />
            <br />
            <asp:Label ID="Label31" runat="server" Text="Название" Visible="False"></asp:Label>
            <asp:TextBox ID="Title" runat="server" Height="18px" style="margin-left: 88px" Width="185px" Visible="False"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Label ID="Label32" runat="server" Text="Автор" Visible="False"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="Author" runat="server" Height="18px" style="margin-left: 98px" Width="185px" Visible="False"></asp:TextBox>
            <br />
            <asp:Label ID="Label33" runat="server" Text="Год Издания" Visible="False"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="EditionYear" runat="server" Height="18px" style="margin-left: 54px" Width="185px" Visible="False"></asp:TextBox>
            <br />
            <asp:Label ID="Label14" runat="server" Text="Издание" Visible="False"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="Edition" runat="server" Height="18px" style="margin-left: 83px; margin-top: 4px" Width="185px" Visible="False"></asp:TextBox>
            <br />
            <asp:Label ID="Label34" runat="server" Text="Место" Visible="False"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="Place" runat="server" Height="18px" style="margin-left: 97px" Width="185px" Visible="False"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="AddingBookBut" runat="server" Height="30px" style="margin-left: 141px; margin-bottom: 0px" Text="Добавить" Width="72px" OnClick="AddingBookBut_Click" Visible="False" />
&nbsp;&nbsp;
            <br />
            <br />
            <asp:Label ID="SuccessAdd" runat="server" Text="Добавление успешно произведено, вы можете проверить это в таблице ниже" Visible="False"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="NewBooks" runat="server" Visible="False">
            </asp:GridView>
            <br />
            <asp:Label ID="Label15" runat="server" Font-Bold="True" Text="4. Удалить книгу из библиотеки" Visible="False"></asp:Label>
&nbsp;<br />
            <br />
            <asp:Label ID="Label16" runat="server" Text="Введите id книги" Visible="False"></asp:Label>
            <asp:TextBox ID="BookID" runat="server" Height="18px" style="margin-left: 37px" Width="185px" Visible="False"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="DeletingBookBut" runat="server" Height="30px" style="margin-left: 141px" Text="Удалить" Width="72px" OnClick="DeletingBookBut_Click" Visible="False" />
            <br />
            <br />
            <asp:Label ID="DeletedText" runat="server" Text="Удаление указанной книги успешно произведено. Вы можете проверить удаленные данные ниже" Visible="False"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="Deleted" runat="server" Visible="False">
            </asp:GridView>
            <br />
            <asp:Label ID="Label17" runat="server" Font-Bold="True" Text="5. Изменение существующей книги  по id" Visible="False"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label43" runat="server" Text="Введите id книги, у которой хотите произвести изменения. Изменению подвергнутся только заполненные поля." Visible="False"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label23" runat="server" Text="Id изменяемой книги" Visible="False"></asp:Label>
            <asp:TextBox ID="UpdateId" runat="server" Height="18px" style="margin-left: 9px" Width="185px" Visible="False"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Label ID="Label18" runat="server" Text="Название" Visible="False"></asp:Label>
            <asp:TextBox ID="UpdateTitle" runat="server" Height="18px" style="margin-left: 88px" Width="185px" Visible="False"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Label ID="Label19" runat="server" Text="Автор" Visible="False"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="UpdateAuthor" runat="server" Height="18px" style="margin-left: 98px" Width="185px" Visible="False"></asp:TextBox>
            <br />
            <asp:Label ID="Label20" runat="server" Text="Год Издания" Visible="False"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="UpdateEditionYear" runat="server" Height="18px" style="margin-left: 54px" Width="185px" Visible="False"></asp:TextBox>
            <br />
            <asp:Label ID="Label21" runat="server" Text="Издание" Visible="False"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="UpdateEdition" runat="server" Height="18px" style="margin-left: 83px; margin-top: 4px" Width="185px" Visible="False"></asp:TextBox>
            <br />
            <asp:Label ID="Label22" runat="server" Text="Место" Visible="False"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="UpdatePlace" runat="server" Height="18px" style="margin-left: 97px" Width="185px" Visible="False"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="ChangeBookBut" runat="server" Height="30px" style="margin-left: 141px; margin-top: 0px; margin-bottom: 0px" Text="Изменить" OnClick="ChangeBookBut_Click" Visible="False" />
            <br />
            <br />
            <asp:Label ID="SuccessfulUpdate" runat="server" Text="Изменение успешно произведено, вы можете проверить внесенные данные ниже." Visible="False"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="ChangedBook" runat="server" Visible="False">
            </asp:GridView>
            <br />
            <asp:GridView ID="ChangedAll" runat="server" Visible="False">
            </asp:GridView>
                <br />


        </div Visible="False" style="margin:-450px 0 0 0">
        &nbsp;<asp:Label ID="Label59" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="X-Large" Text="Изменение вашего профиля"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label58" runat="server" Text="Ваши текущие данные:"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="Current" runat="server">
            </asp:GridView>
            <br />
            <asp:Label ID="Label57" runat="server" Text="Для изменения ваших данных, пожалуйста, заполните нужные вам поля внизу. Изменениям подвергнутся только заполненные поля."></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label50" runat="server" Text="Пароль"></asp:Label>
            <asp:TextBox ID="Password1" runat="server" Height="18px" style="margin-left: 84px" Width="184px"></asp:TextBox>
            <br />
            <asp:Label ID="Labe51" runat="server" Text="Тип пользователя"></asp:Label>
&nbsp;&nbsp;
            <asp:DropDownList ID="UserType1" runat="server" Height="26px" OnSelectedIndexChanged="UserType_SelectedIndexChanged" style="margin-left: 1px" Width="113px">
                <asp:ListItem Selected="True">читатель</asp:ListItem>
                <asp:ListItem>сотрудник</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Label ID="Labe52" runat="server" Text="Фамилия"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="Surname1" runat="server" Height="18px" style="margin-left: 59px" Width="185px"></asp:TextBox>
            <br />
            <asp:Label ID="Label53" runat="server" Text="Имя"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="Name1" runat="server" Height="18px" style="margin-left: 94px; margin-top: 4px" Width="185px"></asp:TextBox>
            <br />
            <asp:Label ID="Label54" runat="server" Text="Отчество"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="Patronymic1" runat="server" Height="18px" style="margin-left: 58px" Width="185px"></asp:TextBox>
            <br />
            <asp:Label ID="Label55" runat="server" Text="Пол"></asp:Label>
&nbsp;&nbsp;&nbsp;
            <asp:DropDownList ID="Gender1" runat="server" Height="26px" OnSelectedIndexChanged="Gender_SelectedIndexChanged" style="margin-left: 91px" Width="113px">
                <asp:ListItem Selected="True">м</asp:ListItem>
                <asp:ListItem>ж</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:Label ID="Label56" runat="server" Text="Дата рождения"></asp:Label>
&nbsp;&nbsp;<asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" OnSelectionChanged="Calendar1_SelectionChanged" SelectedDate="2021-07-07" Width="200px">
                <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                <NextPrevStyle VerticalAlign="Bottom" />
                <OtherMonthDayStyle ForeColor="Gray" />
                <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                <SelectorStyle BackColor="#CCCCCC" />
                <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                <WeekendDayStyle BackColor="#FFFFCC" />
            </asp:Calendar>
            <br />
            <asp:Button ID="Confirm" runat="server" OnClick="Confirm_Click" Text="Применить изменения" />
&nbsp;
            <br />
            <br />
            <asp:Label ID="Success1" runat="server" Text="Изменения успешно внесены! Вы можете проверить их в таблице ниже." Visible="False"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="Changed1" runat="server" Visible="False">
            </asp:GridView>
            <br />
        </div>
    </form>
</body>
</html>
