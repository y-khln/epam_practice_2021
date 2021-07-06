<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Epam.Library.AspNetPL.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="Библиотека"></asp:Label>
            <br />
            <br />
            <asp:Button ID="UserButton" runat="server" OnClick="UserButton_Click" Text="Получить свой профиль" />
&nbsp;&nbsp;
            <asp:Button ID="ChangeProfileButton" runat="server" Text="Изменить профиль" />
            <br />
            <br />
            <asp:GridView ID="UserProfile" runat="server" Visible="False">
            </asp:GridView>
            <br />
            <asp:Label ID="Label24" runat="server" Font-Size="Large" Text="Вы можете проводить следующие операции над книгами:"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Font-Bold="True" Text="1. Просмотр всех имеющихся книг в нашей библиотеке"></asp:Label>
&nbsp;<br />
            <br />
            <asp:Button ID="ReadingBooksBut" runat="server" Height="30px" OnClick="ReadingBooksBut_Click" style="margin-left: 141px" Text="Чтение" Width="72px" />
            <br />
            <br />
            <asp:GridView ID="AllBooks" runat="server" style="margin-left: 0px" Visible="False">
            </asp:GridView>
            <br />
            <asp:Label ID="Label25" runat="server" Font-Bold="True" Text="2. Поиск нужных вам книг по названию"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label26" runat="server" Text="Введите название"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="FindingBook" runat="server" style="margin-left: 17px" Width="185px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="FindingBookBut" runat="server" Height="30px" OnClick="FindingBookBut_Click" style="margin-left: 141px; margin-top: 0px; margin-bottom: 6px" Text="Поиск" Width="72px" />
            <br />
            <asp:GridView ID="ChosenBooks" runat="server" Visible="False">
            </asp:GridView>
            <br />
            <br />
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Text="3. Добавление новой книги в библиотеку"></asp:Label>
&nbsp;<br />
            <br />
            <asp:Label ID="Label10" runat="server" Text="Название"></asp:Label>
            <asp:TextBox ID="Title" runat="server" Height="18px" style="margin-left: 88px" Width="185px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Label ID="Label12" runat="server" Text="Автор"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="Author" runat="server" Height="18px" style="margin-left: 98px" Width="185px"></asp:TextBox>
            <br />
            <asp:Label ID="Label13" runat="server" Text="Год Издания"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="EditionYear" runat="server" Height="18px" style="margin-left: 54px" Width="185px"></asp:TextBox>
            <br />
            <asp:Label ID="Label14" runat="server" Text="Издание"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="Edition" runat="server" Height="18px" style="margin-left: 83px; margin-top: 4px" Width="185px"></asp:TextBox>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Место"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="Place" runat="server" Height="18px" style="margin-left: 97px" Width="185px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="AddingBookBut" runat="server" Height="30px" style="margin-left: 141px; margin-bottom: 0px" Text="Добавить" Width="72px" OnClick="AddingBookBut_Click" />
&nbsp;&nbsp;
            <br />
            <br />
            <asp:Label ID="SuccessAdd" runat="server" Text="Добавление успешно произведено, вы можете проверить это в таблице ниже" Visible="False"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="NewBooks" runat="server" Visible="False">
            </asp:GridView>
            <br />
            <asp:Label ID="Label15" runat="server" Font-Bold="True" Text="4. Удалить книгу из библиотеки"></asp:Label>
&nbsp;<br />
            <br />
            <asp:Label ID="Label16" runat="server" Text="Введите id книги"></asp:Label>
            <asp:TextBox ID="BookID" runat="server" Height="18px" style="margin-left: 37px" Width="185px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="DeletingBookBut" runat="server" Height="30px" style="margin-left: 141px" Text="Удалить" Width="72px" OnClick="DeletingBookBut_Click" />
            <br />
            <br />
            <asp:Label ID="DeletedText" runat="server" Text="Удаление указанной книги успешно произведено. Вы можете проверить удаленные данные ниже" Visible="False"></asp:Label>
            <br />
            <br />
            <asp:GridView ID="Deleted" runat="server" Visible="False">
            </asp:GridView>
            <br />
            <asp:Label ID="Label17" runat="server" Font-Bold="True" Text="5. Изменение существующей книги  по id"></asp:Label>
            <br />
            <br />
            Введите id книги, у которой хотите произвести изменения. Изменению подвергнутся только заполненные поля.<br />
            <br />
            <asp:Label ID="Label23" runat="server" Text="Id изменяемой книги"></asp:Label>
            <asp:TextBox ID="UpdateId" runat="server" Height="18px" style="margin-left: 9px" Width="185px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <br />
            <asp:Label ID="Label18" runat="server" Text="Название"></asp:Label>
            <asp:TextBox ID="UpdateTitle" runat="server" Height="18px" style="margin-left: 88px" Width="185px"></asp:TextBox>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
            <asp:Label ID="Label19" runat="server" Text="Автор"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="UpdateAuthor" runat="server" Height="18px" style="margin-left: 98px" Width="185px"></asp:TextBox>
            <br />
            <asp:Label ID="Label20" runat="server" Text="Год Издания"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="UpdateEditionYear" runat="server" Height="18px" style="margin-left: 54px" Width="185px"></asp:TextBox>
            <br />
            <asp:Label ID="Label21" runat="server" Text="Издание"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="UpdateEdition" runat="server" Height="18px" style="margin-left: 83px; margin-top: 4px" Width="185px"></asp:TextBox>
            <br />
            <asp:Label ID="Label22" runat="server" Text="Место"></asp:Label>
&nbsp;&nbsp;
            <asp:TextBox ID="UpdatePlace" runat="server" Height="18px" style="margin-left: 97px" Width="185px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="ChangeBookBut" runat="server" Height="30px" style="margin-left: 141px; margin-top: 0px; margin-bottom: 0px" Text="Изменить" OnClick="ChangeBookBut_Click" />
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
        </div>
    </form>
</body>
</html>
