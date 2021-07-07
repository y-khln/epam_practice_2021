using System;
using Epam.Library.BLL;
using Epam.Library.Entities;

namespace Epam.Library.AspNetPL
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {            
        }
        protected void SignIn_Click(object sender, EventArgs e)
        {
            LibraryLogic bll = new LibraryLogic();
            int id = Convert.ToInt32(LoginIn.Text);
            if (bll.Auth(id, PasswordIn.Text) == true)
            {
                //Скрытие первой части формы (вход+регистрация)
                Label42.Visible = false;
                Label9.Visible = false;
                Label11.Visible = false;
                LoginIn.Visible = false;
                PasswordIn.Visible = false;
                GridView2.Visible = false;
                Label13.Visible = false;
                Label38.Visible = false;
                Label39.Visible = false;
                Label40.Visible = false;
                Label44.Visible = false;
                Label45.Visible = false;
                Label1.Visible = false;
                Label3.Visible = false;
                Label4.Visible = false;
                Label5.Visible = false;
                Label6.Visible = false;
                Label8.Visible = false;
                Label10.Visible = false;
                Label36.Visible = false;
                Label37.Visible = false;
                Label7.Visible = false;
                Password.Visible = false;
                UserType.Visible = false;
                Surname.Visible = false;
                Name.Visible = false;
                Patronymic.Visible = false;
                Gender.Visible = false;
                Calendar.Visible = false;
                Label12.Visible = false;
                Label35.Visible = false;
                GridView1.Visible = false;
                Button1.Visible = false;
                SignUp.Visible = false;
                SignIn.Visible = false;
                //Открытие второй части
                Label27.Visible = true;
                UserButton.Visible = true;
                UserProfile.Visible = true;
                Label24.Visible = true;
                Label29.Visible = true;
                ReadingBooksBut.Visible = true;
                Label25.Visible = true;
                Label26.Visible = true;
                FindingBook.Visible = true;
                FindingBookBut.Visible = true;
                Label30.Visible = true;
                Label31.Visible = true;
                Label32.Visible = true;
                Label33.Visible = true;
                Label34.Visible = true;
                Label14.Visible = true;
                Title.Visible = true;
                Author.Visible = true;
                Edition.Visible = true;
                EditionYear.Visible = true;
                Place.Visible = true;
                AddingBookBut.Visible = true;
                Label15.Visible = true;
                Label16.Visible = true;
                BookID.Visible = true;
                DeletingBookBut.Visible = true;
                Label17.Visible = true;
                Label43.Visible = true;
                Label23.Visible = true;
                Label18.Visible = true;
                Label19.Visible = true;
                Label20.Visible = true;
                Label21.Visible = true;
                Label22.Visible = true;
                UpdateId.Visible = true;
                UpdateTitle.Visible = true;
                UpdateAuthor.Visible = true;
                UpdateEdition.Visible = true;
                UpdateEditionYear.Visible = true;
                UpdatePlace.Visible = true;
                ChangeBookBut.Visible = true;

                Current.DataSource = bll.GetUserFull(id);
                Current.DataBind();
            }
            else
            {
                Label13.Text = "Пользователь с указанными данными не найден";
                Label13.Visible = true;
            } 
        }
        protected void SignUp_Click(object sender, EventArgs e)
        {
                UserEntity user = new UserEntity();
                user.Password = Password.Text;
                user.UserType = UserType.Text;
                user.Surname = Surname.Text;
                user.Name = Name.Text;
                user.Patronymic = Patronymic.Text;
                user.Gender = Gender.Text;
                user.DateOfBirth = Calendar.SelectedDate.ToShortDateString();

                LibraryLogic bll = new LibraryLogic();
                bll.AddUser(user);
                int id = bll.Count()+1;

                LoginIn.Text = Convert.ToString(id);

                GridView1.DataSource = bll.GetUsers();
                GridView1.DataBind();
                Button1.Visible = true;
                Current.DataSource = bll.GetUserFull(id);
                Current.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Скрытие первой части формы (вход+регистрация)
            Label42.Visible = false;
            Label9.Visible = false;
            Label11.Visible = false;
            LoginIn.Visible = false;
            PasswordIn.Visible = false;
            GridView2.Visible = false;
            Label13.Visible = false;
            Label38.Visible = false;
            Label39.Visible = false;
            Label40.Visible = false;
            Label44.Visible = false;
            Label45.Visible = false;
            Label1.Visible = false;
            Label3.Visible = false;
            Label4.Visible = false;
            Label5.Visible = false;
            Label6.Visible = false;
            Label8.Visible = false;
            Label10.Visible = false;
            Label36.Visible = false;
            Label37.Visible = false;
            Label7.Visible = false;
            Password.Visible = false;
            UserType.Visible = false;
            Surname.Visible = false;
            Name.Visible = false;
            Patronymic.Visible = false;
            Gender.Visible = false;
            Calendar.Visible = false;
            Label12.Visible = false;
            Label35.Visible = false;
            GridView1.Visible = false;
            Button1.Visible = false;
            SignUp.Visible = false;
            SignIn.Visible = false;
            //Открытие второй части
            Label27.Visible = true;
            UserButton.Visible = true;
            UserProfile.Visible = true;
            Label24.Visible = true;
            Label29.Visible = true;
            ReadingBooksBut.Visible = true;
            Label25.Visible = true;
            Label26.Visible = true;
            FindingBook.Visible = true;
            FindingBookBut.Visible = true;
            Label30.Visible = true;
            Label31.Visible = true;
            Label32.Visible = true;
            Label33.Visible = true;
            Label34.Visible = true;
            Label14.Visible = true;
            Title.Visible = true;
            Author.Visible = true;
            Edition.Visible = true;
            EditionYear.Visible = true;
            Place.Visible = true;
            AddingBookBut.Visible = true;
            Label15.Visible = true;
            Label16.Visible = true;
            BookID.Visible = true;
            DeletingBookBut.Visible = true;
            Label17.Visible = true;
            Label43.Visible = true;
            Label23.Visible = true;
            Label18.Visible = true;
            Label19.Visible = true;
            Label20.Visible = true;
            Label21.Visible = true;
            Label22.Visible = true;
            UpdateId.Visible = true;
            UpdateTitle.Visible = true;
            UpdateAuthor.Visible = true;
            UpdateEdition.Visible = true;
            UpdateEditionYear.Visible = true;
            UpdatePlace.Visible = true;
            ChangeBookBut.Visible = true;
        }

        protected void UserButton_Click(object sender, EventArgs e)
        {
            LibraryLogic bll = new LibraryLogic();
            int id = Convert.ToInt32(LoginIn.Text);
            UserProfile.DataSource = bll.GetUser(id);
            UserProfile.DataBind();
            UserProfile.Visible = true;
        }

        protected void ReadingBooksBut_Click(object sender, EventArgs e)
        {
            LibraryLogic bll = new LibraryLogic();
            AllBooks.DataSource = bll.GetBooks();
            AllBooks.DataBind();
            AllBooks.Visible = true;
        }

        protected void AddingBookBut_Click(object sender, EventArgs e)
        {
            BookEntity book = new BookEntity();
            book.Title = Title.Text;
            book.Author = Author.Text;
            book.Edition = Edition.Text;
            book.EditionYear = EditionYear.Text;
            book.Place = Place.Text;

            LibraryLogic bll = new LibraryLogic();
            bll.AddBook(book);

            NewBooks.DataSource = bll.GetBooks();
            NewBooks.DataBind();
            SuccessAdd.Visible = true;
            NewBooks.Visible = true;
        }

        protected void ChangeBookBut_Click(object sender, EventArgs e)
        {
            LibraryLogic bll = new LibraryLogic();
            int id = Convert.ToInt32(UpdateId.Text);
            bll.EditBook(id, UpdateTitle.Text, UpdateAuthor.Text, UpdateEdition.Text, UpdateEditionYear.Text, UpdatePlace.Text);

            ChangedBook.DataSource = bll.GetBookID(id);
            ChangedBook.DataBind();
            ChangedAll.DataSource = bll.GetBooks();
            ChangedAll.DataBind();
            SuccessfulUpdate.Visible = true;
            ChangedBook.Visible = true;
            ChangedAll.Visible = true;
        }

        protected void DeletingBookBut_Click(object sender, EventArgs e)
        {
            LibraryLogic bll = new LibraryLogic();
            int delid = Convert.ToInt32(BookID.Text);
            Deleted.DataSource = bll.GetBookID(delid);
            Deleted.DataBind();
            bll.RemoveBook(delid);

            DeletedText.Visible = true;
            Deleted.Visible = true;
        }

        protected void FindingBookBut_Click(object sender, EventArgs e)
        {
            LibraryLogic bll = new LibraryLogic();
            ChosenBooks.DataSource = bll.GetBookTitle(FindingBook.Text);
            ChosenBooks.DataBind();
            ChosenBooks.Visible = true;
        }

        protected void Confirm_Click(object sender, EventArgs e)
        {
            LibraryLogic bll = new LibraryLogic();
            int id = Convert.ToInt32(LoginIn.Text);
            bll.EditUser(id, Password1.Text, UserType1.Text, Surname1.Text, Name1.Text, Patronymic1.Text, Calendar1.SelectedDate.ToShortDateString());

            Changed1.DataSource = bll.GetUserFull(id);
            Changed1.DataBind();
            Success1.Visible = true;
            Changed1.Visible = true;
        }

        protected void UserType_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Gender_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

    }
}

