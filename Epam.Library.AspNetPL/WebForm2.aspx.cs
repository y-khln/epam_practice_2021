using Epam.Library.BLL;
using Epam.Library.Entities;
using System;

namespace Epam.Library.AspNetPL
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void UserButton_Click(object sender, EventArgs e)
        {

            LibraryLogic bll = new LibraryLogic();
            UserProfile.DataSource = bll.GetUser(6);
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
            book.Author= Author.Text;
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
    }
}