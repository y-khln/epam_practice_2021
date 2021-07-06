<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Epam.Library.AspNetPL.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            ВОЙТИ В СИСТЕМУ<br />
            <asp:Label ID="Label9" runat="server" Text="Логин (ID)"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="LoginIn" runat="server" Height="18px" style="margin-left: 48px" Width="184px"></asp:TextBox>
            <br />
            <asp:Label ID="Label11" runat="server" Text="Пароль"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="PasswordIn" runat="server" Height="18px" style="margin-left: 72px" Width="184px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="SignIn" runat="server" Text="Войти" Width="68px" OnClick="SignIn_Click" />
            <br />
            <br />
            ВПЕРВЫЕ НА НАШЕМ ПОРТАЛЕ? <br />
            Для использования всех функций библиотеки вам необходимо пройти регистрацию<br />
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
            &nbsp;<asp:TextBox ID="Calendar" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="SignUp" runat="server" OnClick="SignUp_Click" style="margin-left: 0px" Text="Зарегистрироваться" />
            <br />
            <br />
            <asp:Label ID="Label12" runat="server" Text="Убедиться в успешности регистрации вы сможете ниже"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Перейти в библиотеку" Visible="False" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
