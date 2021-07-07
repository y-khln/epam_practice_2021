<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm3.aspx.cs" Inherits="Epam.Library.AspNetPL.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label59" runat="server" Font-Bold="True" Font-Overline="False" Font-Size="X-Large" Text="Изменение вашего профиля"></asp:Label>
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
            <asp:Button ID="Back" runat="server" OnClick="Back_Click" Text="Назад в библиотеку" Width="190px" />
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
