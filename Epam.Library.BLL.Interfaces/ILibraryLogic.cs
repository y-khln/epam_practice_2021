using System;
using Epam.Library.Entities;

namespace Epam.Library.BLL.Interfaces
{
    public interface ILibraryLogic
    {
        bool Auth(int id, string password);

        bool AddUser(UserEntity user);
        object GetUser(int id);
        object GetUserFull(int id);
        object GetUsers();
        void EditUser(int id, string password, string type, string surname, string name, string patronymic, string birth);

        bool AddBook(BookEntity book);
        object GetBooks();
        object GetBookID(int id);
        object GetBookTitle(string title);
        void RemoveBook(int id);
        void EditBook(int id, string title, string author, string edition, string editionYear, string place);
    }
}

